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
		
		    $contributor = Contributor::get_by_id("Contributor", $contributorID);
			
			$contributor = Article::get()->last();
			print_r($contributor);
				
			$bio = $contributor->BiographicalDetails;	
			$contribName = $contributor->Name;
	    	    
			$Data = array(
                'Biography' => $bio,
                'ContributorName' => $contribName
            );
            
            
		    if(isset($contributor)){

			   return $this->Customise($Data)->renderWith(array('ContributorPage_show','Page'));
		    }else{
		    }		   
		}
		else {
			return $this->renderWith('Page');
		}
	}
	
	public function getTableOfContents(){
	
			 $homePage = HomePage::get()->First();
			 $featuredIssue = $homePage->FeaturedIssue();
			 return $featuredIssue;
	}
}