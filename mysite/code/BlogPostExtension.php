<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;

class BlogPostExtension extends DataExtension {

	private static $has_one = array(
		'AudioClipTranscript' => File::class,
		'AudioClip' => File::class,
	);

	private static $owns = array(
		'AudioClip',
		'AudioClipTranscript',
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab('Root.Main', $upload = new UploadField('AudioClip', 'Audio File'), 'CustomSummary');
		$fields->addFieldToTab('Root.Main', $upload = new UploadField('AudioClipTranscript', 'Audio Transcript'), 'CustomSummary');
		$featuredImageField = $fields->fieldByName('FeaturedImage');
		$fields->remove($featuredImageField);

		// $fields->addFieldToTab('Root.Main', $featuredImageField, 'Content');
	}

	public function HasTag($tagName) {
		return $this->owner->Tags()->filter(array('Title' => $tagName))->First();
	}

}
