<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Core\Convert;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\FieldType\DBHTMLText;

class ArticleSingleColumn extends Page {
	private static $db = array(
		'Title' => 'HTMLText',
		'TranslatedTitle' => 'HTMLText',
		'Artist' => 'Text',
		'OriginalLanguage' => 'Text',
		'OriginalWorkButtonText' => 'Text',
	);

	private static $has_one = array(
		'BannerImage' => Image::class,
	);

	private static $plural_name = 'Articles';
	private static $belongs_many_many = array(
		'Authors' => 'Author',
		'Translators' => 'Translator',
	);

	private static $default_parent = "articles";
	private static $can_be_root = false;
	private static $defaults = array("ParentID" => 7);
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
	public function getOriginalWorkButtonTextCustom() {
		if ($this->OriginalWorkButtonText) {
			return $this->OriginalWorkButtonText;
		} else {
			return 'Original';
		}

	}
	public function TranslatorByline($links = "true") {

		$bylineText = new DBHTMLText();
		$byline = '';

		if ($this->Authors()->First()) {

			$originalButtonText = $this->getOriginalWorkButtonTextCustom();
			//Original by:
			$byline .= $originalButtonText . ' by ';

			//Person A and Person B.
			$byline .= $this->getWriterListNice($links, $this->Authors());
			$byline .= '.';
		}

		$bylineText->setValue($byline);

		return $bylineText;

	}

	public function getWriterListNice($links = "true", $writers = array()) {

		$writerString = new DBHTMLText();

		foreach ($writers as $writer) {

			if ($links == "true") {
				$writerFormattedName = str_replace(' ', '&nbsp;', $writer->Name);
			} else {
				$writerFormattedName = $writer->Name;
			}

			if ($links == "true") {
				$writerArray[] = '<a href="' . $writer->Link() . '" class="text-nowrap">' . $writerFormattedName . '</a>';
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

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName(Image::class);
		$fields->removeByName('Metadata');

		$fields->addFieldToTab("Root.Main", new UploadField("BannerImage", "Unique image for poem"));
		$fields->addFieldToTab('Root.Main', new TextField('Artist', 'Unique image artist credit'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('ShowArtworkCreditsInToc', 'Show artwork credits in ToC'));
		$fields->addFieldToTab('Root.Main', TextField::create('OriginalWorkButtonText', 'Original Work Button Text')->setDescription(' (default: "Original" if left blank)'));
		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage', 'Original Language'));

		$translatedTitleField = new HTMLEditorField('TranslatedTitle', ' Translated title');
		$translatedTitleField->setRows(1);
		$fields->addFieldToTab('Root.Main', $translatedTitleField, 'Content');

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);

		$gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
		$newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
		$fields->addFieldToTab('Root.Translators', $newGridField2);

		return $fields;
	}

}
