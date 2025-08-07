<?php
define("IN_MYBB", 1);
require_once "./global.php";

class ChangeUserControl {

    /**
     * Render the change user dropdown box
     * @param allowedAccountTypes Enum Allowed account types
     */
    public static function render($allowedAccountTypes, $justDropdown = false) {
        global $mybb, $templates;

        $loginbox = '';
        $changeuserboxDropdown = '';
        $mybb->user['username'] = htmlspecialchars_uni($mybb->user['username']);
        [$dropdownOptions, $dropdownOptionsCount] = self::createOptions($mybb->user, $allowedAccountTypes);
        $singleOptionText = self::createSingleOptionText($mybb->user, $allowedAccountTypes);
        eval("\$changeuserboxDropdown = \"".$templates->get("changeuserboxDropdown")."\";");
        eval("\$loginbox = \"".$templates->get("changeuserbox")."\";");
        return $justDropdown ? $changeuserboxDropdown : $loginbox;
    }

    private static function createSingleOptionText($user, $allowedAccountTypes) {
        switch ($allowedAccountTypes) {
            case 'All':
                return self::createSingleOptionTexWithInputField($user['uid'], $user['username']);
            case 'Player':
                return self::createSingleOptionTexWithInputField($user['parent']['uid'], $user['parent']['username']);
            case 'Character':
                if (count($user['characters']) == 1) {
                    return self::createSingleOptionTexWithInputField($user['characters'][0]['uid'], $user['characters'][0]['username']);
                } else {
                    return self::createSingleOptionTexWithInputField(-1, "Brak konta postaci. Utwórz konto postaci, aby móc wysyłać wiadomości na tym forum.");
                }
            default:
                error("Invalid account type: ".$allowedAccountTypes);
        }
    }

    private static function createSingleOptionTexWithInputField($value, $text){
        return '<input type="hidden" name="changeuserbox_selectedUser" value="'.$value.'" />'.$text;
    }

    private static function createOptions($user, $allowedAccountTypes) {
        switch ($allowedAccountTypes) {
            case 'All':
                return self::createAllOptions($user);
            case 'Player':
                return [null, 1];
            case 'Character':
                return self::createCharacterOptions($user);
            default:
                error("Invalid account type: ".$allowedAccountTypes);
        }
    }

    private static function createAllOptions($user) {
        $linkedAccounts = array_merge([$user['parent']], $user['characters']);
        $defaultUid = $user['uid'];
        $options = '';
        foreach ($linkedAccounts as $account) {
            $selected = ($account['uid'] == $defaultUid) ? ' selected' : '';
            $options .= '<option value="'.$account['uid'].'"'.$selected.'>'.$account['username'].'</option>';
        }
        return [$options, count($linkedAccounts)];
    }

    private static function createCharacterOptions($user) {
        $linkedAccounts = $user['characters'];
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
     * @return array|null Returns the selected user account or null if not found. Returns 'fake' user account with uid -1 if it lacks proper account type for the forum.
     */
    public static function getUserAccountSelection($user) {
        global $mybb;

        $selectedUid = $mybb->get_input('changeuserbox_selectedUser', MyBB::INPUT_INT);
    
        if ($selectedUid === -1) {
            return ['uid' => -1, 'username' => 'Brak konta postaci'];
        }

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