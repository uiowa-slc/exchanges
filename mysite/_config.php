<?php

global $project;
$project = 'mysite';

$path = realpath(dirname(__FILE__));
$path = str_replace('mysite', '', $path);
global $databaseConfig;

MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('simple');

// Set the site locale
i18n::set_locale('en_US');

error_reporting(E_ALL);

Object::add_extension("GridFieldDetailForm_ItemRequest","GridFieldPublish");

// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();
Object::add_extension('SiteConfig', 'CustomSiteConfig');
