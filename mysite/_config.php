<?php

use SilverStripe\Control\Director;
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;
use SilverStripe\Security\Member;
use SilverStripe\Security\PasswordValidator;
// remove PasswordValidator for SilverStripe 5.0
$validator = new PasswordValidator();

$validator->minLength(8);
$validator->checkHistoricalPasswords(6);
Member::set_password_validator($validator);

TinyMCEConfig::get('cms')
	->addButtonsToLine(1, 'styleselect')
	->setOption('importcss', true);

HtmlEditorConfig::get('cms')->insertButtonsAfter('code', 'superscript');

if (Director::isLive()) {
	Director::forceSSL();
}
HtmlEditorConfig::get('cms')->setOption(
	'extended_valid_elements',
	'audio[*]',
	'video[*]'
);
