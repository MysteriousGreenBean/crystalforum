<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once __DIR__."/../enums/AccountType.php";
require_once __DIR__."/../enums/AllowedAccountTypes.php";

class ChangeUserControl {
    private AllowedAccountTypes $allowedAccountTypes = AllowedAccountTypes::ALL;
    private array $user;
    private array $usergroup;
    private ?int $defaultUid = null;
    private bool $justDropdown = false;
    private bool $justOneOption = false;

    private function __construct(array $user, array $usergroup) {
        $this->user = $user;
        $this->usergroup = $usergroup;
    }

    /**
     * Prepare ChangeUserControl for a specific user
     * @param array $user for whom the dropdown is being prepared
     * @param array $usergroup the user group of the user
     * @return ChangeUserControl
     */
    public static function prepareFor(array $user, array $usergroup): ChangeUserControl {
        return new ChangeUserControl($user, $usergroup);
    }

    /**
     * Set the allowed account types for the dropdown
     * @param AllowedAccountTypes $allowedAccountTypes
     * @return ChangeUserControl
     */
    public function withAllowedAccountTypes(AllowedAccountTypes $allowedAccountTypes): ChangeUserControl {
        $this->allowedAccountTypes = $allowedAccountTypes;
        return $this;
    }

    /**
     * Set the default selected user for the dropdown
     * @param int $defaultUid
     * @return ChangeUserControl
     */
    public function withDefaultSelection(int $defaultUid): ChangeUserControl {
        if ($defaultUid != get_NPC()['uid']) {
            $this->defaultUid = $defaultUid;
        }

        return $this;
    }

    /**
     * Set the control to only show a single user
     * @param int $onlyUid
     * @return ChangeUserControl
     */
    public function withOnlySelection(int $onlyUid): ChangeUserControl {
        $this->defaultUid = $onlyUid;
        $this->justOneOption = true;
        return $this;
    }

    /**
     * Set the dropdown to only show the user selection dropdown
     * @return ChangeUserControl
     */
    public function asDropdownOnly(): ChangeUserControl {
        $this->justDropdown = true;
        return $this;
    }

    /**
     * Render the control
     * @return string
     */
    public function render(): string {
        global $templates;

        $loginbox = '';
        $changeuserboxDropdown = '';
        $this->user['username'] = htmlspecialchars_uni($this->user['username']);
        [$dropdownOptions, $dropdownOptionsCount] = $this->createOptions();
        $singleOptionText = $this->defaultUid != null ? $this->createSingleOptionTextFromDefaultValue() : $this->createSingleOptionText();

        $NPCAllowed = $this->allowedAccountTypes == AllowedAccountTypes::CHARACTER || $this->allowedAccountTypes == AllowedAccountTypes::ALL;
        eval("\$changeuserboxDropdown = \"".$templates->get("changeuserboxDropdown")."\";");

        if ($this->usergroup['canAssignAnyUser']) {
            $adminDropdownOptions = $this->createAdminOptions();
            eval("\$changeuserboxDropdown = \"".$templates->get("adminChangeuserboxDropdown")."\";");
        }
        eval("\$loginbox = \"".$templates->get("changeuserbox")."\";");
        return $this->justDropdown ? $changeuserboxDropdown : $loginbox;
    }

    private function createSingleOptionTextFromDefaultValue(): string {
        if ($this->defaultUid == null)
        {
            error("Default UID is not set. Please set it using withDefaultSelection() method.");
        }

        if ($this->defaultUid == $this->user['parent']['uid'] && ($this->allowedAccountTypes == AllowedAccountTypes::ALL || $this->allowedAccountTypes == AllowedAccountTypes::PLAYER)) {
            return $this->createSingleOptionTexWithInputField($this->user['parent']['uid'], $this->user['parent']['username']);
        }

        if ($this->allowedAccountTypes != AllowedAccountTypes::CHARACTER && $this->allowedAccountTypes != AllowedAccountTypes::ALL) {
            error("Nieprawidłowy typ konta");
        }
        $defaultUid = $this->defaultUid ?? $this->user['uid'];
        foreach ($this->user['characters'] as $character) {
            if ($character['uid'] == $defaultUid) {
                return $this->createSingleOptionTexWithInputField($character['uid'], $character['username']);
            }
        }

        error("Nie udało się odnaleźć konta.");
    }

    private function createSingleOptionText(): string {
        switch ($this->allowedAccountTypes) {
            case AllowedAccountTypes::ALL:
                return $this->createSingleOptionTexWithInputField($this->user['uid'], $this->user['username']);
            case AllowedAccountTypes::PLAYER:
                return $this->createSingleOptionTexWithInputField($this->user['parent']['uid'], $this->user['parent']['username']);
            case AllowedAccountTypes::CHARACTER:
                if (count($this->user['characters']) == 1) {
                    return $this->createSingleOptionTexWithInputField($this->user['characters'][0]['uid'], $this->user['characters'][0]['username']);
                } else {
                    return $this->createSingleOptionTexWithInputField(-1, "Brak konta postaci. Utwórz konto postaci, aby móc wysyłać wiadomości na tym forum.");
                }
            default:
                error("Invalid account type: ".$this->allowedAccountTypes);
        }
    }

    private function createSingleOptionTexWithInputField($value, $text){
        return '<input type="hidden" name="changeuserbox_selectedUser" value="'.$value.'" />'.$text;
    }

    private function createOptions(): array {
        if ($this->justOneOption) {
            return [null, 1];
        }

        switch ($this->allowedAccountTypes) {
            case AllowedAccountTypes::ALL:
                return $this->createAllOptions();
            case AllowedAccountTypes::PLAYER:
                return [null, 1];
            case AllowedAccountTypes::CHARACTER:
                return $this->createCharacterOptions();
            default:
                error("Invalid account type: ".$this->allowedAccountTypes);
        }
    }

    private function createAllOptions(): array {
        $linkedAccounts = array_merge([$this->user['parent']], $this->user['characters']);
        return $this->createOptionsFor($linkedAccounts);
    }

    private function createCharacterOptions(): array {
        $linkedAccounts = $this->user['characters'];
        return $this->createOptionsFor($linkedAccounts);
    }

    private function createOptionsFor(array $linkedAccounts): array {
        $defaultUid = $this->defaultUid ?? $this->user['uid'];
        $options = '';
        foreach ($linkedAccounts as $account) {
            $selected = ($account['uid'] == $defaultUid) ? ' selected' : '';
            $options .= '<option value="'.$account['uid'].'"'.$selected.'>'.$account['username'].'</option>';
        }
        return [$options, count($linkedAccounts)];
    }

    private function createAdminOptions(): string {
        global $db;

        $options = '';
        $query = $db->simple_select("users", "uid, username, AccountType", "uid != 0", array('order_by' => 'username'));
        while($user = $db->fetch_array($query)) {
            switch ($this->allowedAccountTypes) {
                case AllowedAccountTypes::ALL:
                        $options .= '<option value="'.$user['uid'].'">'.$user['username'].'</option>';
                    break;
                case AllowedAccountTypes::PLAYER:
                    if (AccountType::from($user['AccountType']) == AccountType::PLAYER) {
                        $options .= '<option value="'.$user['uid'].'">'.$user['username'].'</option>';
                    }
                    break;
                case AllowedAccountTypes::CHARACTER:
                    if (AccountType::from($user['AccountType']) == AccountType::CHARACTER || AccountType::from($user['AccountType']) == AccountType::GM) {
                        $options .= '<option value="'.$user['uid'].'">'.$user['username'].'</option>';
                    }
                    break;
            }

        }
        return $options;
    }

    /**
     * Get the selected user account from the change user dropdown
     * @param user User data of the current user
     * @return array|null Returns the selected user account or null if not found. Returns 'fake' user account with uid -1 if it lacks proper account type for the forum.
     */
    public static function getUserAccountSelection($user) {
        global $mybb;

        $selectedUid = $mybb->get_input('changeuserbox_selectedUser', MyBB::INPUT_INT);

        $useAdminOverride = $mybb->get_input('use_admin_override', MyBB::INPUT_INT);
        if ($useAdminOverride == 1){
            global $db;

            $selectedUid = $mybb->get_input('admin_changeuserbox_selectedUser', MyBB::INPUT_INT);
            $query = $db->simple_select("users", "*", "uid = {$selectedUid}");
            return $db->fetch_array($query);
        }

        $useNPCOverride = $mybb->get_input('use_NPC_override', MyBB::INPUT_INT);
        $npcName = $mybb->get_input('NPC_name', MyBB::INPUT_STRING);
        if ($useNPCOverride == 1) {
            $npc_account = get_NPC();
            $npc_account['username'] = htmlspecialchars_uni($npcName);
            $npc_account['NPCName'] = $npc_account['username'];
            return $npc_account;
        }

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