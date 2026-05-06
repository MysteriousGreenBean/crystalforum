<?php
function task_rebuildStats($task)
{
    require_once MYBB_ROOT."inc/functions_rebuild.php";
    rebuild_stats();
}