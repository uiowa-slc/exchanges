<?php

class CurrentIssueController extends Controller {
	private static $allowed_actions = array('index');
	public function index(SS_HTTPRequest $request) {
		if ($issue = Issue::get()->sort('Created DESC')->First()) {
			$this->redirect($issue->Link());
		}
	}

}