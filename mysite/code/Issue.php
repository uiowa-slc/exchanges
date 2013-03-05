<?php
class Issue extends Page {
	
	public static $db = array(
	
		"IssueDate" => "Text",
		"IssueNumber" => "Text",
		"LetterFromEditorCustomTitle" => "Text",
		"LetterFromEditor" => "HTMLText"
	
	);
	
	public static $has_one = array(
		"Emblem" => "Image"
	);
	
	public static $plural_name = 'Issues';
	
	public static $many_many = array(	
		"Articles" => "Article",
	);
	
	public static $default_parent = "IssueHolder";
	
	public static $can_be_root = false;
	
	
	//static $icon = array("mysite/images/tree/toc","file");
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		
		$fields->addFieldToTab("Root.Main", new UploadField("Emblem", "Unique image for issue"));
		
		$fields->addFieldToTab("Root.Main", $dateField = new TextField("IssueDate", "Issue date"));
    
		$fields->addFieldToTab("Root.Main", new TextField("IssueNumber", "Issue number"));
		
		
		$fields->addFieldToTab("Root.Main", new TextField("LetterFromEditorCustomTitle", "Letter From The Editors Custom Title (optional)"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("LetterFromEditor", "Letter From The Editors"));

		
		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		
		$gridField = new GridField('Article', 'Articles', $this->Articles(), $gridFieldConfig);
		$fields->addFieldToTab("Root.Articles", $gridField);
				
		return $fields; 
}
	
	/*	public function getYear(){
			//$date = (string) $this->IssueDate;
			$dateArray = explode("-", $this->IssueDate);

			if (isset($dateArray[0])){
				$year = $dateArray[0]; 
			}
			return $year;
		}
*/
	
}

class Issue_Controller extends  Page_Controller {
	
    
    	
	public function init() {
		parent::init();
	}
	
	public static $allowed_actions = array ("letter");
	
	public static $url_handlers = array(
        'letter' => 'letter'
    );
    
    public function letter(){
	    //print_r("test");
	    $letterText = $this->LetterFromEditor;
	    //$letterText = "test";
	    
	     $Data = array(
                'LetterText' => $letterText
            );
            
	    if(isset($letterText)){
		   // $this->Customise($Data)->renderWith(array('Page')); 
		   return $this->Customise($Data)->renderWith(array('Issue_letter','Page'));
	    }else{
		    
	    }
 
    }

	public function getNewsItems($num = 5) {
		$holder = NewsPage::get()->limit($num);
		return $holder;
	}

}



