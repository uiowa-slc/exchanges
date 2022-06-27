<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\View\Parsers\URLSegmentFilter;

class Subjournal extends Page {

	private static $db = array(
		'Identifier' => 'Varchar(155)',
        'UseImageForLogo' => 'Boolean',
        'HideSideBySide' => 'Boolean'

	);

	private static $has_one = array(
		'Image' => 'Image'
	);

	public function getSettingsFields() {

		$fields = parent::getSettingsFields();
		$fields->addFieldToTab('Root.Settings', TextField::create('Identifier')->setDescription('Unique identifier for this subjournal, used for automatically pulling in CSS and image files in the frontend.'));
        $fields->addFieldToTab('Root.Settings', CheckboxField::create('UseImageForLogo', 'Use image file for logo')->setDescription('Uses the unique identifier to find a logo image in dist/images/[identifier]-logo.png.'));
        $fields->addFieldToTab('Root.Settings', CheckboxField::create('HideSideBySide', 'Hide side-by-side columns')->setDescription('Hides side-by-side column'));

		return $fields;
	}

	public function FeaturedIssue(){
		$holder = $this->IssueHolder();

		if($holder && $holder->Children()){
			return $holder->Children()->First();
		}
	}

	public function IssueHolder(){
		$holder = $this->Children()->filter(array('ClassName' => 'IssueHolder'))->First();
		return $holder;

	}
}
