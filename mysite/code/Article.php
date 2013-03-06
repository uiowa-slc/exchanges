<?php
class Article extends Page {
 
 static $db = array(
        'OriginalLanguage' => 'Text',
        'UntranslatedTitle' => 'Text',
        'TranslatedTitle' => 'Text',
        'Translator' => 'HTMLText',
        "Content2" => "HTMLText",
	    "Content3" => "HTMLText",
		"TranslatorNote" => "HTMLText",
    );
   
  
 static $has_one = array( 
 	'Image'=> 'Image',


 );
 
 public static $plural_name = 'Articles';
 
 static $belongs_many_many = array(
 	 'Issues' => 'Issue',
 	 'Authors' => 'Author',
 	 'Translators' => 'Translator'
 );
 

  public static $default_parent = "articles";
    
  public static $can_be_root = false;
  
  /* TODO: Make this dynamically grab the article holder somehow */
  static $defaults = array ('ProvideComments' => '1', "ParentID" => 39);
    

   public function getArticleHolder(){
	   $holder = ArticleHolder::get_one();
	   
	   if($holder){
		   return $holder;
	   }
   }
      
   public function getCMSFields() {
   
   		
        $fields = parent::getCMSFields();
        
        $fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Image');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		
        /*
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Article Date (for example: 1/20/2013)'));
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        $dateField->setConfig('showcalendar', true);
        */
       
        /*$fields->addFieldToTab('Root.Main', new HTMLEditorField('Author',' Author of original work'));*/
        $fields->addFieldToTab('Root.Main', new TextField('UntranslatedTitle',' Title of original work'));
        /*$fields->addFieldToTab('Root.Main', new HTMLEditorField('Translator',' Translator (if applicable)'));*/
        $fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage','Original Language'));
        $fields->addFieldToTab('Root.Main', new TextField('TranslatedTitle',' Translated Title (if applicable)'));
        
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Original Work'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Translated Work'));
        //$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content3', 'Third Column (if necessary)'));
        $fields->addFieldToTab('Root.TranslatorNote', new HTMLEditorField('TranslatorNote', 'Translator Note'));
        
        //$fields->removeFieldFromTab('Root.Main', array('Issues'));
        //$fields->removeFieldFromTab('Root.Content.Metadata', array('Content2'));
        //$fields->removeFieldFromTab('Root.Main', 'Issues');
        
        //$parent = $this->Issue();
		//print_r($parent);
		//print("PARENT");

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);
		
		$gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
		$newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
		$fields->addFieldToTab('Root.Translators', $newGridField2);

		$gridFieldConfig3 = GridFieldConfig_RelationEditor::create();
		$newGridField3 = new GridField('Issues', 'Issues', $this->Issues(), $gridFieldConfig3);
		$fields->addFieldToTab('Root.AssociatedIssues', $newGridField3);		
		
		
		$fields->removeByName('Content3');

     
        return $fields;
    }
    
     static $listing_page_class = 'Issue'; 
     
     
	public function articleFormat(){
		$Content = $this->Content;
		$Content2 = $this->Content2;
		$Content3 = $this->Content3;
		$return = '';
		
		/*
		if ($Content){
			if ($Content2){
				if ($Content3){
					$return = 'threeColumnPage';
				}
				else {
					$return = 'twoColumnPage';
				}
			}
			else {
				$return = 'oneColumnPage';
			}			
		}
		*/
		
		if ($Content){
			if ($Content2){
				$return = 'twoColumnPage';
			}
			else {
				$return = 'oneColumnPage';
			}	
		}	
		
		return $return;
	}
	

	
	function getParent(){
		//print_r($this->Issue()->First());
		return $this->Issues()->First();
	}
	
}


class Article_Controller extends  Page_Controller {
	
	public static $allowed_actions = array ("notes");
	
	public static $url_handlers = array(
        'notes' => 'notes'
    );
    
    
    public function notes(){
	    //print_r("test");
	    $translatorNote = $this->TranslatorNote;
	    
	    $translators = $this->Translators();
	    //$letterText = "test";
	    
	     $Data = array(
                'TranslatorNote' => $translatorNote,
                'Translators' => $translators
            );
            
	    if(isset($translatorNote)){
		   // $this->Customise($Data)->renderWith(array('Page')); 
		   return $this->Customise($Data)->renderWith(array('Article_notes','Page'));
	    }else{
		    
	    }
 
    }    
    	
	public function init() {
		parent::init();
	}

}



