<?php
/**
 * MyBB 1.8
 * Copyright 2014 MyBB Group, All Rights Reserved
 *
 * Website: http://www.mybb.com
 * License: http://www.mybb.com/about/license
 *
 */

class templates
{
    /**
     * The total number of templates.
     *
     * @var int
     */
    public $total = 0;

    /**
     * The template cache.
     *
     * @var array
     */
    public $cache = [];

    /**
     * Array of templates loaded that were not loaded via the cache
     *
     * @var array
     */
    public $uncached_templates = [];

    /**
     * Cache the templates.
     *
     * @param string $templates A list of templates to cache.
     */
    function cache($templates)
    {
        global $db, $theme;
        $sql = $sqladd = '';
        $names = explode(',', $templates);
        foreach ($names as $key => $title) {
            $sql .= " ,'" . trim($title) . "'";
        }

        $query = $db->simple_select(
            'templates',
            'title,template',
            "title IN (''$sql) AND sid IN ('-2','-1','" .
                (int) $theme['templateset'] .
                "')",
            ['order_by' => 'sid', 'order_dir' => 'asc']
        );
        while ($template = $db->fetch_array($query)) {
            $this->cache[$template['title']] = $template['template'];
        }
    }

    function get_dev_folder($templateset)
    {
        if (isset($this->cache[$templateset])) {
            $foundFolder = $this->cache[$templateset];
            return $foundFolder;
        }

        $templates_path = MYBB_ROOT . 'templates/';
        $pattern = $templates_path . $templateset . '_*';
        $folders = glob($pattern, GLOB_ONLYDIR);

        if (!empty($folders)) {
            $foundFolder = $folders[0];
            $this->cache[$templateset] = $foundFolder;
            return $foundFolder;
        }
    }

    /**
     * Gets templates.
     *
     * @param string $title The title of the template to get.
     * @param boolean|int $eslashes True if template contents must be escaped, false if not.
     * @param boolean|int $htmlcomments True to output HTML comments, false to not output.
     * @return string The template HTML.
     */
    function get($title, $eslashes = 1, $htmlcomments = 1)
    {
        global $db, $theme, $mybb;

        if ($mybb->settings['developermode'] == '1') {
            $templateset = $theme['templateset'];

            $templateset_path = $this->get_dev_folder($templateset);
            $filepath = $this->tryToGetFilePath($title, $templateset_path);

            if (empty($filepath)) {
                $filepath = $this->tryToGetFilePath(
                    $title,
                    MYBB_ROOT . '/templates/global_templates'
                );
            }
            if (empty($filepath)) {
                $filepath = $this->tryToGetFilePath(
                    $title,
                    MYBB_ROOT . '/templates/master_templates'
                );
            }

            if (!empty($filepath)) {
                $this->cache[$title] = file_get_contents($filepath);
            } else {
                $this->cache[$title] = '';
            }
        }

        if (!isset($this->cache[$title])) {
            // Only load master and global templates if template is needed in Admin CP
            if (empty($theme['templateset'])) {
                $query = $db->simple_select(
                    'templates',
                    'template',
                    "title='" .
                        $db->escape_string($title) .
                        "' AND sid IN ('-2','-1')",
                    ['order_by' => 'sid', 'order_dir' => 'DESC', 'limit' => 1]
                );
            } else {
                $query = $db->simple_select(
                    'templates',
                    'template',
                    "title='" .
                        $db->escape_string($title) .
                        "' AND sid IN ('-2','-1','" .
                        (int) $theme['templateset'] .
                        "')",
                    ['order_by' => 'sid', 'order_dir' => 'DESC', 'limit' => 1]
                );
            }

            $gettemplate = $db->fetch_array($query);
            if ($mybb->settings['developermode'] == '1') {
                $this->uncached_templates[$title] = $title;
            }

            if (empty($gettemplate)) {
                $gettemplate = ['template' => ''];
            }

            $this->cache[$title] = $gettemplate['template'];
        }

        $template = $this->cache[$title];

        if ($htmlcomments && $template !== false) {
            if ($mybb->settings['tplhtmlcomments'] == 1) {
                $template =
                    '<!-- start: ' .
                    htmlspecialchars_uni($title) .
                    " -->\n{$template}\n<!-- end: " .
                    htmlspecialchars_uni($title) .
                    ' -->';
            } else {
                $template = "\n{$template}\n";
            }
        }

        if ($eslashes) {
            $template = str_replace("\\'", "'", addslashes($template));
        }
        return $template;
    }

    function tryToGetFilePath($title, $templateset_path)
    {
        $folder_name = $this->get_folder_name($title);
        $folderPath = $templateset_path . '/' . $folder_name;

        if (!is_dir($folderPath)) {
            $folderPath = $templateset_path . '/ungrouped';
        }

        if (file_exists($folderPath . '/' . $title . '.html')) {
            $filepath = $folderPath . '/' . $title . '.html';
        } else {
            $filepath = '';
        }

        return $filepath;
    }

    function get_folder_name($title)
    {
        if ($title == 'headerinclude') {
            return 'header';
        }

        $parts = explode('_', $title);
        $folder_name = $parts[0];
        return $folder_name;
    }

    /**
     * Prepare a template for rendering to a variable.
     *
     * @param string $template The name of the template to get.
     * @param boolean $eslashes True if template contents must be escaped, false if not.
     * @param boolean $htmlcomments True to output HTML comments, false to not output.
     * @return string The eval()-ready PHP code for rendering the template
     */
    function render($template, $eslashes = true, $htmlcomments = true)
    {
        return 'return "' .
            $this->get($template, $eslashes, $htmlcomments) .
            '";';
    }

    /**
     * Fetch a template directly from the install/resources/mybb_theme.xml directory if it exists (DEVELOPMENT MODE)
     *
     * @param string $title
     * @return string|bool
     */
    function dev_get($title)
    {
        static $template_xml;

        if (!$template_xml) {
            if (@file_exists(MYBB_ROOT . 'install/resources/mybb_theme.xml')) {
                $template_xml = simplexml_load_file(
                    MYBB_ROOT . 'install/resources/mybb_theme.xml'
                );
            } else {
                return false;
            }
        }
        $res = $template_xml->xpath("//template[@name='{$title}']");
        return $res[0];
    }
}
