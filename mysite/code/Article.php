<?php
class Article extends Page {
	private static $db = array(
		'Title' => 'HTMLText',
		'IsPublished' => 'Boolean',
		'OriginalLanguage' => 'Text',
		'UntranslatedTitle' => 'HTMLText',
		'TranslatedTitle' => 'HTMLText',
		'Translator' => 'HTMLText',
		"Content2" => "HTMLText",
		"Content3" => "HTMLText",
		"TranslatorNote" => "HTMLText",
		"TranslationRTL" => "Boolean",
		"OriginalRTL" => "Boolean",
		'IsCompilation' => 'Boolean',
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

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Title');
		$fields->removeByName('MenuTitle');
		$fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Image');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');

		$fields->addFieldToTab('Root.Main', new CheckboxField('IsCompilation', 'This is a compilation of more than one poem'));

		$titleField = new HTMLEditorField('Title', 'Page Title');
		$titleField->setRows(1);

		$untranslatedTitleField = new HTMLEditorField('UntranslatedTitle', 'Original Title');
		$untranslatedTitleField->setRows(1);

		$fields->addFieldToTab('Root.Main', $titleField);
		$fields->addFieldToTab('Root.Main', $untranslatedTitleField);
		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage', 'Original Language'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('OriginalRTL', 'Original language is read/written from right to left'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Original Work'));

		$translatedTitleField = new HTMLEditorField('TranslatedTitle', ' Translated Title');
		$translatedTitleField->setRows(1);

		$fields->addFieldToTab('Root.Main', $translatedTitleField);
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

	public function TranslatorBylineVerb() {
		$translatorCount = $this->Translators()->Count();
		if ($translatorCount > 1) {
			return " translate";
		} else {
			return " translates";
		}
	}

	public function getMenuTitle() {
		if ($value = parent::getMenuTitle()) {
			return Convert::html2raw($value);
		}
	}

	public function getTitle() {
		if ($value = $this->getField("Title")) {
			return $this->removePTags($value);
		}
	}
	public function getUntranslatedTitle() {
		if ($value = $this->getField("UntranslatedTitle")) {

			return $this->removePTags($value);
		}
	}
	public function getTranslatedTitle() {
		if ($value = $this->getField("TranslatedTitle")) {
			return $this->removePTags($value);
		}
	}
	private function removePTags($value) {
		$array = array(
			'<p>' => '',
			'</p>' => '',
		);
		return strtr($value, $array);
	}
	public function TranslatorByline($links = "true") {
		//$TranslatorListNice(0)<% if OriginalLanguage %> $TranslatorBylineVerb from $OriginalLanguage<% end_if %><% if $Authors %><% loop $Authors %>. Original by $Name <% end_loop %> <% end_if %>
		$bylineText = new HTMLText();
		$byline = '';

		//Person A, Person B, Person C
		if ($this->Translators()->First()) {
			$byline .= $this->getWriterListNice($links, $this->Translators());
		}
		//translate(s) from OriginalLanguage.
		if ($this->OriginalLanguage) {
			$byline .= $this->TranslatorBylineVerb() . ' from the ' . $this->OriginalLanguage . '. ';
		}

		if ($this->Authors()->First()) {

			//Original by:
			$byline .= 'Original by ';

			//Person A and Person B.
			$byline .= $this->getWriterListNice("false", $this->Authors());
			$byline .= '.';
		}

		$bylineText->setValue($byline);

		return $bylineText;

	}

	public function getWriterListNice($links = "true", $writers) {

		$writerString = new HTMLText();

		foreach ($writers as $writer) {

			if ($links == "true") {
				$writerArray[] = '<a href="' . $writer->Link() . '">' . $writer->Name . '</a>';
			} else {
				$writerArray[] = $writer->Name;
			}
		}

		if ($writers->Count() == 2) {
			$writerString->setValue($writerArray[0] . ' and ' . $writerArray[1]);
		} else {
			$writerString->setValue(implode(', ', $writerArray));
		}

		return $writerString;

	}

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
