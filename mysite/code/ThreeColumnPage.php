<?php

class ThreeColumnPage extends Page {
	
	public static $db = array(
	
	"Content2" => "HTMLText",
	"Content3" => "HTMLText",
	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content2"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content3"));
		
		return $fields; }
	
}

class ThreeColumnPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>