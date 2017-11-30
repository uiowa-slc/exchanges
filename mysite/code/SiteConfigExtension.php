<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'FooterText' => 'HTMLText',
	);

	public function updateCMSFields(FieldList $fields){
		
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('FooterText', 'Footer Text'));
	
	}

  
}