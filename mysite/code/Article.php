<?php
class Article extends Page {
 
 static $db = array(
 		'IsPublished' => 'Boolean',
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
  
  public static $defaults = array ( 
  
  	"ParentID" => 39
  	
  	/*"ParentID" => 7 */
  );
  

/*public function populateDefaults() {
	$holder = $this->getArticleHolder();
	
	if($holder){
	    $this->ParentID = $holder->ID;
	    parent::populateDefaults();
    }
}*/

   public function getArticleHolder(){
	   $holder = ArticleHolder::get()->First();
	   
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
            	       
        //$fields->addFieldToTab('Root.Main', $publishCheckbox = new CheckboxField('isPublished', "Publish Page"));
          
        /*$fields->addFieldToTab('Root.Main', new HTMLEditorField('Author',' Author of original work'));*/
        $fields->addFieldToTab('Root.Main', new TextField('UntranslatedTitle',' Title of original work'));
        /*$fields->addFieldToTab('Root.Main', new HTMLEditorField('Translator',' Translator (if applicable)'));*/
        $fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage','Original Language'));
        $fields->addFieldToTab('Root.Main', new TextField('TranslatedTitle',' Translated Title (if applicable)'));
        
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Original Work'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Translated Work'));
        //$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content3', 'Third Column (if necessary)'));
        $fields->addFieldToTab('Root.TranslatorNote', new HTMLEditorField('TranslatorNote', 'Translator Note'));
        
        //$fields->addFieldToTab('Root.Main', new LiteralField('Test', '<a href="www.google.com">Publish link</a>'));
        
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
		
		//$publishPage = $publishCheckbox->Value();
		
		$linky = $this->Link();
		//print_r($linky);
		
		
		
		//$fields->addFieldToTab('Root.Main', new LabelField('LabelTest', '<a class="ui-button-text" href="'.$this->Link(). 'publishPage/' .'" style="background: -webkit-linear-gradient(#93be42, #1f9433); padding-top:5px; padding-bottom:5px; display: block; background-color: #1f9433; border-radius: 3px; text-shadow: #1c872f 0 -1px -1px; font-weight: bold; color: white; padding-left: 7px; width: 50px;">Publish</a>'));
		
		
		

		

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
	/*
	function onAfterWrite(){
		
		
		$publishPage = $this->IsPublished();
		
		if (isset($publishPage)){
			if ($publishPage){
				$this->IsPublished = 0;
				$this->doPublish();
			}
		}
	}
	*/
	
	public function getIssue(){
		return $this->Issues();
	}

	

	
}


class Article_Controller extends  Page_Controller {
	
	public static $allowed_actions = array ("notes", "publishpage");
	
	public static $url_handlers = array(
        'notes' => 'notes',
        'publishpage' => 'publishpage' 
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
	
	public function publishPage(){
		$this->doPublish();
		print_r("Page published!");
	
		//Temporary
		return $this->renderWith(array('Article_notes','Page'));	
	}
	
	
	
	

}



