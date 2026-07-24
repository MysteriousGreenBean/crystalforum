<?php
/**
 * MyBB 1.8
 * Copyright 2014 MyBB Group, All Rights Reserved
 *
 * Website: http://www.mybb.com
 * License: http://www.mybb.com/about/license
 *
 */

/**
 * Completely recount the board statistics (useful if they become out of sync)
 */
require_once MYBB_ROOT."inc/functions.php";

function rebuild_stats()
{
	global $db;
	$query = $db->simple_select("forums", "SUM(threads) AS numthreads, SUM(posts) AS numposts, SUM(unapprovedthreads) AS numunapprovedthreads, SUM(unapprovedposts) AS numunapprovedposts, SUM(deletedthreads) AS numdeletedthreads, SUM(deletedposts) AS numdeletedposts");
	$stats = $db->fetch_array($query);

	$query = $db->simple_select("users", "COUNT(uid) AS users");
	$stats['numusers'] = $db->fetch_field($query, 'users');

	$query = $db->simple_select("users", "COUNT(uid) as players", "AccountType='player'");
	$stats['numplayers'] = $db->fetch_field($query, 'players');

	$query = $db->simple_select("users", "COUNT(uid) as gms", "AccountType='GM'");
	$stats['numgms'] = $db->fetch_field($query, 'gms');

	$query = $db->simple_select("users", "COUNT(uid) as characters", "AccountType='Character'");
	$stats['numcharacters'] = $db->fetch_field($query, 'characters');

	$query = $db->query("
		SELECT
			u.uid, u.username, u.usergroup, u.displaygroup, u.AccountType, pu.uid AS puid, pu.username AS pusername, pu.usergroup AS pusergroup, pu.displaygroup AS pdisplaygroup
		FROM
			".TABLE_PREFIX."users u
			LEFT JOIN ".TABLE_PREFIX."users pu ON (u.ParentUid = pu.uid)
		WHERE u.lastvisit > UNIX_TIMESTAMP() - 172800 OR u.regdate > UNIX_TIMESTAMP() - 172800
		ORDER BY username ASC
	");
	$usersFromLast48Hours = array();
	while($user = $db->fetch_array($query))
	{
		if ($user['AccountType'] == "Player") {
			if (!in_array($user['uid'], array_column($usersFromLast48Hours, 'uid'))) {
				$usersFromLast48Hours[] = array(
					'uid' => $user['uid'],
					'username' => htmlspecialchars_uni($user['username']),
					'usergroup' => $user['usergroup'],
					'displaygroup' => $user['displaygroup'],
				);
			}
		} else {
			if (!in_array($user['puid'], array_column($usersFromLast48Hours, 'uid'))) {
				$usersFromLast48Hours[] = array(
					'uid' => $user['puid'],
					'username' => htmlspecialchars_uni($user['pusername']),
					'usergroup' => $user['pusergroup'],
					'displaygroup' => $user['pdisplaygroup'],
				);
			}
		}
	}
	update_stats($stats, true);
	update_users_from_last_48_hours($usersFromLast48Hours, true);
}

/**
 * Completely rebuild the counters for a particular forum (useful if they become out of sync)
 *
 * @param int $fid The forum ID
 */
function rebuild_forum_counters($fid)
{
	global $db;

	// Fetch the number of threads and replies in this forum (Approved only)
	$query = $db->simple_select('threads', 'COUNT(tid) AS threads, SUM(replies) AS replies, SUM(unapprovedposts) AS unapprovedposts, SUM(deletedposts) AS deletedposts', "fid='$fid' AND visible='1'");
	$count = $db->fetch_array($query);
	$count['posts'] = $count['threads'] + $count['replies'];

	// Fetch the number of threads and replies in this forum (Unapproved only)
	$query = $db->simple_select('threads', 'COUNT(tid) AS threads, SUM(replies)+SUM(unapprovedposts)+SUM(deletedposts) AS impliedunapproved', "fid='$fid' AND visible='0'");
	$count2 = $db->fetch_array($query);
 	$count['unapprovedthreads'] = $count2['threads'];
	$count['unapprovedposts'] += $count2['impliedunapproved']+$count2['threads'];

	// Fetch the number of threads and replies in this forum (Soft deleted only)
	$query = $db->simple_select('threads', 'COUNT(tid) AS threads, SUM(replies)+SUM(unapprovedposts)+SUM(deletedposts) AS implieddeleted', "fid='$fid' AND visible='-1'");
	$count3 = $db->fetch_array($query);
 	$count['deletedthreads'] = $count3['threads'];
	$count['deletedposts'] += $count3['implieddeleted']+$count3['threads'];

	update_forum_counters($fid, $count);
	update_forum_lastpost($fid);
}

/**
 * Completely rebuild the counters for a particular thread (useful if they become out of sync)
 *
 * @param int $tid The thread ID
 */
function rebuild_thread_counters($tid)
{
	global $db;

 	$thread = get_thread($tid);
	$count = array();

 	$query = $db->simple_select("posts", "COUNT(pid) AS replies", "tid='{$tid}' AND pid!='{$thread['firstpost']}' AND visible='1'");
 	$count['replies'] = $db->fetch_field($query, "replies");

	// Unapproved posts
	$query = $db->simple_select("posts", "COUNT(pid) AS unapprovedposts", "tid='{$tid}' AND pid != '{$thread['firstpost']}' AND visible='0'");
	$count['unapprovedposts'] = $db->fetch_field($query, "unapprovedposts");

	// Soft deleted posts
	$query = $db->simple_select("posts", "COUNT(pid) AS deletedposts", "tid='{$tid}' AND pid != '{$thread['firstpost']}' AND visible='-1'");
	$count['deletedposts'] = $db->fetch_field($query, "deletedposts");

	// Attachment count
	$query = $db->query("
			SELECT COUNT(aid) AS attachment_count
			FROM ".TABLE_PREFIX."attachments a
			LEFT JOIN ".TABLE_PREFIX."posts p ON (a.pid=p.pid)
			WHERE p.tid='$tid' AND a.visible=1
	");
	$count['attachmentcount'] = $db->fetch_field($query, "attachment_count");

	update_thread_counters($tid, $count);
	update_thread_data($tid);
}

/**
 * Completely rebuild poll counters for a particular poll (useful if they become out of sync)
 *
 * @param int $pid The poll ID
 */
function rebuild_poll_counters($pid)
{
	global $db;

	$query = $db->simple_select("polls", "pid, numoptions", "pid='".(int)$pid."'");
	$poll = $db->fetch_array($query);

	$votes = array();
	$query = $db->simple_select("pollvotes", "voteoption, COUNT(vid) AS vote_count", "pid='{$poll['pid']}'", array('group_by' => 'voteoption'));
	while($vote = $db->fetch_array($query))
	{
		$votes[$vote['voteoption']] = $vote['vote_count'];
	}

	$voteslist = '';
	$numvotes = 0;
	for($i = 1; $i <= $poll['numoptions']; ++$i)
	{
		if(trim($voteslist != ''))
		{
			$voteslist .= "||~|~||";
		}

		if(!isset($votes[$i]) || (int)$votes[$i] <= 0)
		{
			$votes[$i] = "0";
		}
		$voteslist .= $votes[$i];
		$numvotes = $numvotes + $votes[$i];
	}

	$updatedpoll = array(
		"votes" => $db->escape_string($voteslist),
		"numvotes" => (int)$numvotes
	);
	$db->update_query("polls", $updatedpoll, "pid='{$poll['pid']}'");
}
