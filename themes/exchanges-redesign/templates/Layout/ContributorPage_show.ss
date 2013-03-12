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
	      			<h1 class="band">Past Issues</h1>
	      			<ul>
	      			<% loop getContributorArticles %>
	      			
	      				<li><a href="$Link">$Title</a></li>
	      				
	      				<% loop getIssue %>
	      					<li>In Issue <a href="$Link">$Title</a></li>
	      				<% end_loop %>
	      			<% end_loop %>	
	      			</ul>	
	      		</div>
	      		
			</div>
			

	
	    </div> <!-- /container -->