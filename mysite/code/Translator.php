<?php
class Translator extends Contributor {

 static $db = array(
  
    );
    
 static $has_one = array( 

 );
 
 public static $many_many = array(
 	'Articles' => 'Article'
 );   

    
   public function getCMSFields() {
        $fields = parent::getCMSFields();
     
        return $fields;
    }
    
}
