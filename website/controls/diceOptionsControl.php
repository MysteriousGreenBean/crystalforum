<?php
define("IN_MYBB", 1);
require_once "./global.php";

class DiceOptionsControl
{
    /**
     * Loads dice definitions from the database.
     * @return string JSON encoded string of dice definitions.
     */
    public static function loadDefinitions(): string
    {
        global $db;
        $query = $db->simple_select('dicedefinitions');
        $definitions = [];
        while ($row = $db->fetch_array($query)) {
            $definition = json_decode($row['Definition'], true);
            $definition['id'] = $row['ID'];
            $definition['name'] = $row['Name'];
            $definitions[] = $definition;
        }

        if (empty($definitions)) {
            return '[]';
        }
        return json_encode($definitions);
    }

    /**
     * Renders the dice options control template.
     * @return string The rendered HTML of the dice options control.
     */
    public static function render() : string
    {
        global $templates;
        return $templates->eval("diceOptions");
    }

    /**
     * Collects dice roll input data from the request and formats it into a JSON string.
     * @param int $uid The user ID of the user making the dice rolls.
     * @return string JSON encoded string of the dice roll data.
     */
    public static function getDiceInputData(int $uid) : string
    {
        global $mybb;
        $diceRollCount = $mybb->get_input('total_dice_rows', MyBB::INPUT_INT);
        $diceRollData = [];
        for ($i = 1; $i <= $diceRollCount; $i++) {
            $rollIndex = $i - 1;
            $diceCount = $mybb->get_input('dice_count_' . $i, MyBB::INPUT_INT);
            $diceType = $mybb->get_input('dice_type_' . $i, MyBB::INPUT_INT);
            $diceRollData[$rollIndex] = [
                'count' => $diceCount,
                'type' => $diceType,
                'index' => $rollIndex,
                'uid' => $uid,
                'timestamp' => TIME_NOW 
            ];

            if ($diceType === 0) {
                $diceRollData[$rollIndex]['custom']['sides'] = $mybb->get_input('dice_custom_' . $i, MyBB::INPUT_INT);
            }
        }

        return json_encode($diceRollData);
    }
}