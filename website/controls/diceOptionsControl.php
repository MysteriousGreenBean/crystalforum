<?php
define("IN_MYBB", 1);
require_once "./global.php";

class DiceOptionsControl
{
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

    public static function render()
    {
        global $templates;
        eval("\$diceOptions = \"".$templates->get("diceOptions")."\";");

        return $diceOptions;
    }
}