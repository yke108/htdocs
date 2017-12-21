<?php
return array(
	'URL_MODEL' => '3',
	"LOAD_EXT_CONFIG" => 'db',

	'TMPL_PARSE_STRING' => array('__ASSETS__' => __ROOT__.'/Apps/'.MODULE_NAME.'/Assets'),

	"ADMIN_USER" => array
	(
		array("user_id" => 100001, "password" => "123456789"),
		array("user_id" => 100002, "password" => "123456789"),
		array("user_id" => 100003, "password" => "123456789"),
	),
);