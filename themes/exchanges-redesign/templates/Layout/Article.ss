<div class="typography">


<div id="Content">

<% with Item %>

<h2>$Title</h2>
     
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

		$Content IS KING

	</div>
	
	<div class="threeColumn">

		$Content2

	</div>
	
	<div class="threeColumn">

		$Content3

	</div>		

<% end_if %>

<% end_with %>






<div id="Breadcrumbs">
	<p>$Breadcrumbs</p>
</div>
		
<% if Emblem %>
	EMBLEM = $Emblem 
<% end_if %> 

<div id="contributor">

<% with Item %>

	<% loop getContributor %>
	
		Name: $Name <br>
		Biography: $Content <br>
		Image: $Image <br>
		
	
	
			
	<% end_loop %>
	
<% end_with %> 

</div>
	

</div>