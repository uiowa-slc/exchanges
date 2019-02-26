<?php
class IssueController extends PageController {

	private static $allowed_actions = array('letter', 'credits');

	private static $url_handlers = array(
		'letter' => 'letter',
		'credits' => 'credits',
	);

	public function init() {
		parent::init();
		//print_r($this->getClassName());
		//Session::set('issue', Issue::get_by_id('Issue', $this->ID));
	}

	public function credits() {
		$credits = $this->ArtworkCredits;
		if ($credits) {

			$Data = array(
				'Content'      => $credits,
				'Parent'       => $this,
				'ClassName'    => 'Article',
				'BannerImage'  => $this->obj('Emblem'),
				'NextPage'     => $this->Children()->First,
				'PreviousPage' => Page::get()->filter(array('URLSegment' => 'home'))->First,
			);

		} else {
			$Data = array('CreditsText' => '');
		}

		return $this->Customise($Data)->renderWith(array('Issue_credits', 'Page'));
	}

	public function letter() {
		$letterText = $this->LetterFromEditor;
		if ($letterText) {

			$Data = array(
				'Content'      => $letterText,
				'Parent'       => $this,
				'ClassName'    => 'Article',
				'BannerImage'  => $this->obj('Emblem'),
				'NextPage'     => $this->Children()->First,
				'PreviousPage' => Page::get()->filter(array('URLSegment' => 'home'))->First,
			);

		} else {
			$Data = array('LetterText' => '');
		}

		return $this->Customise($Data)->renderWith(array('Issue_letter', 'Page'));
	}

}
