<?php
class Issue extends DataObjectAsPageHolder {
	
	public static $db = array(
	
		"IssueDate" => "Date",
		"IssueNumber" => "Text",
		"TableOfContents" => "HTMLText"
	
	);
	
	public static $has_one = array(
	
		"Emblem" => "Image"
		
	
	);
	
	 public static $plural_name = 'Issues';
	
	public static $many_many = array(	
		"Article" => "Article",
		"LetterFromEditor" => "LetterFromEditor", 
	);
	
	
	//static $icon = array("mysite/images/tree/toc","file");
	
	function getCMSFields() {
		$fields = parent :: getCMSFields();
		
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("TableOfContents", "Table of contents"));
		$fields->addFieldToTab("Root.Main", new UploadField("Emblem", "Unique image for issue"));
		
		$fields->addFieldToTab("Root.Main", $dateField = new DateField("IssueDate", "Issue date"));
		$dateField->setConfig('dateformat', 'MM/dd/YYYY');
        $dateField->setConfig('showcalendar', true);
        
		$fields->addFieldToTab("Root.Main", new TextField("IssueNumber", "Issue number"));
		

        
        
		//$fields->addFieldToTab("Root.Style", new TextareaField("CustomStyle","Custom CSS:",32));
		
		
	/*
	$gridFieldConfig = GridFieldConfig::create()->addComponents(
	   new GridFieldToolbarHeader(),
	   new GridFieldAddNewButton('toolbar-header-right'),
	   new GridFieldSortableHeader(),
	   new GridFieldDataColumns(),
	   new GridFieldPaginator(15),
	   new GridFieldEditButton(),
	   new GridFieldDeleteAction(),
	   new GridFieldDetailForm(),
	   new GridFieldFilterHeader()
);
*/
		
		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		
		$gridField = new GridField('Article', 'Articles', $this->Article(), $gridFieldConfig);
		$fields->addFieldToTab("Root.Main", $gridField);
		
		
				
		$gridFieldConfigLetter = GridFieldConfig_RelationEditor::create();	
		
		$gridFieldLetter = new GridField('LetterFromEditor', 'Letter From Editor', $this->LetterFromEditor(), $gridFieldConfigLetter);
		$fields->addFieldToTab("Root.Main", $gridFieldLetter);
		
		/*
		$gridFieldConfigTOC = GridFieldConfig_RelationEditor::create();
		$gridFieldTOC = new GridField('TableOfContents', 'Table Of Contents', $this->TableOfContents(), $gridFieldConfigTOC);		
		$fields->addFieldToTab("Root.Main", $gridFieldTOC);
		*/
		
		
		/*
		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		
		$newGridField = new GridField('Contributor', 'Contributors', $this->Contributors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Main', $newGridField);
		
		*/
/*
	
	$gridFieldConfigTest = GridFieldConfig::create()->addComponents(
	   new GridFieldToolbarHeader(),
	   new GridFieldAddNewButton('toolbar-header-right'),
	   new GridFieldSortableHeader(),
	   new GridFieldDataColumns(),
	   new GridFieldPaginator(15),
	   new GridFieldEditButton(),
	   new GridFieldDeleteAction(),
	   new GridFieldDetailForm(),
	   new GridFieldFilterHeader()
		);
*/

		
		//$gridFieldTest = new GridField('TestObject', 'Test Object', $this->TestObjects(), $gridFieldConfigTest);
		//$fields->addFieldToTab("Root.Main", $gridFieldTest);
		
		//$gridFieldTest = new GridField('Contributor', 'Contributors', $this->Contributors(), $gridFieldConfigTest);
		//$fields->addFieldToTab("Root.Main", $gridFieldTest);
		
		return $fields; 
	
}
/*
public function listContributors(){
			return $this->Contributors();
		}
*/	
		public function listArticles(){
			return $this->Article();
		}
		
		public function getYear(){
			//$date = (string) $this->IssueDate;
			$dateArray = explode("-", $this->IssueDate);

			if (isset($dateArray[0])){
				$year = $dateArray[0]; 
			}
			return $year;
		}

	
	
}

class Issue_Controller extends  DataObjectAsPageHolder_Controller {
	
	   //This needs to know be the Class of the DataObject you want this page to list
    static $item_class = 'Article'; 
    //Set the sort for the items (defaults to Created DESC)
    static $item_sort = 'Title DESC';
    
    	
	public function init() {
		parent::init();
	}
	
	public function superTest(){
		//user_error("breakpoint", E_USER_ERROR);
	}
	
	public function getDataObjectAsPage(){
		$set = DataObjectAsPage::get();
		return $set;
	}
	
	public function getNewsItems() {
		$holder = NewsPage::get()->limit(5);
		return $holder;
	}
	
	public function getLetterEditor(){
		$letter = $this->LetterFromEditor()->First();
		return $letter;
	}
	
	public function getTOC(){
		$toc = $this->TableOfContents()->First();
		return $toc;
	}
	

	
	
	/*
	public function contributorItems(){
	
		Issue_Controller::$item_class = 'contributor';

		$contributors = $this->Items();
		
		return $contributors;
	}
	
	public function articleItems(){
		Issue_Controller::$item_class = 'article';

		$articles = $this->Items();
			
		return $articles;
	}
	*/

	
}



