<?php
class GridFieldPublish extends DataExtension
{
	public function updateItemEditForm($form){
		$actions = $form->Actions();
		/*
		$publishAction = new FormAction (
		   $action = "doPublish",
		   $title = "Publish"
		);
		*/
		$actions->push(FormAction::create('doPublish', _t('GridFieldDetailForm.Publish', 'Publish'))); //May have to create publish function in GridFieldPublish?? $this->owner->Publish()
		
		//$actions->push($publishAction);
		$form->setActions($actions);
		user_error("breakpoint", E_USER_ERROR);
	}
	
	//Just trying to get something -- anything -- to happen w/ extension
	
	public function updateCMSFields(){
		user_error("breakpoint", E_USER_ERROR);
		print_r("ASDSDASD");
	}
}




