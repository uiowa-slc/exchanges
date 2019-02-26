<?php

use SilverStripe\Dev\BuildTask;

class MigrateNewsPagesBuildTask extends BuildTask {

	protected $title = 'Migrate News Pages to Blog Posts';
	protected $description = 'Run after /dev/build';

	protected $enabled = true;

	function run($request) {

		$pages = NewsPage::get();

		foreach($pages as $page){
			$page->PublishDate = $page->Date;
			$page->InheritSideBar = true;
			echo "<li>Changing ".$page->Title;

			$page->write();
			if($page->isPublished()){
				$page->doPublish();
				echo "<strong> and publishing</strong>";
			}

			echo ".</li>";
		}

	}

}