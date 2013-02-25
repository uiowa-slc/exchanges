<?php

class TwoColumnPage extends Page {
	
	public static $db = array(
	
	"Content2" => "HTMLText"
	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content2"));
		
		return $fields; }
	
}

class TwoColumnPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>