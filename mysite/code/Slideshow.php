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
        'SlideshowButtonText' => 'Text'
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

    public function getCMSFields() {

        $fields = SiteTree::getCMSFields();


        $conf = GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $conf->removeByName('Content');


        $fields->addFieldToTab('Root.Slideshow', TextField::create('SlideshowButtonText', 'View slideshow button text (default: "View Slideshow")'));
        $fields->addFieldToTab('Root.Slideshow', new GridField('SlideshowImages', 'Images', $this->SlideshowImages(), $conf, 'Content'));
        $fields->removeByName('Widgets');

        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('TranslatorNote', 'Translator note')->addExtraClass('stacked'));

        return $fields;
    }

}
