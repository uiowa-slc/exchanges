<?php
class ContributorPage extends Page {

 static $db = array(
  
    );
    
 static $has_one = array( 

 );
 
   
   public function getCMSFields() {
        $fields = parent::getCMSFields();

     
        return $fields;
    }
    
}

class ContributorPage_Controller extends Page_Controller {
	public function show(){
	
		
		$contributorID = $this->request->param('ID');
		if ($contributorID){
			$contributor = DataObject::get_by_id("Contributor", $contributorID);
			$bio = $contributor->Content;	
	
	    	    
			$Data = array(
                'Biography' => $bio
            );
            
            print_r('Content ' . $contributor->Content); 
            
		    if(isset($contributor)){

			   return $this->Customise($Data)->renderWith(array('ContributorPage_show','Page'));
		    }else{
		    }		   
		}
		else {
			return $this->renderWith('Page');
		}
	}
}