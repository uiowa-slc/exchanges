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
		"OriginalRTL" => "Boolean"
		);




	

	private static $has_one = array( 'Image'=> 'Image');
	private static $plural_name = 'Articles';
	private static $belongs_many_many = array(
		'Issues' => 'Issue',
		'Authors' => 'Author',
		'Translators' => 'Translator'
		);

	private static $default_parent = "articles";
	private static $can_be_root = false;
	private static $defaults = array ("ParentID" => 7);

	public function defineLanguage($OriginalLanguage){
		
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
		 "zu" => "Zulu"
		);

		return array_search($OriginalLanguage, $languageCodes);
	}

	

			
	

	public function getArticleHolder(){
		$holder = ArticleHolder::get()->First();

		if($holder){
			return $holder;
		}
	}




	public function MoreThanOneTranslator() {
		$translators = $this->Translators()->toArray();
		$translatorSize = count($translators);

		if($translatorSize > 1) {
			return true;
		}else{

			return false;
		}
	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Contributor');
		$fields->removeByName('Issue');
		$fields->removeByName('Image');
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');

		$fields->addFieldToTab('Root.Main', new TextField('UntranslatedTitle',' Original Title'));
		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage','Original Language'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('OriginalRTL','Original language is read/written from right to left'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Original Work'));

		$fields->addFieldToTab('Root.Main', new TextField('TranslatedTitle',' Translated Title (if applicable)'));		
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Translated Work'));

		$fields->addFieldToTab('Root.TranslatorNote', new HTMLEditorField('TranslatorNote', 'Translator Note'));

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);
		
		$gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
		$newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
		$fields->addFieldToTab('Root.Translators', $newGridField2);

		$gridFieldConfig3 = GridFieldConfig_RelationEditor::create();
		$newGridField3 = new GridField('Issues', 'Issues', $this->Issues(), $gridFieldConfig3);
		$fields->addFieldToTab('Root.AssociatedIssues', $newGridField3);		
		
		$fields->removeByName('Content3');

		$linky = $this->Link();


		return $fields;
	}
	private static $listing_page_class = 'Issue'; 
	public function articleFormat(){
		$Content = $this->Content;
		$Content2 = $this->Content2;
		$Content3 = $this->Content3;
		$return = '';
		if ($Content){
			if ($Content2){
				$return = 'twoColumnPage';
			}
			else {
				$return = 'oneColumnPage';
			}	
		}	
		
		return $return;
	}
	function getParent(){
		return $this->Issues()->First();
	}
	public function getIssue(){
		return $this->Issues();
	}
}

class Article_Controller extends  Page_Controller {

	private static $allowed_actions = array ("notes", "publishpage");
	private static $url_handlers = array(
		'notes' => 'notes',
		'publishpage' => 'publishpage' 
		);
	public function notes(){
		$translatorNote = $this->TranslatorNote;
		$translators = $this->Translators();

		$Data = array(
			'TranslatorNote' => $translatorNote,
			'Translators' => $translators
			);

		if(isset($translatorNote)){
			return $this->Customise($Data)->renderWith(array('Article_notes','Page'));
		}else{

		}
	} 
	public function init() {
		parent::init();
	}
	public function publishPage(){
		$this->doPublish();
		print_r("Page published!");
		return $this->renderWith(array('Article_notes','Page'));	
	}
}



