<?php

global $project;
$project = 'mysite';

global $database;
$database = 'exchanges';
 
// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");
//MySQLDatabase::set_connection_charset('utf8');

// Set the site locale
i18n::set_locale('en_US');

/* Paste as Plain Text By Default */
HtmlEditorConfig::get('cms')->setOption('paste_text_sticky',true);
HtmlEditorConfig::get('cms')->setOption('paste_text_sticky_default',true);

HtmlEditorConfig::get('cms')->insertButtonsBefore(
    'styleselect',
    'removeformat',
    'forecolor'
);

HtmlEditorConfig::get('cms')->addButtonsToLine(2, 'sup', 'separator');

HtmlEditorConfig::get('cms')->setOption(
    'valid_elements',
	"@[id|class|style|title],a[id|rel|rev|dir|tabindex|accesskey|type|name|href|target|title"
		. "|class],-strong/-b[class],-em/-i[class],-strike[class],-u[class],#p[id|dir|class|align|style],-ol[class],"
		. "-ul[class],-li[class],br,img[id|dir|longdesc|usemap|class|src|border|alt=|title|width|height|align|data*],"
		. "-sub[class],-sup[class],-blockquote[dir|class],-cite[dir|class|id|title],"
		. "-table[cellspacing|cellpadding|width|height|class|align|summary|dir|id|style],"
		. "-tr[id|dir|class|rowspan|width|height|align|valign|bgcolor|background|bordercolor|style],"
		. "tbody[id|class|style],thead[id|class|style],tfoot[id|class|style],"
		. "#td[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],"
		. "-th[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],caption[id|dir|class],"
		. "-div[id|dir|class|align|style],-span[class|align|style],-pre[class|align],address[class|align],"
		. "-h1[id|dir|class|align|style],-h2[id|dir|class|align|style],-h3[id|dir|class|align|style],"
		. "-h4[id|dir|class|align|style],-h5[id|dir|class|align|style],-h6[id|dir|class|align|style],hr[class],"
		. "dd[id|class|title|dir],dl[id|class|title|dir],dt[id|class|title|dir],"
		. "abbr[title]"
	);

$htmlEditor = HtmlEditorConfig::get('cms');

//print_r($htmlEditor);

if(Director::isLive()) {
	Director::forceSSL();
}
Authenticator::unregister('MemberAuthenticator');
Authenticator::set_default_authenticator('SAMLAuthenticator');

