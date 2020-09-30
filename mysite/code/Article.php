<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Core\Convert;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\FieldType\DBText;

class Article extends Page {
	private static $db = array(
		'Title' => 'HTMLText',
		'IsPublished' => 'Boolean',
		'OriginalLanguage' => 'Text',
		'OriginalTitleUseAltFont' => 'Boolean',
		'UntranslatedTitle' => 'HTMLText',
		'TranslatedTitle' => 'HTMLText',
		'Translator' => 'HTMLText',
		'Content2' => 'HTMLText',
		'Content3' => 'HTMLText',
		'TranslatorNote' => 'HTMLText',
		'TranslatorNoteButtonText' => 'Text',
		'OriginalWorkButtonText' => 'Text',
		'InTheClassroom' => 'HTMLText',
		'TranslationRTL' => 'Boolean',
		'OriginalRTL' => 'Boolean',
		'IsCompilation' => 'Boolean',
		'Artist' => 'Text',
		'ArtistNotes' => 'HTMLText',
		'ShowFullSizeImage' => 'Boolean',
		'ShowCreditsLink' => 'Boolean',
	);

	private static $has_one = array(
		'BannerImage' => Image::class,
		'FullSizeImage' => Image::class,
	);

	private static $plural_name = 'Articles';
	private static $belongs_many_many = array(
		'Issues' => 'Issue',
		'Authors' => 'Author',
		'Translators' => 'Translator',
	);

	private static $icon_class = 'font-icon-p-a';

	private static $default_parent = "articles";
	private static $can_be_root = false;
	private static $defaults = array("ParentID" => 7);

	public function languageCode() {

		$languageCodes = array(
			"aa" => "Afar",
			"ab" => "Abkhazian",
			"ae" => "Avestan",
			"af" => "Afrikaans",
			"ak" => "Akan",
			"am" => "Amharic",
			"an" => "Aragonese",
			"ar" => "Arabic",
			"as" => "Assamese",
			"av" => "Avaric",
			"ay" => "Aymara",
			"az" => "Azerbaijani",
			"ba" => "Bashkir",
			"be" => "Belarusian",
			"bg" => "Bulgarian",
			"bh" => "Bihari",
			"bi" => "Bislama",
			"bm" => "Bambara",
			"bn" => "Bengali",
			"bo" => "Tibetan",
			"br" => "Breton",
			"bs" => "Bosnian",
			"ca" => "Catalan",
			"ce" => "Chechen",
			"ch" => "Chamorro",
			"co" => "Corsican",
			"cr" => "Cree",
			"cs" => "Czech",
			"cu" => "Church Slavic",
			"cv" => "Chuvash",
			"cy" => "Welsh",
			"da" => "Danish",
			"de" => "German",
			"dv" => "Divehi",
			"dz" => "Dzongkha",
			"ee" => "Ewe",
			"el" => "Greek",
			"en" => "English",
			"eo" => "Esperanto",
			"es" => "Spanish",
			"et" => "Estonian",
			"eu" => "Basque",
			"fa" => "Persian",
			"ff" => "Fulah",
			"fi" => "Finnish",
			"fj" => "Fijian",
			"fo" => "Faroese",
			"fr" => "French",
			"fy" => "Western Frisian",
			"ga" => "Irish",
			"gd" => "Scottish Gaelic",
			"gl" => "Galician",
			"gn" => "Guarani",
			"gu" => "Gujarati",
			"gv" => "Manx",
			"ha" => "Hausa",
			"he" => "Hebrew",
			"hi" => "Hindi",
			"ho" => "Hiri Motu",
			"hr" => "Croatian",
			"ht" => "Haitian",
			"hu" => "Hungarian",
			"hy" => "Armenian",
			"hz" => "Herero",
			"ia" => "Interlingua (International Auxiliary Language Association)",
			"id" => "Indonesian",
			"ie" => "Interlingue",
			"ig" => "Igbo",
			"ii" => "Sichuan Yi",
			"ik" => "Inupiaq",
			"io" => "Ido",
			"is" => "Icelandic",
			"it" => "Italian",
			"iu" => "Inuktitut",
			"ja" => "Japanese",
			"jv" => "Javanese",
			"ka" => "Georgian",
			"kg" => "Kongo",
			"ki" => "Kikuyu",
			"kj" => "Kwanyama",
			"kk" => "Kazakh",
			"kl" => "Kalaallisut",
			"km" => "Khmer",
			"kn" => "Kannada",
			"ko" => "Korean",
			"kr" => "Kanuri",
			"ks" => "Kashmiri",
			"ku" => "Kurdish",
			"kv" => "Komi",
			"kw" => "Cornish",
			"ky" => "Kirghiz",
			"la" => "Latin",
			"lb" => "Luxembourgish",
			"lg" => "Ganda",
			"li" => "Limburgish",
			"ln" => "Lingala",
			"lo" => "Lao",
			"lt" => "Lithuanian",
			"lu" => "Luba-Katanga",
			"lv" => "Latvian",
			"mg" => "Malagasy",
			"mh" => "Marshallese",
			"mi" => "Maori",
			"mk" => "Macedonian",
			"ml" => "Malayalam",
			"mn" => "Mongolian",
			"mr" => "Marathi",
			"ms" => "Malay",
			"mt" => "Maltese",
			"my" => "Burmese",
			"na" => "Nauru",
			"nb" => "Norwegian Bokmal",
			"nd" => "North Ndebele",
			"ne" => "Nepali",
			"ng" => "Ndonga",
			"nl" => "Dutch",
			"nn" => "Norwegian Nynorsk",
			"no" => "Norwegian",
			"nr" => "South Ndebele",
			"nv" => "Navajo",
			"ny" => "Chichewa",
			"oc" => "Occitan",
			"oj" => "Ojibwa",
			"om" => "Oromo",
			"or" => "Oriya",
			"os" => "Ossetian",
			"pa" => "Panjabi",
			"pi" => "Pali",
			"pl" => "Polish",
			"ps" => "Pashto",
			"pt" => "Portuguese",
			"qu" => "Quechua",
			"rm" => "Raeto-Romance",
			"rn" => "Kirundi",
			"ro" => "Romanian",
			"ru" => "Russian",
			"rw" => "Kinyarwanda",
			"sa" => "Sanskrit",
			"sc" => "Sardinian",
			"sd" => "Sindhi",
			"se" => "Northern Sami",
			"sg" => "Sango",
			"si" => "Sinhala",
			"sk" => "Slovak",
			"sl" => "Slovenian",
			"sm" => "Samoan",
			"sn" => "Shona",
			"so" => "Somali",
			"sq" => "Albanian",
			"sr" => "Serbian",
			"ss" => "Swati",
			"st" => "Southern Sotho",
			"su" => "Sundanese",
			"sv" => "Swedish",
			"sw" => "Swahili",
			"ta" => "Tamil",
			"te" => "Telugu",
			"tg" => "Tajik",
			"th" => "Thai",
			"ti" => "Tigrinya",
			"tk" => "Turkmen",
			"tl" => "Tagalog",
			"tn" => "Tswana",
			"to" => "Tonga",
			"tr" => "Turkish",
			"ts" => "Tsonga",
			"tt" => "Tatar",
			"tw" => "Twi",
			"ty" => "Tahitian",
			"ug" => "Uighur",
			"uk" => "Ukrainian",
			"ur" => "Urdu",
			"uz" => "Uzbek",
			"ve" => "Venda",
			"vi" => "Vietnamese",
			"vo" => "Volapuk",
			"wa" => "Walloon",
			"wo" => "Wolof",
			"xh" => "Xhosa",
			"yi" => "Yiddish",
			"yo" => "Yoruba",
			"za" => "Zhuang",
			"zh" => "Chinese",
			"zu" => "Zulu",
		);
		//
		return array_search($this->OriginalLanguage, $languageCodes);
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

		$fields->addFieldToTab("Root.Main", new UploadField("BannerImage", "Unique image for poem (1920 x 640 pixels or 3:1 ratio preferred)"));

		$fields->addFieldToTab('Root.Main', new TextField('Artist', 'Unique image artist credit'));

		//TODO: Make sure this shows up on Article.ss, currently used only in ArticleFreeform page type:
		//$fields->addFieldToTab('Root.ArtistInfo', new HTMLEditorField('ArtistNotes', 'Artist Notes'));

		$fields->addFieldToTab('Root.Main', new CheckboxField('ShowCreditsLink', 'Show link to artwork credits on this piece'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('ShowFullSizeImage', 'Enable full popup link to image'));
		$fields->addFieldToTab("Root.Main", new UploadField("FullSizeImage", "Specific image to be used for full popup (optional, we use the 'unique image' field if this isn't filled out)"));

		$fields->addFieldToTab('Root.Main', $titleField);
		$fields->addFieldToTab('Root.Main', $untranslatedTitleField);
		$fields->addFieldToTab('Root.Main', new CheckboxField('OriginalTitleUseAltFont', 'Use an alternate font for the original title (only check if the original title looks strange)'));
		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage', 'Original Language'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('OriginalRTL', 'Original language is read/written from right to left'));
		$fields->addFieldToTab('Root.Main', TextField::create('OriginalWorkButtonText', 'Original Work Button Text')->setDescription(' (default: "Original" if left blank)'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Original work')->addExtraClass('stacked'));

		$translatedTitleField = new HTMLEditorField('TranslatedTitle', ' Translated title');
		$translatedTitleField->setRows(1);

		$fields->addFieldToTab('Root.Main', $translatedTitleField);
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content2', 'Translated work')->addExtraClass('stacked'));

		$fields->addFieldToTab('Root.TranslatorNote', TextField::create('TranslatorNoteButtonText', 'Translator note button text (default: "Translator Notes" if left blank)'));
		$fields->addFieldToTab('Root.TranslatorNote', HTMLEditorField::create('TranslatorNote', 'Translator note')->addExtraClass('stacked'));

		$fields->addFieldToTab('Root.InTheClassroom', HTMLEditorField::create('InTheClassroom', 'In the Classroom')->addExtraClass('stacked'));

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

	public function getOriginalWorkButtonTextCustom() {
		if ($this->OriginalWorkButtonText) {
			return $this->OriginalWorkButtonText;
		} else {
			return 'Original';
		}

	}

	public function getTranslatorNoteButtonTextCustom() {

		if ($this->TranslatorNoteButtonText) {
			return $this->TranslatorNoteButtonText;
		} else {
			return 'Translator Note';
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
		$bylineText = new DBText(null);
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

	public function getWriterListNice($links = "true", $writers) {

		$writerString = new DBText(null);

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

}
