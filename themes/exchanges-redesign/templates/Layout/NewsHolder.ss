<div class="container" id="content">
			
	<div class="row" id="backto">
	
		<div>
			<span>$Title</span>
		</div>
	
	</div>

	<div class="row">
	
  		<div class="span8 column">
  			
      		<% loop getNewsItems(3) %>

      		<div class="blog_post">
      			<div class="postheader">
      				<h1><a href="$Link">$Title</a></h1>
      				<span class="postdate">$Date.NiceUs</span>
      			</div>
      			<div class="img"></div>
      				<p>$Content.Summary(100)</p>
      				<a href="{$Link}">Read More</a>
      		</div>
      		
      		
      		<% end_loop %>

  		</div>
  			
  		<% include PastIssues %>
  		
	</div>
	
	

</div> <!-- /container -->
	    
	    