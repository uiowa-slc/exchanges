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

	public static function FeaturedIssue(){
		//return $this->Children()->filter(['ParentID' => $this->ID])->sort('Created DESC')->First();
        $parentID = IssueHolder::get()->filter(['ClassName' => 'IssueHolder'])->sort('Created DESC')->First()->ID;
        return Issue::get()->filter(['ParentID' => $parentID])->sort('Created DESC')->First();
	}
}
