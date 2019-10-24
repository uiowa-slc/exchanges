<?php
class SecondaryJournal extends IssueHolder {

	private static $db = array(


	);

	private static $has_one = array(
		'Image' => 'Image'
	);

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		return $fields;
	}

	public static function FeaturedIssue(){
		//return $this->Children()->filter(['ParentID' => $this->ID])->sort('Created DESC')->First();
        $parentID = IssueHolder::get()->filter(['ClassName' => 'SecondaryJournal'])->sort('Created DESC')->First()->ID;
        return Issue::get()->filter(['ParentID' => $parentID])->sort('Created DESC')->First();
	}
}
