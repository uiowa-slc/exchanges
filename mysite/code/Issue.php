<?php
class Issue extends Page {

	private static $db = array(

		"IssueDate" => "Text",
		"IssueNumber" => "Text",
		"LetterFromEditorCustomTitle" => "Text",
		"LetterFromEditor" => "HTMLText"

	);

	private static $has_one = array(
		"Emblem" => "Image"
	);

	private static $plural_name = 'Issues';

	private static $many_many = array(
		"Articles" => "Article",
	);

	private static $default_parent = "IssueHolder";

	private static $can_be_root = false;


	//private static $icon = array("mysite/images/tree/toc","file");

	function getCMSFields() {
		$fields = parent :: getCMSFields();
		$fields->removeByName( 'Metadata' );
		$fields->removeByName( 'Content' );
		$fields->addFieldToTab( "Root.Main", new UploadField( "Emblem", "Unique image for issue" ) );
		$fields->addFieldToTab( "Root.Main", $dateField = new TextField( "IssueDate", "Issue date" ) );
		$fields->addFieldToTab( "Root.Main", new TextField( "IssueNumber", "Issue number" ) );
		$fields->addFieldToTab( "Root.Main", new TextField( "LetterFromEditorCustomTitle", "Letter From The Editors Custom Title (optional)" ) );
		$fields->addFieldToTab( "Root.Main", new HTMLEditorField( "LetterFromEditor", "Letter From The Editors" ) );

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$gridFieldConfig->addComponent( new GridFieldViewButton() );
		$gridField = new GridField( 'Article', 'Articles', $this->Articles(), $gridFieldConfig );
		$fields->addFieldToTab( "Root.Articles", $gridField );

		return $fields;
	}

}

class Issue_Controller extends  Page_Controller {



	public function init() {
		parent::init();
	}

	private static $allowed_actions = array ( "letter" );

	private static $url_handlers = array(
		'letter' => 'letter'
	);

	public function letter() {
		$letterText = $this->LetterFromEditor;
		if ( $letterText ) {

			$Data = array(
				'LetterText' => $letterText
			);

		}else {
			$Data = array ( 'LetterText' => "" );
		}

		return $this->Customise( $Data )->renderWith( array( 'Issue_letter', 'Page' ) );
	}

}
