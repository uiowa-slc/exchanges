<?php
class ArticlePage extends Page {
 /*
 static $db = array(
        'Date' => 'Date',
        'Author' => 'Text',
        "Content2" => "HTMLText",
	    "Content3" => "HTMLText",
		"TranslatorNote" => "HTMLText",
    );
   */
  /*  
 static $has_one = array( 
 	'Image'=> 'Image',
 	'Contributor'=> 'Contributor',
 	'Issues' => 'Issue',
 	'ChildPages' => 'SiteTree'
 );
 */
 
 //static $defaults = array ('ProvideComments' => '1',
    
   
    
   // );
    

    /*
   public function getCMSFields() {
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Article Date (for example: 1/20/2013)'), 'Content');
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'dd/MM/YYYY');
        $fields->addFieldToTab('Root.Main', new ImageField('Image', 'Image'));
        $fields->addFieldToTab('Root.Main', new TextField('Author',' Author Name'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content3'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('TranslatorNote'));

     
        return $fields;
    }
    */
}
