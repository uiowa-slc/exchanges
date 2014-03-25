<?php

global $project;
$project = 'mysite';

global $database;
$database = 'exchanges';
 
// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

MySQLDatabase::set_connection_charset('utf8');

// Set the site locale
i18n::set_locale('en_US');

/* Paste as Plain Text By Default */
HtmlEditorConfig::get('cms')->setOption('paste_text_sticky',true);
HtmlEditorConfig::get('cms')->setOption('paste_text_sticky_default',true);
HtmlEditorConfig::get('cms')->insertButtonsBefore(
    'styleselect',
    'removeformat'
);
