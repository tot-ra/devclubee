<?php
/**
 * Configuration class. Stores all sensitive info, including general passwords, DB connections etc.
 */

define('sys_url', "https://localhost/devclubee/");
define('sys_url_rel', "/devclubee/");

ini_set('display_errors', 1);
error_reporting(-1);

class SiteConfig extends Gratheon\Core\Config {
	public $routes = array(
		'front'  => '/Gratheon/Devclub'
	);
	public $db = array(
		0 => array(
			'engine'    => 'Mysqli',
			'server'    => 'localhost',
			'database'  => 'root',
			'login'     => '',
			'password'  => ''
		)
	);
}
