<?php
define("IN_MYBB", 1);
require_once "./global.php";
require_once __DIR__."/../enums/AccountType.php";
require_once __DIR__."/../enums/AllowedAccountTypes.php";

class ChangeUserControl {
    private AllowedAccountTypes $allowedAccountTypes = AllowedAccountTypes::ALL;
    private array $user;
    private ?int $defaultUid = null;
    private bool $justDropdown = false;

    private function __construct(array $user) {
        $this->user = $user;
    }

    /**
     * Prepare ChangeUserControl for a specific user
     * @param array $user for whom the dropdown is being prepared
     * @return ChangeUserControl
     */
    public static function prepareFor(array $user): ChangeUserControl {
        return new ChangeUserControl($user);
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
        $this->defaultUid = $defaultUid;
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
        $singleOptionText = $this->createSingleOptionText();
        eval("\$changeuserboxDropdown = \"".$templates->get("changeuserboxDropdown")."\";");
        eval("\$loginbox = \"".$templates->get("changeuserbox")."\";");
        return $this->justDropdown ? $changeuserboxDropdown : $loginbox;
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