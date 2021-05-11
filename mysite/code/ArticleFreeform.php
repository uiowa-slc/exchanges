<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;

class ArticleFreeform extends Article {

	private static $db = array(

	);

	private static $has_one = array(
	);
	private static $many_many = [

	];
	private static $many_many_extraFields = [

	];

	public function getCMSFields() {

		$fields = SiteTree::getCMSFields();

		$fields->addFieldToTab('Root.ArtistInfo', new TextField('Artist', 'Artist Credit'));
		$fields->addFieldToTab('Root.ArtistInfo', new CheckboxField('ShowArtworkCreditsInToc', 'Show artwork credits in ToC'));
		$fields->addFieldToTab('Root.ArtistInfo', new HTMLEditorField('ArtistNotes', 'Artist Notes'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('CustomByline', 'Custom byline in the table of contents')->setRows(3)->addExtraClass('stacked')->setDescription('Replaces the typical "X translates from Y"-type byline in the table of contents'), 'Content');
		// $fields->removeByName('Content');
		$fields->removeByName('Widgets');
		$fields->addFieldToTab('Root.TranslatorNote', TextField::create('TranslatorNoteButtonText', 'Translator note button text (default: "Translator Notes" if left blank)'));
		$fields->addFieldToTab('Root.TranslatorNote', HTMLEditorField::create('TranslatorNote', 'Translator note')->addExtraClass('stacked'));

		$fields->addFieldToTab('Root.InTheClassroom', HTMLEditorField::create('InTheClassroom', 'In the Classroom')->addExtraClass('stacked'));

		$gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
		$newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
		$fields->addFieldToTab('Root.Translators', $newGridField2);

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Authors', 'Authors', $this->Authors(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Authors', $newGridField);

		$fields->addFieldToTab('Root.Main', new TextField('OriginalLanguage', 'Original Language'), 'Content');

		return $fields;
	}

}
