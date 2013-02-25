<?php
class Article extends DataObjectAsPage {
 
 static $db = array(
        'Date' => 'Date',
        'Author' => 'Text',
        "Content2" => "HTMLText",
	    "Content3" => "HTMLText",
		"TranslatorNote" => "HTMLText",
    );
   
  
 static $has_one = array( 
 	'Image'=> 'Image',

 );
 

 
 static $belongs_many_many = array(
 	'Contributor'=> 'Contributor', 
 	 'Issue' => 'Issue'
 );

 
 static $defaults = array ('ProvideComments' => '1',
    
   
    
    );
    

    
   public function getCMSFields() {
   
   		
        $fields = parent::getCMSFields();
        
        $fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Article Date (for example: 1/20/2013)'));
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        $dateField->setConfig('showcalendar', true);
 
        $fields->addFieldToTab('Root.Main', new UploadField('Image', 'Image'));
        $fields->addFieldToTab('Root.Main', new TextField('Author',' Author Name'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'First Column'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Second Column (if necessary)'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content3', 'Third Column (if necessary)'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('TranslatorNote', 'Translator Note'));
        
        //$fields->removeFieldFromTab('Root.Main', array('Issues'));
        //$fields->removeFieldFromTab('Root.Content.Metadata', array('Content2'));
        //$fields->removeFieldFromTab('Root.Main', 'Issues');
        
        //$parent = $this->Issue();
		//print_r($parent);
		//print("PARENT");

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		
		$newGridField = new GridField('Contributor', 'Contributors', $this->Contributor(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Main', $newGridField);

     
        return $fields;
    }
    
     static $listing_page_class = 'Issue'; 
     
     
	public function articleFormat(){
		$Content = $this->Content;
		$Content2 = $this->Content2;
		$Content3 = $this->Content3;
		$return = '';
		
		
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
		
		return $return;
	}
	
	public function getContributor(){
		return "HIIII";
	}
	
}


