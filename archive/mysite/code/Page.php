<?php

class Page extends SiteTree {
	
	public static $db = array(

	"CustomTitle" => "Text",
	
	);
	
	public static $has_one = array(
	
	"ExchangesLogo" => "Image",
	
	);
	
	public static $has_many = array(

	);
	
	public static $defaults = array( "InheritContributorInfo" => "True" );
	
	function getCMSFields() {
		
		$fields = parent :: getCMSFields();
		$fields->addFieldToTab("Root.Behaviour", new TextField("CustomTitle", "Page Title: "));
		return $fields; 
	
}

 


}

class Page_Controller extends ContentController {

	public function init() {
		parent::init();
		
		
		
		$DesignedIssues = array("exocity", "hackwork", "mirrors-and-masks", "awake", "", null);
		/*
		if ($this->Issue() == "mirrors-and-masks"){
			SSViewer::set_theme("generic-theme");
		}
		*/
		
		//The thing to understand with this block is how the top-level pages get handled -- pages like archives, about, et cetera.  They don't have parent pages and so a call to Issue() doesn't return anything.  Yet even without invoking SSViewer::set_theme (it's not invoked because the top if condition fails for them and so there is no call of SSViewer), the theme set on the very top-level page of the CMS is used
		if ($this->Issue()){
		 if (in_array($this->Issue(), $DesignedIssues)){
			SSViewer::set_theme($this->Issue());
		  }
		  else {
			SSViewer::set_theme("generic-theme");
		  }		  
		}
		
		
	  
	    
		//echo $this->Issue();
		
	}
	
	public function Issue(){
	
		$page = Director::currentPage();
		
		while(($page)&&($page->ClassName!="Issue")){
				$page = $page->Parent;
		}
			if($page)
				return $page->URLSegment;
		
	}
	
	public function getIssue(){
	
		$page = Director::currentPage();
		
		while(($page)&&($page->ClassName!="Issue")){
				$page = $page->Parent;
		}
			if($page)
				return $page;
		
	}
	
	public function Masthead() {
		$issue = $this->getIssue();
		
		if($issue){
			$masthead = DataObject::get("Page", "ParentID = ".$issue->ID." AND Title = 'Masthead'", null, null, 1);
		}
		//print_r($masthead);
		if (isset($masthead)){
			return $masthead;
		}
			
	
	}
	
	
	public function nextPager() {
		$where = "ParentID = ($this->ParentID + 0) AND Sort > ($this->Sort + 0 )";
		$pages = DataObject::get("SiteTree", $where, "Sort", "", 1);
 		if($pages) {
			foreach($pages as $page) {
    		return $page;
	   }
  	}
 }
 	public function previousPager() {
  		$where = "ParentID = ($this->ParentID + 0) AND Sort < ($this->Sort + 0)";
		$pages = DataObject::get("SiteTree", $where, "Sort DESC", "", 1);
  		if($pages) {
			foreach($pages as $page) {
			return $page;
   		}
  	}
 }

	
}

?>
