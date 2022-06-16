<?php

use SilverStripe\Blog\Model\Blog;
use SilverStripe\Blog\Model\BlogCategory;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class NewsHolder extends Blog {

	private static $allowed_children = array('NewsPage');
	private static $default_child = 'NewsPage';

	private static $many_many = array(
		'FeaturedCategories' => BlogCategory::class,
	);

	private static $many_many_extraFields = array(
		'FeaturedCategories' => array(
			'SortOrder' => 'Int',
		),
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$conf->removeComponentsByType($conf->getComponentByType(GridFieldAddNewButton::class));
		$fields->addFieldToTab('Root.Main',
			new GridField('FeaturedCategories', 'Featured Categories', $this->FeaturedCategories(), $conf)
		);

		return $fields;
	}
	public function getPostsWithAudio() {

		$posts = $this->blogPosts->filter(array('AudioClipID:not' => 0));

		return $posts;

	}
}
