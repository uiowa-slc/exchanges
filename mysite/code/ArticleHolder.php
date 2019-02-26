<?php
class ArticleHolder extends Page {
 
	private static $db = array(
	);
	
	private static $has_one = array( 
		
	);
	
	private static $allowed_children = array ("Article");
	
	
	public function getCMSFields() {
		
		$fields = parent :: getCMSFields();
		return $fields;
	}
}