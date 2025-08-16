<?php

/**
 * Output for showing other accounts in navigation
 * @param user User whose characters are being displayed
 * @param templates Templates object for rendering HTML
 * @return string HTML for the account items for navigation
 */
function get_characters_for_navigation($user, $templates) {
    $accountItems = '';

    if ($user['AccountType'] != 'Player') {
        $accountItems .= generate_account_item($user['parent'], $templates);
    }

    foreach($user['characters'] as $character) {
        if ($user['uid'] != $character['uid']) {
            $accountItems .= generate_account_item($character, $templates);
        }
    }

    return $accountItems;
}

/**
 * Generate HTML for a single account item in the navigation
 * @param character Character data to display
 * @param templates Templates object for rendering HTML
 * @return string HTML for the account item for navigation
 */
function generate_account_item($character, $templates) {
    $characterLabel = $character['username'];
    $characterUid = $character['uid'];
    $characterAvatar = $character['avatar'];

    $accountItem = '';
    eval('$accountItem = "'.$templates->get('header_welcomeblock_member_account').'";');

    return $accountItem;
}

/**
 * Log in as a specific account. That specific account has to be a character or player account of provided user.
 * @param user User data of the current user
 * @param accountUid UID of the account to switch to
 * @param redirectPage Page to redirect after login
 */
function login_as_account($user, $accountUid, $redirectPage) {
    $targetUser = null;
    if ($user['uid'] == $accountUid) {
        return; // No need to switch to the same account
    }

    if ($user['parent']['uid'] == $accountUid) {
        $targetUser = $user['parent'];
    } else {
        foreach ($user['characters'] as $character) {
            if ($character['uid'] == $accountUid) {
                $targetUser = $character;
                break;
            }
        }
    }

    global $lang, $mybb;
    if (!$targetUser) {
        error($lang->sprintf($lang->error_invalid_character, $accountUid));
    }

    my_setcookie("mybbuser", $targetUser['uid']."_".$targetUser['loginkey'], null, true, "lax");
    $lang->redirect_registered = $lang->sprintf($lang->redirect_registered, $mybb->settings['bbname'], htmlspecialchars_uni($user['username']));
    redirect($redirectPage, $lang->redirect_registered);
}

/*
 * Set the current user as parent account for code purposes. Does not actually login as this user.
 */
function use_parent_user() {
    global $mybb;
    $mybb->user['parent']['characters'] = $mybb->user['characters'];
    $mybb->user['parent']['parent'] = $mybb->user['parent']; 
    $mybb->user = $mybb->user['parent'];
    $mybb->post_code = generate_post_check();
}

/**
 * Get a list of formatted account names with links for a user profile, filtered by account type
 * @param user User data containing characters
 * @param type Type of account to filter by (e.g., 'Player', 'NPC')
 * @return string HTML output of accounts for the user profile, delimited by commas
 */
function get_accounts_for_user_profile($user, $type) {
    global $mybb;

    $characterOutput = '';
    $linkTemplate = $mybb->settings['bburl'] . '/member.php?action=profile&uid=';
    foreach($user['characters'] as $character) {
        if ($character['AccountType'] == $type) {
            $characterOutput .= '<a href="'.$linkTemplate.$character['uid'].'">'.format_name($character['username'], $character['usergroup'], $character['displaygroup'], true).'</a>, ';
        }
    }

    $characterOutput = rtrim($characterOutput, ', ');
    return $characterOutput;
}

/**
 * Get a list of formatted account names with links for memberlist.
 * @param linkedAccounts Array of linked accounts for the user
 * @return string HTML output of accounts for memberlist row, or "Brak" string if no accounts are linked.
 */
function get_accounts_for_memberlist($linkedAccounts) {
    global $mybb;

    if (empty($linkedAccounts)) {
        return "Brak";
    }

    usort($linkedAccounts, function($a, $b) {
        if ($a['parentUid'] == 0 && $b['parentUid'] != 0) {
            return -1;
        }
        if ($a['parentUid'] != 0 && $b['parentUid'] == 0) {
            return 1;
        }
        return strcasecmp($a['username'], $b['username']);
    });

    $characterOutput = '';
    $linkTemplate = $mybb->settings['bburl'] . '/member.php?action=profile&uid=';
    foreach($linkedAccounts as $linkedAccount) {
        $characterOutput .= '<a href="'.$linkTemplate.$linkedAccount['uid'].'">'.format_name($linkedAccount['username'], $linkedAccount['usergroup'], $linkedAccount['displaygroup'], true).'</a><br/>';
    }

    return $characterOutput;
}

/**
 * Get list of all accounts for a user. 
 * @param user User data containing characters
 * @return array List of all accounts for the user. First element will be the parent user, rest will be alphabetically sorted.
 */
function get_all_accounts($user){
    $accounts = [];

    // Add $user
    $accounts[$user['uid']] = $user;

    // Add $user['parent'] if exists and not duplicate
    if (isset($user['parent']) && $user['parent']['uid'] != $user['uid']) {
        $accounts[$user['parent']['uid']] = $user['parent'];
    }

    // Add characters, avoiding duplicates
    $characterAccounts = [];
    if (isset($user['characters']) && is_array($user['characters'])) {
        foreach ($user['characters'] as $character) {
            if (!isset($accounts[$character['uid']])) {
                $characterAccounts[$character['uid']] = $character;
            }
        }
    }

    // Sort characters alphabetically by username
    uasort($characterAccounts, function($a, $b) {
        return strcasecmp($a['username'], $b['username']);
    });

    // Merge sorted characters into $accounts (parent stays first)
    foreach ($characterAccounts as $uid => $character) {
        $accounts[$uid] = $character;
    }

    // Return as indexed array
    return array_values($accounts);
}

/*
    Checks if provided uid belongs to the current user.
    @param uid User ID to check
    @return bool True if the account belongs to the current user, false otherwise
*/
function does_account_belong_to_current_user(int $uid) {
    global $mybb;

    if ($uid == null || $uid == 0) {
        return false;
    }

    $allAccounts = get_all_accounts($mybb->user);
    if (in_array($uid, array_column($allAccounts, 'uid'))) {
        return true;
    }

    return false;
}


function create_pm_folder_for_character($characterUid, $characterName)
{
    global $mybb, $lang;

    $userHandler = new UserDataHandler("update");

    $foldersexploded = explode("$%%$", $mybb->user['parent']['pmfolders']);
    $newPmFolders = '';
    foreach($foldersexploded as $key => $folders)
    {
		[$folderId, $folderName] = explode("**", $folders, 2);
        $newPmFolders .= "$%%$$folderId**$folderName";
        if ($folderId == 0) {
            $folderName = $lang->folder_inbox.' - '.$characterName;
            $newPmFolders .= "$%%$-$characterUid**$folderName";
        }
    }

    if (substr($newPmFolders, 0, 4) === "$%%$") {
        $newPmFolders = substr($newPmFolders, 4);
    }

    $user = array(
        "uid" => $mybb->user['parent']['uid'],
        "pmfolders" => $newPmFolders
    );

    echo "NEW PM FOLDERS FOR UID: ".$mybb->user['parent']['uid']." ".$newPmFolders."<br/>";
    $userHandler->set_data($user);

    if(!$userHandler->validate_user())
    {
        $errors = $userHandler->get_friendly_errors();
        echo "ERROR CREATING PM FOLDER FOR UID: ".$mybb->user['parent']['uid']." ".$errors."<br/>";
    }
    else
    {
        $userHandler->update_user();
        echo "PM FOLDER CREATED FOR UID: ".$mybb->user['parent']['uid']." ".$newPmFolders."<br/>";
    }
}