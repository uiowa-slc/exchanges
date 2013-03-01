<?php
class TranslatorNote extends DataObjectAsPage {
 
 static $db = array(
'Author' => 'Text'
    );
   
  
 static $has_one = array( 
 'Article' => 'Article'
 );
 
 
 

 
 static $defaults = array ('ProvideComments' => '1',
 
 
   
    
    );
    
  public static $plural_name = 'TranslatorNotes'; 
    
 static $listing_page_class = 'Issue'; 
    

    
   public function getCMSFields() {
   
   		$fields = parent::getCMSFields();
   		
   		 $fields->removeByName('Article');
   		
   		//$fields->addFieldToTab("Root.Main", new TextField("Author"));
        
        //$fields->removeByName('Contributor');
        
        $fields->removeByName('Article');
        $fields->removeByName('Metadata');

        return $fields;
    }

}

