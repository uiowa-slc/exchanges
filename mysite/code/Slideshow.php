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

class Slideshow extends Article {

    private static $db = array(
        'SlideshowButtonText' => 'HTMLText'
    );

    private static $has_one = array(
    );
    private static $many_many = [
        'SlideshowImages' => 'SlideshowImage'
    ];
    private static $many_many_extraFields = [
        'SlideshowImages' => [
            'SortOrder' => 'Int',
        ]
    ];

    private static $owns = array('SlideshowImages');

    public function getCMSFields() {

        $fields = SiteTree::getCMSFields();


        $conf = GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->removeByName('Content');


        $buttonTextField = new HTMLEditorField('SlideshowButtonText', 'View slideshow button text (default: "View Slideshow")');
        $buttonTextField->setRows(1);


        $fields->addFieldToTab('Root.Slideshow', $buttonTextField );
        $fields->addFieldToTab('Root.Slideshow', new GridField('SlideshowImages', 'Images', $this->SlideshowImages(), $conf, 'Content'));
        $fields->removeByName('Widgets');

        $fields->addFieldToTab('Root.Main', new TextField('Artist', 'Artist credit'));

        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('TranslatorNote', 'Translator note')->addExtraClass('stacked'));



        $gridFieldConfig2 = GridFieldConfig_RelationEditor::create();
        $newGridField2 = new GridField('Translators', 'Translators', $this->Translators(), $gridFieldConfig2);
        $fields->addFieldToTab('Root.Translators', $newGridField2);

        return $fields;
    }

}
