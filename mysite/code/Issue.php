<?php
class Issue extends Page {

	private static $db = array(
		"IssueDate"                   => "Text",
		"IssueNumber"                 => "Text",
		"LetterFromEditorCustomTitle" => "Text",
		"LetterFromEditor"            => "HTMLText",
		"Transparency"                => "Varchar(100)",
		"UseTitleDropShadow"          => "Boolean",
		'LinkColor' => 'Varchar(16)'
	);

	private static $has_one = array(
		"Emblem" => "Image",

	);

	private static $plural_name = 'Issues';

	/* Deprecated but still needed for older issues until they're migrated */
	private static $many_many = array(
		"Articles" => "Article",
	);

	private static $default_parent = "IssueHolder";

	private static $can_be_root = false;

	private static $allowed_children = array('Article', 'ArticleSingleColumn');

	//private static $icon = array("mysite/images/tree/toc","file");

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		$fields->addFieldToTab("Root.Main", new UploadField("Emblem", "Issue cover"));
		$color = $this->obj('Emblem')->Color;
		$pallete = $this->obj('Emblem')->dominantColorPalette();

		$options = array();
		$options[$color] = $color;

		foreach ($pallete as $color) {
			$options[$color] = $color;
		}
		$fields->addFieldToTab('Root.Main',
			ColorPaletteField::create(
				$name = 'LinkColor',
				$title = 'Choose a dominant link color',
				$source = $options,
				$value = $this->obj('Emblem')->Color
			)
		);

		$alphadropdownfield = DropdownField::create(
			'Transparency',
			'Cover transparency',
			array(
				'0'   => '100% (Original artwork color, no screen)',
				'0.1' => '90%',
				'0.2' => '80%',
				'0.3' => '70%',
				'0.4' => '60%',
				'0.5' => '50%',
				'0.6' => '40%',
				'0.7' => '30%',
				'0.8' => '20%',
				'0.9' => '10% (Mostly gray)',

			)
		);
		$alphadropdownfield->setEmptyString("Default (70%)");
		$fields->addFieldToTab('Root.Main', $alphadropdownfield);

		$fields->addFieldToTab('Root.Main', new CheckboxField('UseTitleDropShadow', 'Use a subtle shadow behind issue title (good if there\'s a lot of white in the artwork)'));

		$fields->addFieldToTab("Root.Main", $dateField = new TextField("IssueDate", "Issue date"));
		//$fields->addFieldToTab("Root.Main", new TextField("IssueNumber", "Issue number"));
		$fields->addFieldToTab("Root.Main", new TextField("LetterFromEditorCustomTitle", "Letter From The Editors Custom Title (optional)"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("LetterFromEditor", "Letter From The Editors"));

		return $fields;
	}

	public function Articles() {
		return $this->Children();
	}

	public function getLetterTitle() {
		if ($this->LetterFromEditorCustomTitle) {
			return $this->LetterFromEditorCustomTitle;
		} else {
			return "Letter From The Editor";
		}
	}

	public function getLetterLink() {
		return $this->Link().'letter/';
	}

	public function RandomArticles() {
		return SiteTree::get()->filter('ParentID', $this->ID)->sort('RAND()');
	}

}

class Issue_Controller extends Page_Controller {

	private static $allowed_actions = array("letter");

	private static $url_handlers = array(
		'letter' => 'letter',
	);

	public function init() {
		parent::init();
		//print_r($this->getClassName());
		//Session::set('issue', Issue::get_by_id('Issue', $this->ID));
	}

	public function letter() {
		$letterText = $this->LetterFromEditor;
		if ($letterText) {

			$Data = array(
				'Content'      => $letterText,
				'Parent'       => $this,
				'ClassName'    => 'Article',
				'NextPage'     => $this->Children()->First,
				'PreviousPage' => Page::get()->filter(array('URLSegment' => 'home'))->First,
			);

		} else {
			$Data = array('LetterText' => "");
		}

		return $this->Customise($Data)->renderWith(array('Issue_letter', 'Page'));
	}

}
