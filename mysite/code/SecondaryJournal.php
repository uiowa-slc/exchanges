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
}
