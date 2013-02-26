<?php
class LetterFromEditor extends DataObjectAsPage {
 
 static $db = array(
'Author' => 'Text'
    );
   
  
 static $has_one = array( 
 'Issue' => 'Issue'
 );
 

 
 

 
 static $defaults = array ('ProvideComments' => '1',
    
   
    
    );
    

    
   public function getCMSFields() {
   
   		$fields = parent :: getCMSFields();
   		
   		$fields->addFieldToTab("Root.Main", new TextField("Author"));

        $fields->removeByName('Metadata');
        $fields->removeByName('Issue');
        //$fields->removeByName('Contributor');

        return $fields;
    }
}


