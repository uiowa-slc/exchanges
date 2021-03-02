<?php

use SilverStripe\Blog\Model\BlogController;
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\ORM\PaginatedList;

class NewsHolderController extends BlogController {

	private static $allowed_actions = array('podcastRss');

	private static $url_handlers = array('podcastRss' => 'podcastRSS');

	public function init() {
		parent::init();

	}
	// public function RandomPosts(){
	// 	$posts = BlogPost::get()->exclude(array('FeaturedImageID' => 0));
	// 	return $posts;
	// }

	public function BlogPagination($offset) {
		// $allPosts = $this->blogPosts ?: new ArrayList();
		$allPosts = BlogPost::get();
		// $allPosts = BlogPost::get()->exclude('ID'=>array());
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
		$start = $this->request->getVar($posts->getPaginationGetVar());
		$posts->setPageStart($start + $offset);

		return $posts;
	}

	public function podcastRss() {

		$dataRecord = $this->dataRecord;

		$this->blogPosts = $dataRecord->getPostsWithAudio();
		$feed = $this->rssFeed($this->blogPosts, $this->Link());
		return $feed;

	}

	public function FeaturedCategories() {
		return $this->getManyManyComponents('FeaturedCategories')->sort('SortOrder');
	}

}
