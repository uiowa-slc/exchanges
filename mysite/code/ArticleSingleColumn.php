<?php
class ArticleSingleColumn extends Page {
	private static $db = array(
		'Title'  => 'HTMLText',
		'Artist' => 'Text',
	);

	private static $has_one = array(
		'BannerImage' => 'Image',
	);

	private static $plural_name       = 'Articles';
	private static $belongs_many_many = array(
		'Authors' => 'Author',
	);

	private static $default_parent     = "articles";
	private static $can_be_root        = false;
	private static $defaults           = array("ParentID" => 7);
	private static $listing_page_class = 'Issue';

	public function getArticleHolder() {
		$holder = ArticleHolder::get()->First();

		if ($holder) {
			return $holder;
		}
	}

	public function MoreThanOneTranslator() {
		$translators    = $this->Translators()->toArray();
		$translatorSize = count($translators);

		if ($translatorSize > 1) {
			return true;
		} else {

			return false;
		}
	}

	public function TranslatorByline($links = "true") {
		//$TranslatorListNice(0)<% if OriginalLanguage %> $TranslatorBylineVerb from $OriginalLanguage<% end_if %><% if $Authors %><% loop $Authors %>. Original by $Name <% end_loop %> <% end_if %>
		$bylineText = new HTMLText();
		$byline     = '';

		if ($this->Authors()->First()) {

			//Original by:
			$byline .= 'Original by ';

			//Person A and Person B.
			$byline .= $this->getWriterListNice("true", $this->Authors());
			$byline .= '.';
		}

		$bylineText->setValue($byline);

		return $bylineText;

	}

	public function getWriterListNice($links = "true", $writers) {

		$writerString = new HTMLText();

		foreach ($writers as $writer) {

			if ($links == "true") {
				$writerArray[] = '<a href="'.$writer->Link().'">'.$writer->Name.'</a>';
			} else {
				$writerArray[] = $writer->Name;
			}
		}

		if ($writers->Count() == 2) {
			$writerString->setValue($writerArray[0].' and '.$writerArray[1]);
		} else {
			$writerString->setValue(implode(', ', $writerArray));
		}

		return $writerString;

	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Image');
		$fields->removeByName('Metadata');

		$fields->addFieldToTab("Root.Main", new UploadField("BannerImage", "Unique image for essay"));
		$fields->addFieldToTab('Root.Main', new TextField('Artist', 'Unique image artist credit'));

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField    = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);

		return $fields;
	}

}

class ArticleSingleColumn_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}
