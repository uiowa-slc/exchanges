<?php

class SiteConfigExtension extends DataExtension {

	private static $belongs_many_many = array(
		'FooterText' => 'HTMLText',
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('FooterText', 'Footer Text'));
		return $fields;
	}

  
}