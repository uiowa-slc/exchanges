<?php
class Article extends DataObjectAsPage {
 
 static $db = array(
        'Date' => 'Date',
        'Author' => 'HTMLText',
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
 	'Contributor'=> 'Contributor',
 	 'Issue' => 'Issue'
 );
 
  public static $has_many = array(
    "TranslatorNote" => "TranslatorNote",
  );

 
 static $defaults = array ('ProvideComments' => '1',
    
   
    
    );
    

    
   public function getCMSFields() {
   
   		
        $fields = parent::getCMSFields();
        
        $fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Image');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Article Date (for example: 1/20/2013)'));
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        $dateField->setConfig('showcalendar', true);
 
       
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Author',' Author of original work'));
        $fields->addFieldToTab('Root.Main', new TextField('UntranslatedTitle',' Title of original work'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Translator',' Translator (if applicable)'));
        $fields->addFieldToTab('Root.Main', new TextField('TranslatedTitle',' Translated Title (if applicable)'));
        
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'First Column'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Second Column (if necessary)'));
        //$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content3', 'Third Column (if necessary)'));
        //$fields->addFieldToTab('Root.Main', new HTMLEditorField('TranslatorNote', 'Translator Note'));
        
        //$fields->removeFieldFromTab('Root.Main', array('Issues'));
        //$fields->removeFieldFromTab('Root.Content.Metadata', array('Content2'));
        //$fields->removeFieldFromTab('Root.Main', 'Issues');
        
        //$parent = $this->Issue();
		//print_r($parent);
		//print("PARENT");

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		
		$newGridField = new GridField('Contributor', 'Contributors', $this->Contributor(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Main', $newGridField);
		
		$gridFieldConfigTrans = GridFieldConfig_RelationEditor::create();
		
		$gridFieldTrans = new GridField('TranslatorNote', 'Translator Note', $this->TranslatorNote(), $gridFieldConfigTrans);
		$fields->addFieldToTab('Root.Main', $gridFieldTrans);
		
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
	
	public function getContributor(){
		return "HIIII";
	}
	
	function getParent(){
		//print_r($this->Issue()->First());
		return $this->Issue()->First();
	}
	
}


