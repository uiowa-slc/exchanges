	<div class="container" id="content">
	
	
		
			<div class="row" id="backto">
			
				<div>
					<span>$ContributorName</span>
				</div>
			
			</div>
		
			<div class="row">
			
	      		<div class="span8 column">
	      			$Biography
	
	      		</div>
	      		
	      		<div class="span4 column">
	      			<h1 class="band">Table Of Contents</h1>
	      			<% with getTableOfContents %>
	      				<% include TableOfContents %> 
	      			<% end_with %>		
	      		</div>
	      		
			</div>
			

	
	    </div> <!-- /container -->