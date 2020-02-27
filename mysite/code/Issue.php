<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Model\SiteTree;
class Issue extends Page {

	private static $db = array(
		'IssueDate'                   => 'Text',
		'IssueNumber'                 => 'Text',
		'LetterFromEditorCustomTitle' => 'Text',
		'LetterFromEditor'            => 'HTMLText',
		'Transparency'                => 'Varchar(100)',
		'UseTitleDropShadow'          => 'Boolean',
		'ArtworkCredits'			  => 'HTMLText',
		'ArtworkCreditsTitle'		  => 'Text',
	);

	private static $has_one = array(
		'Emblem' => Image::class,

	);

	private static $owns = array(
		'Emblem'
	);

	private static $icon_class = 'font-icon-book-open';

	private static $plural_name = 'Issues';

	/* Deprecated but still needed for older issues until they're migrated */
	private static $many_many = array(
		'Articles' => 'Article',
	);

	private static $default_parent = 'IssueHolder';

	private static $can_be_root = false;

	private static $allowed_children = array('Article', 'ArticleSingleColumn');

	//private static $icon = array('mysite/images/tree/toc','file');

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		$fields->addFieldToTab('Root.Main', new UploadField('Emblem', 'Issue cover'));


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
		$alphadropdownfield->setEmptyString('Default (70%)');
		$fields->addFieldToTab('Root.Main', $alphadropdownfield);

		$fields->addFieldToTab('Root.Main', new CheckboxField('UseTitleDropShadow', 'Use a subtle shadow behind issue title (works well when there\'s a lot of white or bright colors in the artwork)'));

		$fields->addFieldToTab('Root.Main', $dateField = new TextField('IssueDate', 'Issue date'));
		//$fields->addFieldToTab('Root.Main', new TextField('IssueNumber', 'Issue number'));
		$fields->addFieldToTab('Root.Main', new TextField('LetterFromEditorCustomTitle', 'Letter From The Editors Custom Title (optional)'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('LetterFromEditor', 'Letter From The Editors')->addExtraClass('stacked'));

		$fields->addFieldToTab('Root.Main', new TextField('ArtworkCreditsTitle', 'Artwork Credits Title (optional, defaults to "Artwork Credits")'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('ArtworkCredits', 'Artwork Credits')->addExtraClass('stacked'));

		return $fields;
	}

	public function Articles() {
		return $this->Children();
	}

	public function getCreditsTitle() {
		if ($this->ArtworkCreditsTitle) {
			return $this->ArtworkCreditsTitle;
		} else {
			return 'Artwork Credits';
		}
	}

	public function HasArticleImages(){
		$children = $this->Children();

		foreach($children as $child){

			if($child->BannerImageID != 0){
				return true;
			}
		}
	}

	public function getLetterTitle() {
		if ($this->LetterFromEditorCustomTitle) {
			return $this->LetterFromEditorCustomTitle;
		} else {
			return 'Letter From The Editor';
		}
	}

	public function getCreditsLink() {
		return $this->Link().'credits/';
	}

	public function getLetterLink() {
		return $this->Link().'letter/';
	}

	public function RandomArticles() {
		return SiteTree::get()->filter('ParentID', $this->ID)->sort('RAND()');
	}

}
