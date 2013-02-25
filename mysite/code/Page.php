<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);
	
	public static $has_many = array(
	
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
	 * <code>
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
	public static $allowed_actions = array (
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
		//SSViewer:: dontRewriteHashlinks();
		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		/*Requirements::block('sapphire/thirdparty/prototype/prototype.js'); 
		Requirements::block('sapphire/thirdparty/behaviour/behaviour.js'); 
		Requirements::block('sapphire/javascript/prototype_improvements.js'); 
		Requirements::block('sapphire/javascript/Validator.js'); 
		Requirements::block('sapphire/javascript/i18n.js'); 
		Requirements::block('sapphire/javascript/lang/en_US.js'); */

		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form'); 
	}
	

	
	public function Pages(){
		$pages = DataObject::get("Page");
		
		if($pages){
			return $pages;
		}else{
		
			return false;
			
		}
	
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