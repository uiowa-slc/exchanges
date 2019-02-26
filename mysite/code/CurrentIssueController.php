<?php

use SilverStripe\Control\HTTPRequest;
use SilverStripe\Control\Controller;

class CurrentIssueController extends Controller {
	private static $allowed_actions = array('index');
	public function index(HTTPRequest $request) {
		if ($issue = Issue::get()->sort('Created DESC')->First()) {
			$this->redirect($issue->Link());
		}
	}

}