<?php
class EditorLetter extends DataObjectAsPage {
 
 static $db = array(
'Author' => 'Text'
    );
   
  
 static $has_one = array( 
 'Issue' => 'Issue'
 );
 
 static $summary_fields = array('Author');
 
 

 
 static $defaults = array ('ProvideComments' => '1',
    
   
    
    );
    
 static $listing_page_class = 'Issue'; 
    

    
   public function getCMSFields() {
   
   		$fields = parent::getCMSFields();
   		
   		$fields->addFieldToTab("Root.Main", new TextField("Author"));
        
        //$fields->removeByName('Contributor');

        return $fields;
    }

}


