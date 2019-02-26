<?php

use SilverStripe\Blog\Model\BlogCategory;
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

	function getCMSFields() {

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

	public function FeaturedCategories() {
    	return $this->getManyManyComponents('FeaturedCategories')->sort('SortOrder');
	}


}