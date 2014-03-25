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
	private static $allowed_actions = array (
	);
	
	function StatusMessage() { 
	   if(Session::get('ActionMessage')) { 
		  $message = Session::get('ActionMessage'); 
		  $status = Session::get('ActionStatus');

		  Session::clear('ActionStatus'); 
		  Session::clear('ActionMessage');

		  return new ArrayData(array('Message' => $message, 'Status' => $status)); 
	   }

	   return false; 
	}

	public function init() {
		parent::init();
		$jsFiles = array(
			'themes/exchanges-redesign/js/lib/jquery.js',
			'themes/exchanges-redesign/js/lib/jquery-ui-1.8.21.custom.js',
		    'themes/exchanges-redesign/js/lib/modernizr.js',
			'themes/exchanges-redesign/js/bootstrap.js',
		);
		Requirements::combine_files('allcombined.js',$jsFiles);
	}
	
	public function Pages(){
		$pages = Page::get();
		
		if($pages){
			return $pages;
		}else{
			return false;
		}
	
	}
	
	public function newsItems($num){
		$newsItems = NewsPage::get()/*
### @@@@ UPGRADE REQUIRED @@@@ ###
FIND: ->limit(
NOTE: DataList limit method no longer modifies current list; only returns a new version. 
### @@@@ ########### @@@@ ###
*/->limit($num);
		if($newsItems){
			return $newsItems;
		}
	}
	
	public function paginatedNewsItems(){
		$newsList = new PaginatedList(NewsPage::get(), $this->request);
		$newsList->setPageLength(2);
		return $newsList;
	}
	
	public function getCurrentIssue(){
		$currentIssue = HomePage::get()->First();
		return $currentIssue->FeaturedIssue();
	}
	
	public function getEmblem(){
		$two = 'one';
		$page = Director::get_current_page();
	
	while(($page)&&($page->ClassName!="Issue")){
				$page = $page->Parent;
		}
			if($page){
				return $page;
			}

	}
}