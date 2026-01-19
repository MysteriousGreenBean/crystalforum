<?php
define("IN_MYBB", 1);

class DiceRolls {

}

class DiceRollData {
    public int $count;
    public int $type;
    public int $index;
    public int $uid;
    public int $timestamp;

    public function __construct(int $count, int $type, int $index, int $uid, int $timestamp) {
        $this->count = $count;
        $this->type = $type;
        $this->index = $index;
        $this->uid = $uid;
        $this->timestamp = $timestamp;
    }
}