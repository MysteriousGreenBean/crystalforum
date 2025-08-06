<?php
define("IN_MYBB", 1);
require_once "./global.php";

class ChangeUserControl {

    /**
     * Render the change user dropdown box
     */
    public static function render() {
        global $mybb, $templates;

        $loginbox = '';
        $mybb->user['username'] = htmlspecialchars_uni($mybb->user['username']);
        [$dropdownOptions, $dropdownOptionsCount] = self::createOptions($mybb->user);
        eval("\$loginbox = \"".$templates->get("changeuserbox")."\";");
        return $loginbox;
    }

    private static function createOptions($user) {
        $linkedAccounts = array_merge([$user['parent']], $user['characters']);
        $defaultUid = $user['uid'];
        $options = '';
        foreach ($linkedAccounts as $account) {
            $selected = ($account['uid'] == $defaultUid) ? ' selected' : '';
            $options .= '<option value="'.$account['uid'].'"'.$selected.'>'.$account['username'].'</option>';
        }
        return [$options, count($linkedAccounts)];
    }

    /**
     * Get the selected user account from the change user dropdown
     * @param user User data of the current user
     * @return array|null Returns the selected user account or null if not found
     */
    public static function getUserAccountSelection($user) {
        global $mybb;

        $selectedUid = $mybb->get_input('changeuserbox_selectedUser', MyBB::INPUT_INT);
    
        if ($selectedUid === null) {
            return null;
        }

        if ($user['uid'] == $selectedUid) {
            return $user;
        }

        if ($user['parent']['uid'] == $selectedUid) {
            return $user['parent'];
        }

        foreach ($user['characters'] as $character) {
            if ($character['uid'] == $selectedUid) {
                return $character;
            }
        }

        return null;
    }
}