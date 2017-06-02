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

	public function getCMSFields(){
		
		$fields = parent::getCMSFields();

		$conf=GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));
		$conf->removeComponentsByType($conf->getComponentByType('GridFieldAddNewButton'));		
		$fields->addFieldToTab('Root.Main', 
            new GridField('FeaturedCategories', 'Featured Categories', $this->FeaturedCategories(), $conf)
        );

        return $fields;
	}
}

class NewsHolder_Controller extends Blog_Controller {

	public function init() {
		parent::init();

	}
	public function RandomPosts(){
		$posts = BlogPost::get()->exclude(array('FeaturedImageID' => 0));
		return $posts;
	}

	public function PaginatedList()
    {
        // $allPosts = $this->blogPosts ?: new ArrayList();
        $allPosts = BlogPost::get();

        $posts = new PaginatedList($allPosts);

        // Set appropriate page size
        if ($this->PostsPerPage > 0) {
            $pageSize = $this->PostsPerPage;
        } elseif ($count = $allPosts->count()) {
            $pageSize = $count;
        } else {
            $pageSize = 99999;
        }
        $posts->setPageLength($pageSize);
        // Set current page
        $start = $this->request->getVar($posts->getPaginationGetVar()) + 4;
        $posts->setPageStart($start);

        return $posts;
    }

	public function FeaturedCategories() {
    	return $this->getManyManyComponents('FeaturedCategories')->sort('SortOrder');
	}

}