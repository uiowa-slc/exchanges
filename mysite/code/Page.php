<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Control\Session;
use SilverStripe\Blog\Model\BlogCategory;


class Page extends SiteTree {

	
	private static $db = array(
		'DropdownMenu' => 'Boolean',
	);

	private static $has_one = array(
	);

	private static $has_many = array(

	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
    	$fields->addFieldToTab("Root.Main", new CheckboxField ("DropdownMenu", "Show dropdown menu for this page"), 'Content');
		return $fields;
	}

	public function NextPage() {
		$page = Page::get()->filter(array(
				'ParentID'         => $this->ParentID,
				'Sort:GreaterThan' => $this->Sort,
			))                          ->First();

		return $page;
	}
	public function PreviousPage() {
		$page = Page::get()->filter(array(
				'ParentID'      => $this->ParentID,
				'Sort:LessThan' => $this->Sort,
			))                       ->Last();

		return $page;
	}
	// public function getFeaturedIssue() {
	// 	return Issue::get()->sort('Created DESC')->First();
	// }
	public function getCurrentIssue() {
		$sessionIssue = Session::get('issue');
		if (empty($sessionIssue)) {
			$currentIssue = HomePage::get()->First();
			$sessionIssue = $currentIssue->FeaturedIssue();
		}
		return $sessionIssue;
	}

	public function getAllIssues() {
		$issueArray = Issue::get();
		return $issueArray;
	}

	public function BlogCategories(){
		return BlogCategory::get()->sort('Title ASC');
	}
}
