<?php

class IssueHolder extends SiteTree {
	
	public static $db = array(
	);
	
	public static $has_one = array(
	);
	
	public static $allowed_children = array("Issue");
	
	static $icon = array("mysite/images/tree/toc","file");
	
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		
		return $fields; }
	
	
}



class IssueHolder_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>