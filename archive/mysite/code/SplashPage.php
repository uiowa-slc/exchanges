<?php

class SplashPage extends Page {
	
	public static $db = array("CustomTitle" => "Text",);
	
	public static $has_one = array("ExchangesLogo" => "Image",);
	
	public static $has_many = array();
	
	public static $defaults = array("InheritContributorInfo" => "True");
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		$fields->addFieldToTab("Root.Behaviour", new TextField("CustomTitle", "Page Title: "));
		return $fields; 
	}

}

class SplashPage_Controller extends Page_Controller {
	public function init() {
		parent::init();
	}
	
}

?>
