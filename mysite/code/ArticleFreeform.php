<?php
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use Bummzack\SortableFile\Forms\SortableUploadField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

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
        $fields->addFieldToTab('Root.ArtistInfo', new HTMLEditorField('ArtistNotes', 'Artist Notes'));

        // $fields->removeByName('Content');
        $fields->removeByName('Widgets');

        $fields->addFieldToTab('Root.TranslatorNote', HTMLEditorField::create('TranslatorNote', 'Translator note')->addExtraClass('stacked'));

        $gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
        $newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
        $fields->addFieldToTab('Root.Translators', $newGridField2);

        return $fields;
    }

}
