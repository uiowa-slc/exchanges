<div class="typography">



<% with Item %>


     
<% if $ArticleFormat = 'oneColumnPage' %>

	<div class="singleColumn">

    	$Content
    
    </div>
		
<% else_if $ArticleFormat = 'twoColumnPage' %>

	<div class="twoColumn">

		$Content
        
	</div>
			
	<div class="twoColumn">

		$Content2
        
	</div>
		
<% else_if $ArticleFormat = 'threeColumnPage' %>

	<div class="threeColumn">

		$Content

	</div>
	
	<div class="threeColumn">

		$Content2

	</div>
	
	<div class="threeColumn">

		$Content3

	</div>		

<% end_if %>

<% end_with %>






	
	<% if Children %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>

			<div id="Breadcrumbs">
			   	<p>$Breadcrumbs</p>
			</div>
			
			<% control Item %>
				<h2>$Title</h2>
				
				$Content
			<% end_control %>
	
	<% if Children %>
		</div>
	<% end_if %>
	

	<% if Emblem %>
		EMBLEM = $Emblem 
	<% end_if %> 
	
	

</div>
