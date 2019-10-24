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
	public function getFeaturedIssue() {
        // Add hard-coded class names of additional journals to be
        // included in the Featured Issue pool on the home page.
        $holderClasses = array( 'IssueHolder' );
        $candidateIssues = array();
        $featureIssue = NULL;

        // find all requested IssueHolder classes
        foreach( $holderClasses as $holderClass ) {
            array_push( $candidateIssues, $holderClass::FeaturedIssue() );
        }

        $featureIDs = array();

        // build array of candidate issue record IDs
        foreach( $candidateIssues as $issue ) {
            array_push( $featureIDs, $issue->ID );
        }

        // find Featured Issue using most recent Issue from candidate issues
        $featureIssue = Issue::get()
            ->filter( 'ID', $featureIDs )
            ->sort('Created DESC')
            ->First();

        return $featureIssue;
	}
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
