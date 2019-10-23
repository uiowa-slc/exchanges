<?php

use SilverStripe\Blog\Model\BlogCategory;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
class HomePage extends Page {

	private static $db = array(

	);

	private static $has_one = array(
	);

	private static $many_many = array(
		'FeaturedCategories' => BlogCategory::class
	);
	private static $many_many_extraFields = array(
		'FeaturedCategories'=>array(
			'SortOrder'=>'Int'
		)
	);
	private static $icon_class = 'font-icon-p-home';

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		//$fields->renameField('Content', 'Right side content (e.g., "What we\'re reading)');
		$fields->removeByName('Content');
		$fields->removeByName('LearnMorePageID');//inherited from ExpressHomePage, I guess
		$fields->removeByName('Metadata');
		$fields->removeByName('Carousel');
		$fields->removeByName('Quicklinks');
		$fields->removeByName('Features');

		$conf=GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$conf->removeComponentsByType($conf->getComponentByType(GridFieldAddNewButton::class));		
		// $fields->addFieldToTab('Root.Main', 
  //           new GridField('FeaturedCategories', 'Featured Categories', $this->FeaturedCategories(), $conf)
  //       );

		//$treedropdownfield = new TreeDropdownField("FeaturedIssueID", "Newest/Featured Issue", "SiteTree");
		//$fields->addFieldToTab('Root.Main', $treedropdownfield);

		return $fields;
	}

	public function FeaturedIssue(){
		return IssueHolder::get()->Last()->Children()->Last();
	}

	public function FeaturedCategories() {
    	return $this->getManyManyComponents('FeaturedCategories')->sort('SortOrder');
	}


}