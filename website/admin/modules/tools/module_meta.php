<?php
/**
 * MyBB 1.8
 * Copyright 2014 MyBB Group, All Rights Reserved
 *
 * Website: http://www.mybb.com
 * License: http://www.mybb.com/about/license
 *
 */

// Disallow direct access to this file for security reasons
if (!defined('IN_MYBB')) {
    die(
        'Direct initialization of this file is not allowed.<br /><br />Please make sure IN_MYBB is defined.'
    );
}

/**
 * @return bool true
 */
function tools_meta()
{
    global $page, $lang, $plugins;

    $sub_menu = [];
    $sub_menu['10'] = [
        'id' => 'system_health',
        'title' => $lang->system_health,
        'link' => 'index.php?module=tools-system_health',
    ];
    $sub_menu['20'] = [
        'id' => 'cache',
        'title' => $lang->cache_manager,
        'link' => 'index.php?module=tools-cache',
    ];
    $sub_menu['30'] = [
        'id' => 'tasks',
        'title' => $lang->task_manager,
        'link' => 'index.php?module=tools-tasks',
    ];
    $sub_menu['40'] = [
        'id' => 'recount_rebuild',
        'title' => $lang->recount_and_rebuild,
        'link' => 'index.php?module=tools-recount_rebuild',
    ];
    $sub_menu['50'] = [
        'id' => 'php_info',
        'title' => $lang->view_php_info,
        'link' => 'index.php?module=tools-php_info',
    ];
    $sub_menu['60'] = [
        'id' => 'backupdb',
        'title' => $lang->database_backups,
        'link' => 'index.php?module=tools-backupdb',
    ];
    $sub_menu['70'] = [
        'id' => 'optimizedb',
        'title' => $lang->optimize_database,
        'link' => 'index.php?module=tools-optimizedb',
    ];
    $sub_menu['80'] = [
        'id' => 'file_verification',
        'title' => $lang->file_verification,
        'link' => 'index.php?module=tools-file_verification',
    ];

    $sub_menu = $plugins->run_hooks('admin_tools_menu', $sub_menu);

    $page->add_menu_item(
        $lang->tools_and_maintenance,
        'tools',
        'index.php?module=tools',
        50,
        $sub_menu
    );

    return true;
}

/**
 * @param string $action
 *
 * @return string
 */
function tools_action_handler($action)
{
    global $page, $lang, $plugins;

    $page->active_module = 'tools';

    $actions = [
        'php_info' => ['active' => 'php_info', 'file' => 'php_info.php'],
        'tasks' => ['active' => 'tasks', 'file' => 'tasks.php'],
        'backupdb' => ['active' => 'backupdb', 'file' => 'backupdb.php'],
        'optimizedb' => ['active' => 'optimizedb', 'file' => 'optimizedb.php'],
        'cache' => ['active' => 'cache', 'file' => 'cache.php'],
        'recount_rebuild' => [
            'active' => 'recount_rebuild',
            'file' => 'recount_rebuild.php',
        ],
        'maillogs' => ['active' => 'maillogs', 'file' => 'maillogs.php'],
        'mailerrors' => ['active' => 'mailerrors', 'file' => 'mailerrors.php'],
        'adminlog' => ['active' => 'adminlog', 'file' => 'adminlog.php'],
        'modlog' => ['active' => 'modlog', 'file' => 'modlog.php'],
        'warninglog' => ['active' => 'warninglog', 'file' => 'warninglog.php'],
        'spamlog' => ['active' => 'spamlog', 'file' => 'spamlog.php'],
        'system_health' => [
            'active' => 'system_health',
            'file' => 'system_health.php',
        ],
        'file_verification' => [
            'active' => 'file_verification',
            'file' => 'file_verification.php',
        ],
        'statistics' => ['active' => 'statistics', 'file' => 'statistics.php'],
    ];

    $actions = $plugins->run_hooks('admin_tools_action_handler', $actions);

    $sub_menu = [];
    $sub_menu['10'] = [
        'id' => 'adminlog',
        'title' => $lang->administrator_log,
        'link' => 'index.php?module=tools-adminlog',
    ];
    $sub_menu['20'] = [
        'id' => 'modlog',
        'title' => $lang->moderator_log,
        'link' => 'index.php?module=tools-modlog',
    ];
    $sub_menu['30'] = [
        'id' => 'maillogs',
        'title' => $lang->user_email_log,
        'link' => 'index.php?module=tools-maillogs',
    ];
    $sub_menu['40'] = [
        'id' => 'mailerrors',
        'title' => $lang->system_mail_log,
        'link' => 'index.php?module=tools-mailerrors',
    ];
    $sub_menu['50'] = [
        'id' => 'warninglog',
        'title' => $lang->user_warning_log,
        'link' => 'index.php?module=tools-warninglog',
    ];
    $sub_menu['60'] = [
        'id' => 'spamlog',
        'title' => $lang->spam_log,
        'link' => 'index.php?module=tools-spamlog',
    ];
    $sub_menu['70'] = [
        'id' => 'statistics',
        'title' => $lang->statistics,
        'link' => 'index.php?module=tools-statistics',
    ];

    $sub_menu = $plugins->run_hooks('admin_tools_menu_logs', $sub_menu);

    if (!isset($actions[$action])) {
        $page->active_action = $action = 'system_health';
    }

    $sidebar = new SidebarItem($lang->logs);
    $sidebar->add_menu_items($sub_menu, $actions[$action]['active']);

    $page->sidebar .= $sidebar->get_markup();

    if (isset($actions[$action])) {
        $page->active_action = $actions[$action]['active'];
        return $actions[$action]['file'];
    } else {
        return 'system_health.php';
    }
}

/**
 * @return array
 */
function tools_admin_permissions()
{
    global $lang, $plugins;

    $admin_permissions = [
        'system_health' => $lang->can_access_system_health,
        'cache' => $lang->can_manage_cache,
        'tasks' => $lang->can_manage_tasks,
        'backupdb' => $lang->can_manage_db_backup,
        'optimizedb' => $lang->can_optimize_db,
        'recount_rebuild' => $lang->can_recount_and_rebuild,
        'adminlog' => $lang->can_manage_admin_logs,
        'modlog' => $lang->can_manage_mod_logs,
        'maillogs' => $lang->can_manage_user_mail_log,
        'mailerrors' => $lang->can_manage_system_mail_log,
        'warninglog' => $lang->can_manage_user_warning_log,
        'spamlog' => $lang->can_manage_spam_log,
        'php_info' => $lang->can_view_php_info,
        'file_verification' => $lang->can_manage_file_verification,
        'statistics' => $lang->can_view_statistics,
    ];

    $admin_permissions = $plugins->run_hooks(
        'admin_tools_permissions',
        $admin_permissions
    );

    return [
        'name' => $lang->tools_and_maintenance,
        'permissions' => $admin_permissions,
        'disporder' => 50,
    ];
}
