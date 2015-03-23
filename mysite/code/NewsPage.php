<?php

class NewsPage extends BlogPost {
	private static $default_parent = 'NewsHolderPage';
	private static $db = array(
		'Date' => 'SS_Datetime',
		'Abstract' => 'Text',
		'Author' => 'Varchar(255)'
	);
}

class NewsPage_Controller extends Page_Controller {
	
}