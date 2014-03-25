<?php

class NewsHolder extends Page {
	private static $allowed_children = array('NewsPage');
	private static $default_child = 'NewsPage';
	private static $icon = "themes/express/images/icons/sitetree_images/news_listing.png";
	public $pageIcon =  "images/icons/sitetree_images/news_listing.png";

	public function MenuChildren() {
		return parent::MenuChildren()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->exclude(
NOTE: ArrayList exclude method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->exclude('ClassName', 'NewsPage');
	}

	public function getCategories() {
		return NewsCategory::get()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->sort(
NOTE: ArrayList and DataList sort method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->sort('Title', 'DESC');
	}

	public function getDefaultRSSLink() {
		return $this->Link('rss');
	}

	public function Entries(){
		$entries = NewsPage::get()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->sort(
NOTE: ArrayList and DataList sort method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->sort('Date DESC');
		return $entries;
	}
}

class NewsHolder_Controller extends Page_Controller {

	public function init() {
		parent::init();

		RSSFeed::linkToFeed($this->Link() . 'rss', SiteConfig::current_site_config()->Title . ' news');
	}

	public function getNewsItems($pageSize = 10) {
		$items = NewsPage::get()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->filter(
NOTE: ArrayList filter method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->filter(array("ParentID" => $this->ID))/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->sort(
NOTE: ArrayList and DataList sort method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->sort('Date', 'DESC');
		$category = $this->getCategory();
		if ($category) $items = $items/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->filter(
NOTE: ArrayList filter method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->filter('CategoryID', $category->ID);
		$list = new PaginatedList($items, $this->request);
		$list->setPageLength($pageSize);
		return $list;
	}

	public function getCategory() {
		$categoryID = $this->request->getVar('category');
		if (!is_null($categoryID)) {
			return NewsCategory::get_by_id('NewsCategory', $categoryID);
		}
	}

	public function rss() {
		$rss = new RSSFeed($this->Children(), $this->Link, SiteConfig::current_site_config()->Title . ' news');
		return $rss->outputToBrowser();
	}
}