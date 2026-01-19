<?php
define("IN_MYBB", 1);
require_once "./global.php";

class DiceOptionsControl
{
    /**
     * Renders the dice options control template.
     * @return string The rendered HTML of the dice options control.
     */
    public static function render() : string
    {
        global $templates;
        return $templates->eval("diceControl");
    }

    public static function getRollsHtml(array $rollsData) : string
    {
        global $templates;
        $rollsHtml = '';
        foreach ($rollsData as $rollData) {
            $rollHtml = $templates->eval("diceRollRow", [
                'dice_count' => $rollData['count'],
                'dice_type' => $rollData['type'],
                'roll_index' => $rollData['index']
            ]);
            $rollsHtml .= $rollHtml;
        }
        return $rollsHtml;
    }
}