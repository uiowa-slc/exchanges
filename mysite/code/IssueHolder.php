<?php
class IssueHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array(
		'Issue' => 'Issue',
	);

	private static $allowed_children = array("Issue");

	private static $icon_class = 'font-icon-book';

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		return $fields;
	}

	public function FeaturedIssue(){
		return $this->Children()->sort('Created DESC')->First();
	}
}
