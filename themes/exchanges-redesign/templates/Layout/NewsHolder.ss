<div class="container" id="content">
			
	<div class="row" id="backto">
	
		<div>
			<span>$Title</span>
		</div>
	
	</div>

	<div class="row">
	
  		<div class="span8 column">
  			
      		<% loop paginatedNewsItems(3) %>
      			<% if CurrentBool %>
      				$PageNum
      			<% else %>
      				  
			      		<div class="blog_post">
			      			<div class="postheader">
			      				<h1><a href="$Link">$Title</a></h1>
			      				<span class="postdate">$Date.NiceUs</span>
			      			</div>
			      			<div class="img"></div>
			      				<p>$Content.Summary(100)</p>
			      				<a href="{$Link}">Read More</a>
			      		</div>
			      	
		      	<% end_if %>
      		<% end_loop %>
      		
      		<div>
	      		<% if paginatedNewsItems.NotFirstPage %>
	      			<a class="prev" href="$paginatedNewsItems.PrevLink">Prev</a>
	      		<% end_if %>
	      		<% if paginatedNewsItems.NotLastPage %>
	      			<a class="next" href="$paginatedNewsItems.NextLink">Next</a>
	      		<% end_if %>
	      	</div>
      		
  		</div>
  			
  		<% include PastIssues %>
  		
	</div>
	
	

</div> <!-- /container -->
	    
	    