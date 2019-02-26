<?php
class HomePageController extends PageController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
	}

	public function getDataObjectAsPage() {
		$set = DataObjectAsPage::get();
		return $set;
	}

	public function getNewsItems($limit = 3) {
		$holder = NewsPage::get()->limit($limit)->sort("Date DESC");
		return $holder;
	}

	public function getLetterEditor() {

		$siteTreeID   = $this->FeaturedIssue()->ID;
		$issue        = Issue::get()->byID($siteTreeID);
		$editorLetter = $issue->LetterFromEditor()->First();
		return $editorLetter;
	}

}