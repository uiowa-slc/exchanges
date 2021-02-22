<?php

use SilverStripe\Blog\Model\BlogCategory;
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\ORM\ArrayList;

class Page extends SiteTree {

	private static $db = array(
		'DropdownMenu' => 'Boolean',
	);

	private static $has_one = array();
	private static $has_many = array();

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Main", new CheckboxField("DropdownMenu", "Show dropdown menu for this page"), 'Content');
		return $fields;
	}

	public function NextPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->ParentID,
			'Sort:GreaterThan' => $this->Sort,
		))->First();

		return $page;
	}
	public function PreviousPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->ParentID,
			'Sort:LessThan' => $this->Sort,
		))->Last();

		return $page;
	}
	public function PostsWithAudio() {

		$posts = BlogPost::get()->filter(array('AudioClipID:not' => 0));

		return $posts;

	}
	// Wrapper hack for missing FeaturedIssue() calls somewhere in the codebase
	public function FeaturedIssue() {
		return $this->getCurrentIssue();
	}

	public function getCurrentIssue() {
		$currentIssue = HomePage::get()->First();
		$sessionIssue = $currentIssue->FeaturedIssue();
		return $sessionIssue;
	}

	public function getAllIssues() {
		$issueArray = Issue::get();
		return $issueArray;
	}

	public function BlogCategories() {
		return BlogCategory::get()->sort('Title ASC');
	}

	public function getSubjournal() {

		if (!$this->isSubjournal()) {
			return null;
		}

		if ($this->ClassName == 'Subjournal') {
			return $this;
		}

		$ancestors = new ArrayList();
		$ancestors = $this->getAncestors();

		foreach ($ancestors as $ancestor) {
			if (strcmp($ancestor->ClassName, "Subjournal") == 0) {
				return $ancestor;
			}
		}
		return false;

	}

	public function isSubjournal() {
		$ancestors = new ArrayList();
		$ancestors = $this->getAncestors();

		if (strcmp($this->ClassName, "Subjournal") == 0) {
			return true;
		}

		foreach ($ancestors as $ancestor) {
			if (strcmp($ancestor->ClassName, "Subjournal") == 0) {
				return true;
			}
		}
		return false;
	}
}
