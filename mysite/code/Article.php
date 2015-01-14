<?php
class Article extends Page {
	private static $db = array(
		'IsPublished' => 'Boolean',
		'OriginalLanguage' => 'Text',
		'UntranslatedTitle' => 'Text',
		'TranslatedTitle' => 'Text',
		'Translator' => 'HTMLText',
		"Content2" => "HTMLText",
		"Content3" => "HTMLText",
		"TranslatorNote" => "HTMLText",
		"TranslationRTL" => "Boolean",
		"OriginalRTL" => "Boolean",
	);

	private static $has_one = array('Image' => 'Image');
	private static $plural_name = 'Articles';
	private static $belongs_many_many = array(
		'Issues' => 'Issue',
		'Authors' => 'Author',
		'Translators' => 'Translator',
	);

	private static $default_parent = "articles";
	private static $can_be_root = false;
	private static $defaults = array("ParentID" => 7);

	public function getArticleHolder() {
		$holder = ArticleHolder::get()->First();

		if ($holder) {
			return $holder;
		}
	}

	public function MoreThanOneTranslator() {
		$translators = $this->Translators()->toArray();
		$translatorSize = count($translators);

		if ($translatorSize > 1) {
			return true;
		} else {

			return false;
		}
	}

	public function NextPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->ParentID,
			'Sort:GreaterThan' => $this->Sort,
		))->First();

		return $page;
	}
	public function PreviousPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->ParentID,
			'Sort:LessThan' => $this->Sort,
		))->Last();

		return $page;
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Image');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');

		$fields->addFieldToTab('Root.Main', new TextField('UntranslatedTitle', ' Original Title'));
		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage', 'Original Language'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('OriginalRTL', 'Original language is read/written from right to left'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Original Work'));

		$fields->addFieldToTab('Root.Main', new TextField('TranslatedTitle', ' Translated Title (if applicable)'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Translated Work'));

		$fields->addFieldToTab('Root.TranslatorNote', new HTMLEditorField('TranslatorNote', 'Translator Note'));

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);

		$gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
		$newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
		$fields->addFieldToTab('Root.Translators', $newGridField2);

		$fields->removeByName('Content3');

		$linky = $this->Link();

		return $fields;
	}
	private static $listing_page_class = 'Issue';

}

class Article_Controller extends Page_Controller {

	private static $allowed_actions = array("notes", "publishpage");
	private static $url_handlers = array(
		'notes' => 'notes',
	);

	public function notes() {
		$translatorNote = $this->TranslatorNote;
		$translators = $this->Translators();

		$Data = array(
			'TranslatorNote' => $translatorNote,
			'Translators' => $translators,
		);

		if (isset($translatorNote)) {
		} else {
		}

		return $this->Customise($Data)->renderWith(array('Article_notes', 'Page'));

	}
	public function init() {
		parent::init();
	}

}
