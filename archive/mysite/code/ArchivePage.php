<?php

class ArchivePage extends Page {
	
	public static $db = array(
	);
	
	public static $has_one = array(
	);
	
	public static $allowed_children = array("Issue");
	
}

class ArchivePage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
	}
	
}

?>