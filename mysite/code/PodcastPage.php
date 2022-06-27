<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;

class PodcastPage extends Page {

	private static $db = array(

	);

	private static $has_one = array(
		'CoverImage' => Image::class,

	);

	private static $owns = array(
		'CoverImage',
	);

	private static $allowed_children = array();

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new UploadField('CoverImage'), 'Content');

		return $fields;
	}

}
