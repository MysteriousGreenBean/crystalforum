<?php

if(!defined('IN_MYBB'))
	die('This file cannot be accessed directly.');


// the following is a bit of a compatibility fix at the cost of some performance; enabled by default
// set to 0 to disable
define('PHPTPL_TEMPLATE_CACHE_CHECK', 1);

$plugins->add_hook('global_start', 'phptpl_run');
$plugins->add_hook('xmlhttp', 'phptpl_run');
// TODO: need to set $GLOBALS['tplvars'] to blank array

function phptpl_info()
{
	return array(
		'name'			=> 'Template Conditionals',
		'description'	=> 'Allows you to use PHP conditionals in templates.  This is the &quot;safe&quot; variant of the <em>PHP and Conditionals in Templates</em> plugin.',
		'website'		=> 'http://mybbhacks.zingaburga.com/',
		'author'		=> 'ZiNgA BuRgA',
		'authorsite'	=> 'http://zingaburga.com/',
		'version'		=> '1.9',
		'compatibility'	=> '1*',
		'guid'			=> ''
	);
}

function phptpl_run() {
	global $templates;
	if(!defined('IN_ADMINCP') && is_object($templates))
	{
		if(PHPTPL_TEMPLATE_CACHE_CHECK) {
			$code = '
				$r = parent::get($title, $eslashes, $htmlcomments);
				if(!isset($this->parsed_cache[$title]) || $this->parsed_cache[$title][0] != $r)
				{
					$this->parsed_cache[$title] = array($r, $r);
					phptpl_parsetpl($this->parsed_cache[$title][1]);
				}
				return $this->parsed_cache[$title][1];
			';
		} else {
			$code = '
				if(!isset($this->parsed_cache[$title]))
				{
					$this->parsed_cache[$title] = parent::get($title, $eslashes, $htmlcomments);
					phptpl_parsetpl($this->parsed_cache[$title]);
				}
				return $this->parsed_cache[$title];
			';
		}
		// gain control of $templates object
		eval('
			class phptpl_templates extends '.get_class($templates).'
			{
				function __construct(&$oldtpl)
				{
					foreach(get_object_vars($oldtpl) as $var => $val)
						$this->$var = $val;
					
					$this->parsed_cache = array();
				}
				function get($title, $eslashes=1, $htmlcomments=1)
				{
					// $htmlcomments unnecessary - we\'ll now simply ignore it
					if($eslashes) {'.$code.'}
					else
						return parent::get($title, $eslashes, $htmlcomments);
				}
			}
		');
		$templates = new phptpl_templates($templates);
	}
}

function phptpl_parsetpl(&$ourtpl) {
	return tplcond::parsetpl($ourtpl);
}
function phptpl_eval_expr($s) {
	return tplcond::eval_expr($s);
}
function phptpl_eval_text($s) {
	return tplcond::eval_text($s);
}

class tplcond {
	static public $if_stack;
	static public $_expr_unesc;
	static function parsetpl(&$ourtpl)
	{
		self::$if_stack = array();
		if(function_exists('preg_replace_callback_array')) {
			$ourtpl = preg_replace_callback_array(array(
				'#\<((?:else)?if\s+(.*?)\s+then|else\s*/?|/if)\>#si' => function($m) {
					return tplcond::iif($m[1], $m[2]);
				},
				'#\<func (htmlspecialchars|htmlspecialchars_uni|intval|floatval|urlencode|rawurlencode|addslashes|stripslashes|trim|crc32|ltrim|rtrim|chop|md5|nl2br|sha1|strrev|strtoupper|strtolower|my_strtoupper|my_strtolower|alt_trow|get_friendly_size|filesize|strlen|my_strlen|my_wordwrap|random_str|unicode_chr|bin2hex|str_rot13|str_shuffle|strip_tags|ucfirst|ucwords|basename|dirname|unhtmlentities)\>#i' => function($m) {
					return '".'.$m[1].'("';
				},
				'#\</func\>#i' => function() {
					return '")."';
				},
				'#\<template\s+([a-z0-9_ \-+!(),.]+)(\s*/)?\>#i' => function($m) {
					return $GLOBALS['templates']->get($m[1]);
				},
				'#\<\?=(.*?)\?\>#s' => function($m) {
					return '".strval('.self::expr_parse($m[1]).')."';
				},
				'#\<setvar\s+([a-z0-9_\-+!(),.]+)\>(.*?)\</setvar\>#i' => function($m) {
					return '".(($GLOBALS["tplvars"][\''.$m[1].'\'] = ('.self::expr_parse($m[2]).'))?"":"")."';
				}
			), $ourtpl);
		} else {
			$ourtpl = preg_replace(array(
				'#\<((?:else)?if\s+(.*?)\s+then|else\s*/?|/if)\>#sie', // note that this relies on preg_replace working in a forward order
				'#\<func (htmlspecialchars|htmlspecialchars_uni|intval|floatval|urlencode|rawurlencode|addslashes|stripslashes|trim|crc32|ltrim|rtrim|chop|md5|nl2br|sha1|strrev|strtoupper|strtolower|my_strtoupper|my_strtolower|alt_trow|get_friendly_size|filesize|strlen|my_strlen|my_wordwrap|random_str|unicode_chr|bin2hex|str_rot13|str_shuffle|strip_tags|ucfirst|ucwords|basename|dirname|unhtmlentities)\>#i',
				'#\</func\>#i',
				'#\<template\s+([a-z0-9_ \-+!(),.]+)(\s*/)?\>#ie',
				'#\<\?=(.*?)\?\>#se',
				'#\<setvar\s+([a-z0-9_\-+!(),.]+)\>(.*?)\</setvar\>#ie',
			), array(
				'self::iif(\'$1\', \'$2\')',
				'".$1("',
				'")."',
				'$GLOBALS[\'templates\']->get(\'$1\')',
				'\'".strval(\'.self::expr_parse(\'$1\').\')."\'',
				'\'".(($GLOBALS["tplvars"]["$1"] = (\'.self::expr_parse(\'$2\').\'))?"":"")."\'',
			), $ourtpl);
		}
	}

	static function iif($s, $e)
	{
		if($s[0] == '/') {
			// end if tag
			$last = array_pop(self::$if_stack);
			$suf = str_repeat(')', (int)substr($last, 1));
			if($last[0] == 'i')
				$suf = ':""'.$suf;
			return '"'.$suf.')."';
		} else {
			$s = strtolower(substr($s, 0, strpos($s, ' ')));
			if($s == 'if') {
				self::$if_stack[] = 'i0';
				return '".(('.self::expr_parse($e).')?"';
			} elseif($s == 'elseif') {
				$last = array_pop(self::$if_stack);
				$last = 'i'.((int)substr($last, 1) + 1);
				self::$if_stack[] = $last;
				return '":(('.self::expr_parse($e).')?"';
			} else {
				$last = array_pop(self::$if_stack);
				$last[0] = 'e';
				self::$if_stack[] = $last;
				return '":"';
			}
		}
	}

	static function expr_parse($str)
	{
		// unescapes the slashes added by $templates->get(), plus addslashes() during preg_replace()
		$str = strtr($str, self::$_expr_unesc);
		
		if(self::is_safe_expression($str))
			return $str;
		else
			return 'false';
	}

	// also disables heredoc + array/object typecasting + braces in double-quoted strings
	static function is_safe_expression($s)
	{
		// remove all strings
		$string_preg = '([\'"])(|\\\\\\\\|.*?([^\\\\]|[^\\\\](\\\\\\\\)+))\\1';
		preg_match_all('~'.$string_preg.'~s', $s, $strings, PREG_SET_ORDER);
		
		// check double-quote strings
		foreach($strings as &$strdef) {
			if($strdef[1] == '"') {
				// check $strdef[2]
				// we'll only do a simple check
				if(strpos($strdef[2], '{') !== false) return false;
			}
		}
		
		// block string function calls, e.g. 'exec'()
		if(preg_match('~'.$string_preg.'\s*\(~', $s)) return false;
		
		// remove safe "equal" expressions and closed comments
		// use '^' character as substitution to try to prevent possible 'some==badfunc()' type exploits
		$check = strtr(preg_replace(array('~'.$string_preg.'~s', '~/\\*.*?\\*/~s'), ' ', $s), array('>=' => '^', '<=' => '^', '=>' => '^', '===' => '^', '!==' => '^', '==' => '^', '!=' => '^'));
		
		// block certain characters + operators
		if(preg_match('~([+\-/]{2}|[`#="\']|/\*|\<{3}|\?\>|\(array\)|\(object\))~i', $check)) return false;
		// blocking hanging quotes will actually also block an exploit
		// eg $a = "".strval(1).").".whatever.(".strval(1).")."";
		
		// block new, exit/die, include/require + constants
		if(preg_match('~(?<![a-z0-9_$])(?:new|exit|die|eval|include|include_once|require|require_once|__file__|__dir__|__line__|__function__|__class__|__method__|php_version|php_os|php_sapi|default_include_path|pear_install_dir|pear_extension_dir|php_extension_dir|php_prefix|php_bindir|php_libdir|php_datadir|php_sysconfdir|php_localstatedir|php_config_file_path|php_config_file_scan_dir|php_shlib_suffix|mybb_root)(?![a-z0-9_$])~i', $check)) return false;
		
		// block all array index calls and $a{0}() type calls
		if(preg_match('~[\]})]\s*\(~', $check)) return false; // note that this expression may block "{[statement]} ([statement])" type structures; this shouldn't be an issue with template conditionals, but I guess a workaround, if it does eventually be an issue, is to insert something like a "0+" before the bracket to trick the parser
		
		// check functions (implicitly blocks variable functions)
		//something = preg_replace_callback('~((?:\$|-\>\s*|[\\\\a-zA-Z0-9_]+\s*\:\:\s*)?[\\\\a-zA-Z0-9_]+)(\s*\()~', array(self, 'safe_function_filter'), $check); // we can't do a straight replace because we only have a check string!
		preg_match_all('~((\$|-\>\s*|[\\\\a-zA-Z0-9_]+\s*\:\:\s*)?[\\\\a-zA-Z0-9_]+)\s*\(~', $check, $matches);
		$allowed_funcs = self::get_allowed_funcs();
		foreach($matches[1] as &$func) {
			if(!isset($allowed_funcs[strtr($func, array(' '=>'',"\n"=>'',"\r"=>'',"\t"=>''))])) return false;
		}
		
		return true;
	}
	
	static function &get_allowed_funcs()
	{
		static $allowed_funcs = null;
		if(!isset($allowed_funcs)) {
			$allowed_funcs = array_flip(explode("\n", str_replace("\r", '', @file_get_contents(MYBB_ROOT.'inc/plugins/phptpl_allowed_funcs.txt'))));
		}
		return $allowed_funcs;
	}

	static function eval_expr($__s)
	{
		if(self::is_safe_expression($__s))
			return eval('return ('.$__s.');');
		else
			return null;
	}

	static function eval_text($__s)
	{
		// simulate $templates->get()
		$__s = strtr($__s, array('\\' => '\\\\', '"' => '\\"', "\0" => ''));
		
		self::parsetpl($__s);
		$__s = preg_replace_callback('~\\\\\\$([a-zA-Z_][a-zA-Z_0-9]*)((-\\>[a-zA-Z_][a-zA-Z_0-9]*|\\[(\'|\\\\"|)[a-zA-Z_ 0-9]+\\4\\])*)~e', function($m) {
			return '$'.$m[1].strtr($m[2], array('\\"' => "'")); // rewrite double-quote to single quotes, cos it's faster
		}, strtr($__s, array('$' => '\\$')));
		return eval('return "'.$__s.'";');
	}
	
}


if(function_exists('preg_replace_callback_array'))
	// for PHP 7 ver, we don't need to unescape backslashes added by eval
	tplcond::$_expr_unesc = array('\\"' => '"', '\\\\' => '\\');
else
	tplcond::$_expr_unesc = array('\\\\"' => '"', '\\\\' => '\\');

?>