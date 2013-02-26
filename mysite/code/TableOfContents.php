<?php
class TableOfContents extends DataObjectAsPage {
 
 static $db = array(

    );
   
  
 static $has_one = array( 
 'Issue' => 'Issue'
 );
 

 
 

 
 static $defaults = array ('ProvideComments' => '1',
    
   
    
    );
    

    
   public function getCMSFields() {
   
   		$fields = parent :: getCMSFields();
   		


        $fields->removeByName('Metadata');
        $fields->removeByName('Issue');
        //$fields->removeByName('Contributor');

        return $fields;
    }
}


