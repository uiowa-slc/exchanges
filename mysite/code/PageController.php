<?php
use SilverStripe\Core\Config\Config;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Control\Session;
use SilverStripe\View\ArrayData;
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\Blog\Model\BlogCategory;

class PageController extends ContentController {


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
	// public function getViewer($action = null) {
	// 	$viewer = parent::getViewer($action);

	// 	if(!$this->isSubjournal()){

	// 		return $viewer;
			
	// 	}
	// 	//echo 'true';
	// 	$viewerTemplates = $viewer->templates();

	// 	// Set your new theme
	// 	$original = Config::inst()->get("SilverStripe\View\SSViewer", "themes");
	// 	Config::inst()->set("SilverStripe\View\SSViewer", "themes",array('exchanges-sec-theme'));
	// 	//print_r(Config::inst()->get('SilverStripe\View\SSViewer'));
	// 	$pageTheme = parent::getViewer($action);
	// 	$pageTheme->setTemplateFile("main", $viewerTemplates['main']);
		
	// 	// Reset to original 
	// 	//Config::inst()->set("SilverStripe\View\SSViewer", "themes", $original);
	// 	return $pageTheme;
	// }

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

	protected function init() {
		parent::init();

	}

	public function getBlog() {
		return NewsHolder::get()->First();
	}

	public function Posts(){
		$posts = BlogPost::get();
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
