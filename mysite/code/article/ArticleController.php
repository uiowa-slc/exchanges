<?php
class ArticleController extends PageController {

	private static $allowed_actions = array("notes", "publishpage");
	private static $url_handlers = array(
		'notes' => 'notes',
	);

	public function notes() {
		$translatorNote = $this->TranslatorNote;
		$translators = $this->Translators();

		$Data = array(
			'TranslatorNote' => $translatorNote,
			'Translators' => $translators,
		);

		if (isset($translatorNote)) {
		} else {
		}

		return $this->Customise($Data)->renderWith(array('Article_notes', 'Page'));

	}
	public function init() {
		parent::init();
	}

}
