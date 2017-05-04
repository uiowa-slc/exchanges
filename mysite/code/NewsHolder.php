<?php

class NewsHolder extends Blog {
	private static $allowed_children = array('NewsPage');
	private static $default_child = 'NewsPage';

	private static $many_many = array(
		'FeaturedCategories' => 'BlogCategory'
	);

	public static $many_many_extraFields=array(
		'FeaturedCategories'=>array(
			'SortOrder'=>'Int'
		)
	);

}

class NewsHolder_Controller extends Blog_Controller {

	public function init() {
		parent::init();

		$conf=GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$config->removeComponentsByType($config->getComponentByType('GridFieldAddNewButton'));		
		$fields->addFieldToTab('Root.Main', 
            new GridField('FeaturedCategories', 'Featured Categories', $this->FeaturedCategories(), $conf)
        );

	
	}

	public function FeaturedCategories() {
    	return $this->getManyManyComponents('FeaturedCategories')->sort('SortOrder');
	}

}