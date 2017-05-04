<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $has_many = array(

	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
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
		return Issue::get()->sort('Created DESC')->First();
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

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>ff
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */

	function StatusMessage() {
		if (Session::get('ActionMessage')) {
			$message = Session::get('ActionMessage');
			$status  = Session::get('ActionStatus');

			Session::clear('ActionStatus');
			Session::clear('ActionMessage');

			return new ArrayData(array('Message' => $message, 'Status' => $status));
		}

		return false;
	}

	public function init() {
		parent::init();

	}

	public function getBlog() {
		return NewsHolder::get()->First();
	}

	public function Posts(){
		$posts = BlogPost::get()->exclude(array('FeaturedImageID' => 0));
		return $posts;
	}

	public function Pages() {
		$pages = Page::get();

		if ($pages) {
			return $pages;
		} else {
			return false;
		}

	}

	public function PostsByCategory($category) {
		$blogCategory = BlogCategory::get()->filter(array('Title' => $category))->first();
		if ($blogCategory){
			$posts = $blogCategory->BlogPosts();
			return $posts;
		}
	}



}
