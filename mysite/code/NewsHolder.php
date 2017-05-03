<?php

class NewsHolder extends Blog {
	private static $allowed_children = array('NewsPage');
	private static $default_child = 'NewsPage';

	private static $many_many = array(
		'FeaturedTags' => 'BlogTag'
	);

}

class NewsHolder_Controller extends Blog_Controller {

	public function init() {
		parent::init();

	
	}

}