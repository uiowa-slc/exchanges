<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;

class BlogPostExtension extends DataExtension {

	private static $has_one = array(
		'AudioClip' => File::class,
	);

	private static $owns = array(
		'AudioClip',
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab('Root.Main', $upload = new UploadField('AudioClip', 'Audio File'), 'CustomSummary');
		$featuredImageField = $fields->fieldByName('FeaturedImage');
		$fields->remove($featuredImageField);

		// $fields->addFieldToTab('Root.Main', $featuredImageField, 'Content');
	}

	public function HasTag($tagName) {
		return $this->owner->Tags()->filter(array('Title' => $tagName))->First();
	}

}
