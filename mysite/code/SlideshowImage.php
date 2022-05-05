<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Security\Permission;
class SlideshowImage extends DataObject
{
    private static $db = [
        'Caption' => 'Text',
    ];

    private static $has_one = [
        'Image' => Image::class,
        'Page' => Page::class
    ];

    private static $summary_fields = [
        'Image.CMSThumbnail',
        'Caption'
    ];

    private static $owns = [
        'Image'
    ];
    public function canView($member = null)
    {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }

    public function canEdit($member = null)
    {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }

    public function canDelete($member = null)
    {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }

    public function canCreate($member = null, $context = [])
    {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }
    // It's important that you add the Versioned extension to this!
    private static $extensions = [
        Versioned::class
    ];

    public function getCMSFields(){
        $fields = new FieldList();
        $fields->push(new UploadField('Image'));
        $fields->push(new TextField('Caption'));
        $fields->removeByName('SortOrder');
        $fields->removeByName('Page');

        return $fields;
    }
}
