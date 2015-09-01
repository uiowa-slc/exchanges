<?php

class MigrateIssueArticlesBuildTask extends BuildTask {

	protected $title = 'Migrate Issue Articles';
	protected $description = 'Place all articles under their respective parent issue. This makes more sense.';

	protected $enabled = true;

	function run($request) {

		$articles = Article::get();

		foreach ($articles as $article) {
			$issue = $article->Issues()->First();
			echo "<li> Setting article:" . $article->Title . " parent to " . $issue->Title . "</li>";
			$article->setParent($issue);
			$article->write();

			if ($article->isPublished()) {
				$article->doPublish('Stage', 'Live');
			}

		}

	}

}