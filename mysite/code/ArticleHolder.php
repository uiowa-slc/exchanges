<?php
class ArticleHolder extends Page {
 
	static $db = array(
	
	);
	
	
	static $has_one = array( 
		
	);
	
	static $allowed_children = array ("Article");
	
	
	public function getCMSFields() {
		
		$fields = parent :: getCMSFields();
		return $fields;
	}
}

class ArticleHolder_Controller extends  Page_Controller {
	
    	
	public function init() {
		parent::init();
	}
	
}
