<?php

/********************************************************************************************************************************
*
*  Default message (/inc/plugins/defaultmessage.php)
*  Author: Krzysztof "Supryk" Supryczyński
*  Copyright: © 2013 - 2021 @ Krzysztof "Supryk" Supryczyński @ All rights reserved
*  
*  Website: http://supryk.eu/
*  Description: Plugin allows the administrator to determine the default message , thread message.
*
********************************************************************************************************************************/
/********************************************************************************************************************************
*
* This file is part of "Default message" plugin for MyBB.
* Copyright © 2013 - 2021 @ Krzysztof "Supryk" Supryczyński @ All rights reserved
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU Lesser General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
********************************************************************************************************************************/

if(!defined("IN_MYBB"))
{
	die("Direct initialization of this file is not allowed.<br /><br />Please make sure IN_MYBB is defined.");
}

$plugins->add_hook("admin_config_settings_manage", "defaultmessage_admin_lang_load");
$plugins->add_hook("admin_config_settings_change", "defaultmessage_admin_lang_load");
$plugins->add_hook("admin_config_settings_start", "defaultmessage_admin_lang_load");
$plugins->add_hook("admin_formcontainer_output_row", "defaultmessage_admin_formcontainer_output_row");
$plugins->add_hook("admin_forum_management_add_commit", "defaultmessage_admin_forum_management_add_commit");
$plugins->add_hook("admin_forum_management_edit_commit", "defaultmessage_admin_forum_management_edit_commit");
$plugins->add_hook("admin_config_thread_prefixes_add_prefix_commit", "defaultmessage_admin_config_thread_prefixes_add_prefix_commit");
$plugins->add_hook("admin_config_thread_prefixes_edit_prefix_commit", "defaultmessage_admin_config_thread_prefixes_edit_prefix_commit");
$plugins->add_hook("newthread_end", "defaultmessage_newthread_end");
$plugins->add_hook("newreply_end", "defaultmessage_newreply_end");
$plugins->add_hook("showthread_start", "defaultmessage_showthread_start");
$plugins->add_hook("pre_output_page", "defaultmessage_thanks");

function defaultmessage_info()
{
    global $lang;
    $lang->load("config_defaultmessage");
	
	$lang->defaultmessage_desc = "<form action=\"https://www.paypal.com/donate\" method=\"post\" target=\"_top\" style=\"float:right;\">
<input type=\"hidden\" name=\"hosted_button_id\" value=\"8YTUDFQN6XAGN\" />
<input type=\"image\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif\" border=\"0\" name=\"submit\" title=\"PayPal - The safer, easier way to pay online!\" alt=\"Donate with PayPal button\" />
<img alt=\"\" border=\"0\" src=\"https://www.paypal.com/en_PL/i/scr/pixel.gif\" width=\"1\" height=\"1\" />
</form>".$lang->defaultmessage_desc;
	
	$information = array(
		"name"				=> $lang->defaultmessage,
		"description"		=> $lang->defaultmessage_desc,
		"website"			=> "http://supryk.eu/",
		"author"			=> "Krzysztof \"Supryk\" Supryczyński",
		"authorsite"		=> "http://supryk.eu/",
		"version"			=> "1.7",
		"compatibility"	=> "18*",
		"codename"			=> "defaultmessage",
	);
	
	return $information;
}

function defaultmessage_is_installed()
{
	global $db;
	
	$num_rows = $db->num_rows($db->simple_select("settinggroups", "*", "name = \"defaultmessage\""));
	
	return $num_rows;
}

function defaultmessage_install()
{
	global $db, $cache, $lang;
	$lang->load("config_defaultmessage");
	
	$max_disporder = $db->fetch_field($db->simple_select("settinggroups", "MAX(disporder) AS max_disporder"), "max_disporder");
	
	$settinggroup = array(
	//	"gid"					=> "",
		"name" 				=> "defaultmessage", 
		"title" 				=> $db->escape_string($lang->setting_group_defaultmessage),
		"description"		=> $db->escape_string($lang->setting_group_defaultmessage_desc),
		"disporder" 		=> $max_disporder + 1,
		"isdefault"			=> "0",
	);
	$gid = $db->insert_query("settinggroups", $settinggroup);
	
	$settings = array();
	
	$settings[] = array(
	//	"sid"					=> "",
		"name"				=> "defaultmessage_onoff",
		"title"					=> $db->escape_string($lang->setting_defaultmessage_onoff),
		"description"		=> $db->escape_string($lang->setting_defaultmessage_onoff_desc),
		"optionscode"	=> "onoff",
		"value"				=> "1",
		"disporder"		=> "1",
		"gid"					=> $gid,
		"isdefault"			=> "0",
	);
	
	$db->insert_query_multiple("settings", $settings);
	
	rebuild_settings();

	if(!$db->field_exists("defaultmessage_prefix", "forums"))
	{
		$db->add_column("forums", "defaultmessage_prefix", "smallint unsigned NOT NULL default \"0\"");
	}
	
	if(!$db->field_exists("defaultmessage_subject", "forums"))
	{
		$db->add_column("forums", "defaultmessage_subject", "varchar(120) NOT NULL default \"\"");
	}
	
	if(!$db->field_exists("defaultmessage_thread", "forums"))
	{
		$db->add_column("forums", "defaultmessage_thread", "text NOT NULL");
	}
	
	if(!$db->field_exists("defaultmessage_post", "forums"))
	{
		$db->add_column("forums", "defaultmessage_post", "text NOT NULL");
	}
	
	$cache->update_forums();
	
	if(!$db->field_exists("defaultmessage_prefix_subject", "threadprefixes"))
	{
		$db->add_column("threadprefixes", "defaultmessage_prefix_subject", "text NOT NULL");
	}
	
	if(!$db->field_exists("defaultmessage_prefix_thread", "threadprefixes"))
	{
		$db->add_column("threadprefixes", "defaultmessage_prefix_thread", "text NOT NULL");
	}
	
	if(!$db->field_exists("defaultmessage_prefix_post", "threadprefixes"))
	{
		$db->add_column("threadprefixes", "defaultmessage_prefix_post", "text NOT NULL");
	}
	
	$cache->update_threadprefixes();
}

function defaultmessage_uninstall()
{
    global $mybb, $db, $cache, $page, $lang;
	$lang->load("config_defaultmessage");
	
	if($mybb->request_method != "post")
	{
		$page->output_confirm_action("index.php?module=config-plugins&action=deactivate&uninstall=1&plugin=defaultmessage", $lang->defaultmessage_uninstall_message, $lang->defaultmessage_uninstall);
	}
	
	if(!isset($mybb->input['no']))
	{
		if($db->field_exists("defaultmessage_prefix", "forums"))
		{
			$db->drop_column("forums", "defaultmessage_prefix");
		}
		
		if($db->field_exists("defaultmessage_subject", "forums"))
		{
			$db->drop_column("forums", "defaultmessage_subject");
		}
		
		if($db->field_exists("defaultmessage_thread", "forums"))
		{
			$db->drop_column("forums", "defaultmessage_thread");
		}
		
		if($db->field_exists("defaultmessage_post", "forums"))
		{
			$db->drop_column("forums", "defaultmessage_post");
		}

		$cache->update_forums();
		
		if($db->field_exists("defaultmessage_prefix_subject", "threadprefixes"))
		{
			$db->drop_column("threadprefixes", "defaultmessage_prefix_subject");
		}
		
		if($db->field_exists("defaultmessage_prefix_thread", "threadprefixes"))
		{
			$db->drop_column("threadprefixes", "defaultmessage_prefix_thread");
		}
		
		if($db->field_exists("defaultmessage_prefix_post", "threadprefixes"))
		{
			$db->drop_column("threadprefixes", "defaultmessage_prefix_post");
		}
		
		$cache->update_threadprefixes();
	}
	
	$db->delete_query("settinggroups", "name = \"defaultmessage\"");
	$db->delete_query("settings", "name LIKE \"defaultmessage%\"");
	rebuild_settings();
}

function defaultmessage_activate()
{		
	defaultmessage_deactivate();
	
	find_replace_templatesets("showthread_quickreply", '#'.preg_quote('</textarea>').'#', '{$message}</textarea>');
	find_replace_templatesets("newthread", '#'.preg_quote('</head>').'#', '<script type="text/javascript">'."\n\t".'var defaultmessage_prefix_subject = {$defaultmessage_prefix_subject}'."\n\t".'var defaultmessage_prefix_thread = {$defaultmessage_prefix_thread}'."\n".'</script>'."\n".'</head>');
	find_replace_templatesets("newthread", '#'.preg_quote('</body>').'#', '<script type="text/javascript" src="{$mybb->asset_url}/jscripts/defaultmessage.js"></script>'."\n".'</body>');
	find_replace_templatesets("newthread", '#'.preg_quote('name="subject"').'#', 'name="subject" id="subject"');
	find_replace_templatesets("post_prefixselect_single", '#'.preg_quote('<select name="threadprefix">').'#', '<select name="threadprefix"  id="prefix_select">');
}

function defaultmessage_deactivate()
{
	require MYBB_ROOT."/inc/adminfunctions_templates.php";
	
	find_replace_templatesets('showthread_quickreply', '#' . preg_quote('{$message}') . '#', '', 0);
	find_replace_templatesets('newthread', '#' . preg_quote('<script type="text/javascript">'."\n\t".'var defaultmessage_prefix_subject = {$defaultmessage_prefix_subject}'."\n\t".'var defaultmessage_prefix_thread = {$defaultmessage_prefix_thread}'."\n".'</script>'."\n") . '#', '', 0);
	find_replace_templatesets('newthread', '#' . preg_quote('<script type="text/javascript" src="{$mybb->asset_url}/jscripts/defaultmessage.js"></script>'."\n") . '#', '', 0);
	find_replace_templatesets('newthread', '#' . preg_quote(' id="subject"') . '#', '', 0);
	find_replace_templatesets("post_prefixselect_single", '#'.preg_quote('<select name="threadprefix"  id="prefix_select">').'#', '<select name="threadprefix">');
}

function defaultmessage_admin_lang_load()
{
    global $lang;
    $lang->load("config_defaultmessage");
} 

function defaultmessage_admin_formcontainer_output_row($option)
{
	global $mybb, $lang, $form, $forum_data, $prefix;
	$lang->load("forum_defaultmessage");
	$lang->load("config_defaultmessage");
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}

	if($option['title'] == $lang->forum_rules && $lang->forum_rules && $mybb->input['module'] == "forum-management" && ($mybb->input['action'] == "edit" || $mybb->input['action'] == "add"))
	{
		$prefix_cache = build_prefixes();
		$prefixes = array();
		
		if(!empty($prefix_cache))
		{
			foreach($prefix_cache as $prefix)
			{
				if($prefix['forums'] != "-1")
				{
					$forums = explode(",", $prefix['forums']);

					if(!in_array($forum_data['fid'], $forums))
					{
						continue;
					}
				}
				
				$prefixes[$prefix['pid']] = $prefix;
			}
		}
		
		$select_list = array(
			"0" => $lang->defaultmessage_no_prefix,
		);

		if(!empty($prefixes))
		{
			foreach($prefixes as $prefix)
			{
				$prefix['prefix'] = htmlspecialchars_uni($prefix['prefix']);
				$prefix['pid'] = $prefix['pid'];	
				$select_list[$prefix['pid']] = $prefix['prefix'];
			}	
		}
		
		$option['content'] .= "
				</div>
			</td>
		</tr>
		<tr class=\"alt_row\">
			<td id=\"\" class=\"first\" style=\"\">
				<label>
					".$lang->defaultmessage."
				</label>
				<div class=\"form_row\">";
				
			//		if(!empty($prefixes))
			//		{
						$option['content'] .= "<div class=\"forum_settings_bit\">
							".$lang->defaultmessage_prefix.
							"<br />\n
							".$form->generate_select_box('defaultmessage_prefix', $select_list, $forum_data['defaultmessage_prefix'], array('checked' => $forum_data['defaultmessage_prefix'], 'id' => 'defaultmessage_prefix'))."
						</div>";
				//	}
					
					$option['content'] .= "<div class=\"forum_settings_bit\">
						".$lang->defaultmessage_subject."
						<br />\n
						".$form->generate_text_box('defaultmessage_subject', $forum_data['defaultmessage_subject'], array('checked' => $forum_data['defaultmessage_subject'], 'id' => 'defaultmessage_subject'))."
					</div>
					<div class=\"forum_settings_bit\">
						".$lang->defaultmessage_thread."
						<br />\n
						".$form->generate_text_area('defaultmessage_thread', $forum_data['defaultmessage_thread'], array('checked' => $forum_data['defaultmessage_thread'], 'id' => 'defaultmessage_thread'))."
					</div>
					<div class=\"forum_settings_bit\">
						".$lang->defaultmessage_post."
						<br />\n
						".$form->generate_text_area('defaultmessage_post', $forum_data['defaultmessage_post'], array('checked' => $forum_data['defaultmessage_post'], 'id' => 'defaultmessage_post'))."
					</div>";
	}

	if($option['title'] == $lang->available_to_groups." <em>*</em>" && $lang->available_to_groups && $mybb->input['module'] == "config-thread_prefixes"&& ($mybb->input['action'] == "edit_prefix" || $mybb->input['action'] == "add_prefix"))
	{
		$option['content'] .= "
				</div>
			</td>
		</tr>
		<tr class=\"last alt_row\">
			<td id=\"\" class=\"first\" style=\"\">
				<label for=\"defaultmessage_prefix\">
					".$lang->defaultmessage."
				</label>
				";
		$option['content'] .= "<div class=\"description\">
						".$lang->defaultmessage_prefix_subject."
						</div>
						<div class=\"form_row\">
						".$form->generate_text_box('defaultmessage_prefix_subject', $prefix['defaultmessage_prefix_subject'], array('checked' => $prefix['defaultmessage_prefix_subject'], 'id' => 'defaultmessage_prefix_subject'))."</div>";
		$option['content'] .= "<div class=\"description\">
						".$lang->defaultmessage_prefix_thread."
						</div>
						<div class=\"form_row\">
						".$form->generate_text_area('defaultmessage_prefix_thread', $prefix['defaultmessage_prefix_thread'], array('checked' => $prefix['defaultmessage_prefix_thread'], 'id' => 'defaultmessage_prefix_thread'))."</div>";
		$option['content'] .= "<div class=\"description\">
						".$lang->defaultmessage_prefix_post."
						</div>
						<div class=\"form_row\">
						".$form->generate_text_area('defaultmessage_prefix_post', $prefix['defaultmessage_prefix_post'], array('checked' => $prefix['defaultmessage_prefix_post'], 'id' => 'defaultmessage_prefix_post'))."</div>";
	}
}

function defaultmessage_admin_forum_management_add_commit()
{
	global $db, $fid, $mybb;
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}
	
	$update_array = array(
		"defaultmessage_prefix" => $db->escape_string($mybb->get_input("defaultmessage_prefix")),
		"defaultmessage_subject" => $db->escape_string($mybb->get_input("defaultmessage_subject")),
		"defaultmessage_thread" => $db->escape_string($mybb->get_input("defaultmessage_thread")),
		"defaultmessage_post" => $db->escape_string($mybb->get_input("defaultmessage_post")),
	);

	$db->update_query("forums", $update_array, "fid='{$fid}'");
}

function defaultmessage_admin_forum_management_edit_commit()
{
	global $db, $cache, $fid, $mybb;
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}
	
	$update_array = array(
		"defaultmessage_prefix" => $db->escape_string($mybb->get_input("defaultmessage_prefix")),
		"defaultmessage_subject" => $db->escape_string($mybb->get_input("defaultmessage_subject")),
		"defaultmessage_thread" => $db->escape_string($mybb->get_input("defaultmessage_thread")),
		"defaultmessage_post" => $db->escape_string($mybb->get_input("defaultmessage_post")),
	);

	$db->update_query("forums", $update_array, "fid='{$fid}'");

	$cache->update_forums();
}

function defaultmessage_admin_config_thread_prefixes_add_prefix_commit()
{
	global $mybb, $db, $pid;
	
	$update_array = array(
		"defaultmessage_prefix_subject" => $db->escape_string($mybb->get_input("defaultmessage_prefix_subject")),
		"defaultmessage_prefix_thread" => $db->escape_string($mybb->get_input("defaultmessage_prefix_thread")),
		"defaultmessage_prefix_post" => $db->escape_string($mybb->get_input("defaultmessage_prefix_post")),
	);
	
	$db->update_query("threadprefixes", $update_array, "pid='{$pid}'");
}

function defaultmessage_admin_config_thread_prefixes_edit_prefix_commit()
{
	global $mybb, $db, $prefix;
	
	$update_array = array(
		"defaultmessage_prefix_subject" => $db->escape_string($mybb->get_input("defaultmessage_prefix_subject")),
		"defaultmessage_prefix_thread" => $db->escape_string($mybb->get_input("defaultmessage_prefix_thread")),
		"defaultmessage_prefix_post" => $db->escape_string($mybb->get_input("defaultmessage_prefix_post")),

	);
	
	$db->update_query("threadprefixes", $update_array, "pid='{$prefix['pid']}'");
}

function defaultmessage_newthread_end()
{
	global $mybb, $thread_errors, $forum, $message, $subject, $prefixselect, $defaultmessage_prefix_subject, $defaultmessage_prefix_thread;
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}
	
	if($mybb->input['action'] == "editdraft" || $mybb->input['previewpost'] || $mybb->input['attachmentaid'] || $mybb->input['newattachment'] || $thread_errors)
	{
		return;
	}

	$prefixselect = build_prefix_select($forum['fid'], $forum['defaultmessage_prefix']);
	$subject = $forum['defaultmessage_subject'];
	$message = $forum['defaultmessage_thread'];
	
	$groups = array($mybb->user['usergroup']);
	if($mybb->user['additionalgroups'])
	{
		$exp = explode(",", $mybb->user['additionalgroups']);

		foreach($exp as $group)
		{
			$groups[] = $group;
		}
	}
	
	$prefix_cache = build_prefixes();
	$prefixes_subject = array();
	$prefixes_thread = array();
	
	if($forum['defaultmessage_subject'] != "")
	{
		$prefixes_subject['0'] = $subject;	
	}
		
	if($forum['defaultmessage_thread'] != "")
	{
		$prefixes_thread['0'] = $message;	
	}
	
	if(!empty($prefix_cache))
	{		
		if($forum['defaultmessage_prefix'] != "0")
		{
			foreach($prefix_cache as $prefix)
			{				
				if($prefix['forums'] != "-1")
				{
					$forums = explode(",", $prefix['forums']);

					if(!in_array($forum['fid'], $forums))
					{
						continue;
					}
				}
				
				if($prefix['groups'] != "-1")
				{
					$prefix_groups = explode(",", $prefix['groups']);

					foreach($groups as $group)
					{
						if(in_array($group, $prefix_groups))
						{
							$prefixselect = build_prefix_select($forum['fid'], $forum['defaultmessage_prefix']);
						}
					}
				}
				else
				{
					$prefixselect = build_prefix_select($forum['fid'], $forum['defaultmessage_prefix']);
				}
			}
		}
		
		foreach($prefix_cache as $prefix_subject)
		{
			if($prefix_subject['defaultmessage_prefix_subject'] == "")
			{
				continue;
			}
				
			if($prefix_subject['forums'] != "-1")
			{
				$forums = explode(",", $prefix_subject['forums']);

				if(!in_array($forum['fid'], $forums))
				{
					continue;
				}
			}
			
			if($prefix_subject['groups'] != "-1")
			{
				$prefix_groups = explode(",", $prefix_subject['groups']);

				foreach($groups as $group)
				{
					if(in_array($group, $prefix_groups) && !isset($prefixes_subject[$prefix_subject['pid']]))
					{
						$prefixes_subject[$prefix_subject['pid']] = $prefix_subject['defaultmessage_prefix_subject'];
					}
				}
			}
			else
			{
				$prefixes_subject[$prefix_subject['pid']] = $prefix_subject['defaultmessage_prefix_subject'];
			}
		}
		
		foreach($prefix_cache as $prefix_thread)
		{
			if($prefix_thread['defaultmessage_prefix_thread'] == "")
			{
				continue;
			}
				
			if($prefix_thread['forums'] != "-1")
			{
				$forums = explode(",", $prefix_thread['forums']);

				if(!in_array($forum['fid'], $forums))
				{
					continue;
				}
			}
			
			if($prefix_thread['groups'] != "-1")
			{
				$prefix_groups = explode(",", $prefix_thread['groups']);

				foreach($groups as $group)
				{
					if(in_array($group, $prefix_groups) && !isset($prefixes_thread[$prefix_thread['pid']]))
					{
						$prefixes_thread[$prefix_thread['pid']] = $prefix_thread['defaultmessage_prefix_thread'];
					}
				}
			}
			else
			{
				$prefixes_thread[$prefix_thread['pid']] = $prefix_thread['defaultmessage_prefix_thread'];
			}
		}
	}
	
	if($forum['defaultmessage_prefix'] != "0" && $prefixes_thread[$forum['defaultmessage_prefix']] != "")
	{
		$message = $prefixes_thread[$forum['defaultmessage_prefix']];
	}
	
	if($forum['defaultmessage_prefix'] != "0" && $prefixes_subject[$forum['defaultmessage_prefix']] != "")
	{
		$subject = $prefixes_subject[$forum['defaultmessage_prefix']];
	}

	$defaultmessage_prefix_subject = json_encode($prefixes_subject);
	$defaultmessage_prefix_thread = json_encode($prefixes_thread);
}

function defaultmessage_newreply_end()
{
	global $mybb, $thread_errors, $forum, $message, $thread;
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}
	
	if($mybb->input['action'] == "editdraft" || $mybb->input['previewpost'] || $mybb->input['attachmentaid'] || $mybb->input['newattachment'] || $post_errors)
	{
		return;
	}
	
	if($forum['defaultmessage_post'] != "")
	{
		$defaultmessage = $forum['defaultmessage_post'];
	}
	
	if($thread['prefix'] != "0")
	{	
		$prefix_cache = build_prefixes($thread['prefix']);
		
		if(!empty($prefix_cache))
		{			
			if($prefix_cache['defaultmessage_prefix_post'] != "")
			{				
				$groups = array($mybb->user['usergroup']);
				if($mybb->user['additionalgroups'])
				{
					$exp = explode(",", $mybb->user['additionalgroups']);

					foreach($exp as $group)
					{
						$groups[] = $group;
					}
				}
				
				if($prefix_cache['forums'] != "-1")
				{
					$forums = explode(",", $prefix_cache['forums']);

					if(in_array($forum['fid'], $forums))
					{
						if($prefix_cache['groups'] != "-1")
						{
							$prefix_groups = explode(",", $prefix_cache['groups']);

							foreach($groups as $group)
							{
								if(in_array($group, $prefix_groups))
								{
									$defaultmessage = $prefix_cache['defaultmessage_prefix_post'];
								}
							}
						}
						else
						{
							$defaultmessage = $prefix_cache['defaultmessage_prefix_post'];
						}
					}
				}
				else
				{
					if($prefix_cache['groups'] != "-1")
					{
						$prefix_groups = explode(",", $prefix_cache['groups']);

						foreach($groups as $group)
						{
							if(in_array($group, $prefix_groups))
							{
								$defaultmessage = $prefix_cache['defaultmessage_prefix_post'];
							}
						}
					}
					else
					{
						$defaultmessage = $prefix_cache['defaultmessage_prefix_post'];
					}
				}
			}
		}
	}
	
	if($mybb->input['replyto'])
	{
		$message = $defaultmessage.$message;
	}
	else
	{
		$message = $defaultmessage;
	}
}

function defaultmessage_showthread_start()
{
	global $mybb, $message, $forum, $thread;
	
	if($mybb->settings['defaultmessage_onoff'] == "0")
	{
		return;
	}
	
	$message = $forum['defaultmessage_post'];
	
	if($thread['prefix'] == "0")
	{
		return;
	}
	
	$prefix_cache = build_prefixes($thread['prefix']);;
		
	if(!empty($prefix_cache))
	{			
		if($prefix_cache['defaultmessage_prefix_post'] != "")
		{				
			$groups = array($mybb->user['usergroup']);
			if($mybb->user['additionalgroups'])
			{
				$exp = explode(",", $mybb->user['additionalgroups']);

				foreach($exp as $group)
				{
					$groups[] = $group;
				}
			}
			
			if($prefix_cache['forums'] != "-1")
			{
				$forums = explode(",", $prefix_cache['forums']);

				if(in_array($forum['fid'], $forums))
				{
					if($prefix_cache['groups'] != "-1")
					{
						$prefix_groups = explode(",", $prefix_cache['groups']);

						foreach($groups as $group)
						{
							if(in_array($group, $prefix_groups))
							{
								$message = $prefix_cache['defaultmessage_prefix_post'];
							}
						}
					}
					else
					{
						$message = $prefix_cache['defaultmessage_prefix_post'];
					}
				}
			}
			else
			{
				if($prefix_cache['groups'] != "-1")
				{
					$prefix_groups = explode(",", $prefix_cache['groups']);

					foreach($groups as $group)
					{
						if(in_array($group, $prefix_groups))
						{
							$message = $prefix_cache['defaultmessage_prefix_post'];
						}
					}
				}
				else
				{
					$message = $prefix_cache['defaultmessage_prefix_post'];
				}
			}
		}
	}
}

/********************************************************************************************************************************
*
* Say thanks to plugin author - paste link to author website.
* Please don't remove this code if you didn't make donate.
* It's the only way to say thanks without donate.
*
********************************************************************************************************************************/
function defaultmessage_thanks(&$content)
{
    global $session, $thanksSupryk, $lang;
	$lang->load("defaultmessage");
        
    if(!isset($thanksSupryk) && $session->is_spider)
    {
        $thx = '<div style="margin:auto; text-align:center;">'.$lang->defaultmessage_thanks.'</div></body>';
        $content = str_replace('</body>', $thx, $content);
        $thanksSupryk = true;
    }
}