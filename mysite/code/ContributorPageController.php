<?php
class ContributorPageController extends PageController {
	private static $allowed_actions = array ("show");
	
	public function show(){
		$contributorID = $this->request->param('ID');
		if ($contributorID){
			$contributor = Contributor::get_by_id("Contributor", $contributorID); 
			$Data = array(
				'Contributor' => $contributor,
				);

			if(isset($contributor)){
				return $this->Customise($Data)->renderWith(array('Contributor_show','Page'));
			}else{
				//return 404 page?
			}		   
		}
		else {
			return $this->renderWith('Contributor_show','Page');
		}
	}
	
	public function getContributorArticles(){
		$contributorID = $this->request->param('ID');
		if ($contributorID){
			$contributor = Contributor::get_by_id("Contributor", $contributorID);
			$articles = $contributor->Articles();
			return $articles;
		}
	}
	public function getTableOfContents(){
		$homePage = HomePage::get()->First();
		$featuredIssue = $homePage->FeaturedIssue();
		return $featuredIssue;
	}
}