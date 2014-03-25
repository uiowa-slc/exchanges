<?php

class NewsPage extends Page {
	private static $default_parent = 'NewsHolderPage';
	private static $can_be_root = false;
	private static $icon = "themes/express/images/icons/sitetree_images/news.png";
	public $pageIcon =  "images/icons/sitetree_images/news.png";

	private static $db = array(
		'Date' => 'SS_Datetime',
		'Abstract' => 'Text',
		'Author' => 'Varchar(255)'
	);

	private static $has_one = array(
		'Category' => 'NewsCategory'
	);

	/**
	 * Add the default for the Date being the current day.
	 */
	public function populateDefaults() {
		parent::populateDefaults();

		if(!isset($this->Date) || $this->Date === null) {
			$this->Date = SS_Datetime::now()->Format('Y-m-d H:i:s');
		}
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', $dateTimeField = /*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: new DatetimeField
NOTE: instances automatically include
			       formatting hints as placeholders and description text below the field itself.
			       If you change the date/time format of those fields, you need to adjust the hints.
			       To remove the hints, use setDescription(null) and setAttribute('placeholder', null). 
### @@@@ ########### @@@@ ###
*/new DatetimeField('Date'), 'Content');
		$dateTimeField->getDateField()->setConfig('showcalendar', true);

		$categories = NewsCategory::get()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->sort(
NOTE: ArrayList and DataList sort method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->sort('Title ASC');
		if ($categories && $categories->exists()) {
			$fields->addFieldToTab('Root.Main', new DropdownField('CategoryID', 'Category', $categories->map()), 'Content');
		}

		$fields->addFieldToTab('Root.Main', new TextareaField('Abstract'), 'Content');

		return $fields;
	}
}

class NewsPage_Controller extends Page_Controller {
	
}