<?php

class Issue extends Page {
	
	public static $db = array(
	
		"IssueDate" => "Text",
		"CustomStyle" => "Text",
		"Content2" => "HTMLText"
	
	);
	
	public static $has_one = array(
	
		"ContentsImage" => "Image",
		"CustomExchangesLogo" => "Image",
		"BackgroundImage" => "Image"
	
	);
	
	public static $has_many = array(
		"Contributors" => "Contributor"							
	);
	
	
	static $icon = array("mysite/images/tree/toc","file");
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("Content2"));
		$fields->addFieldToTab("Root.Content.Main", new ImageField("BackgroundImage"));
		$fields->addFieldToTab("Root.Content.Main", new ImageField("ContentsImage"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("IssueDate"));
		$fields->addFieldToTab("Root.Content.Main", new ImageField("CustomExchangesLogo","Custom Exchanges Logo (optional):"));
		//$fields->addFieldToTab("Root.Style", new TextareaField("CustomStyle","Custom CSS:",32));
		
		return $fields; 
	
}
	
	
}

class Issue_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}

	
	
}

?>