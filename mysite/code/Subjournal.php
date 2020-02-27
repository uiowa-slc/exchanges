<?php

use SilverStripe\Forms\TextField;

class Subjournal extends Page {

	private static $db = array(
		'Identifier' => 'Varchar(155)'

	);

	private static $has_one = array(
		'Image' => 'Image'
	);

	private static $singular_name = 'Journal';
	private static $plural_name = 'Journals';

	public function getSettingsFields() {

		$fields = parent::getSettingsFields();

		$fields->addFieldToTab('Root.Settings', new TextField('Identifier'));

		return $fields;
	}

	public function FeaturedIssue(){
		$holder = $this->Children()->filter(array('ClassName' => 'IssueHolder'))->First();

		if($holder && $holder->Children()){
			return $holder->Children()->First();
		}
		

	}
}
