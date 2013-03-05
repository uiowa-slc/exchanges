<?php
class Contributor extends DataObject {

 static $db = array(
        'Name' => 'Text',
        
    );
    
 static $has_one = array( 
 	'Image'=> 'Image'


 );
 
 public static $many_many = array(
 
 );   
 
    
   public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName('Content');
        $fields->removeByName('Metadata');
        $fields->removeByName('Image');
        $fields->removeByName('Articles');
     
        $fields->addFieldToTab('Root.Main', new TextField('Name'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Biographical Details'));
     
        return $fields;
    }
    

}
