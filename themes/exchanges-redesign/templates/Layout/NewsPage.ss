	<div class="container" id="content">
	
	
		
		<% include PageNav %>
		
		<div class="row" id="backto" style="display: block;">			
			<div>
				<span>$Title</span>
			</div>
		</div>
		
		
		
			<div class="row">
			
	      		<div class="span8 column">
	      			<p>
	      				$Content
	      			</p>
	
	      		</div>
	      	
	      		<div class="span4 column">
	      			<h1 class="band"><a href="news/">News</a></h1>
	      				<% loop newsItems(3) %>
	      					<h2><a href="$Link">$Title</a></h2>
	      					$Content.Summary(20)
	      					<p><a href="$Link">Read More</a></p>
	      				<% end_loop %>
	     
	      		</div>
	      		
			</div>
			

	
	    </div> <!-- /container -->