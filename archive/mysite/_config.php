<?php

global $project;
$project = 'mysite';

global $databaseConfig;

$databaseConfig = array(
	"type" => "MySQLDatabase",
	"server" => "localhost", 
	"username" => "root", 
	"password" => 'root',
	"database" => "exchanges",
);
/*$databaseConfig = array(
	"type" => "MySQLDatabase",
	"server" => "ebro.imu.uiowa.edu", 
	"username" => "exchanges_ss", 
	"password" => "for37G%q99", 
	"database" => "exchanges_sandbox",
);*/

// Sites running on the following servers will be
// run in development mode. See
// http://doc.silverstripe.com/doku.php?id=devmode
// for a description of what dev mode does.
Director::set_dev_servers(array(
	'localhost',
	'127.0.0.1',
));

Director::set_environment_type("dev");

error_reporting(E_ALL);

//Object::add_extension("SiteTree", "FilesystemPublisher('cache/', 'html')");
//Object::add_extension("LeftAndMain", "MyLeftAndMainDecorator");
// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.com/themes/
//SSViewer::set_theme('exocity');

HtmlEditorConfig::get('cms')->setOption('verify_html', 'false');
HtmlEditorConfig::get('cms')->setOptions(array(
	'valid_elements' => "@[id|class|style|title],#a[id|rel|rev|dir|tabindex|accesskey|type|name|href|target|title|class],-strong/-b[class],-em/-i[class],-strike[class],-u[class],#p[id|dir|class|align|style],-ol[class],-ul[class],-li[class],br,img[id|dir|longdesc|usemap|class|src|border|alt=|title|width|height|align],-sub[class],-sup[class],-blockquote[dir|class],-table[border=0|cellspacing|cellpadding|width|height|class|align|summary|dir|id|style],-tr[id|dir|class|rowspan|width|height|align|valign|bgcolor|background|bordercolor|style],tbody[id|class|style],thead[id|class|style],tfoot[id|class|style],#td[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],-th[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],caption[id|dir|class],-div[id|dir|class|align|style],-span[class|align|style],-pre[class|align],address[class|align],-h1[id|dir|class|align|style],-h2[id|dir|class|align|style],-h3[id|dir|class|align|style],-h4[id|dir|class|align|style],-h5[id|dir|class|align|style],-h6[id|dir|class|align|style],hr[class],dd[id|class|title|dir],dl[id|class|title|dir],dt[id|class|title|dir],@[id,style,class]",
	'extended_valid_elements' => "foo,img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],iframe[src|name|width|height|align|frameborder|marginwidth|marginheight|scrolling],object[width|height|data|type],param[name|value],map[class|name|id],area[shape|coords|href|target|alt]"
));

require_once("env.php");

Security::setDefaultAdmin("admin", "password");
?>