<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Control\Director;

class Contributor extends DataObject {

	private static $db = array(
		'Name' => 'Text',
		'BiographicalDetails' => 'HTMLText',
	);

	private static $has_one = array(
		'Image' => Image::class,
	);

	private static $many_many = array(

	);
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
	public function Link() {
		$contributorPage = ContributorPage::get()->First();
		if ($contributorPage) {
			return $contributorPage->Link('show/' . $this->ID);
		}
	}

    public function AbsoluteLink(){
        $base = Director::absoluteBaseURL();
        return $base.'contributors/show/'.$this->ID;

    }
    public function CMSEditLink() {
        return '/admin/';
    }
	public function getFormattedName() {
		$name = $this->Name;
		$formattedName = str_replace('/\s+/', '&nbsp;', $this->Name);
		return $formattedName;

	}

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Content');
		$fields->removeByName('Metadata');
		$fields->removeByName(Image::class);
		$fields->removeByName('Articles');

		$fields->addFieldToTab('Root.Main', new TextField('Name'));

        if($this->isInDB()){
            $fields->addFieldToTab('Root.Main', new LiteralField('LinkField', '<p>Link: <a href="'.$this->AbsoluteLink().'">'.$this->AbsoluteLink().'</a></p>'));
        }
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('BiographicalDetails', 'Biographical Details'));



		return $fields;
	}
}
