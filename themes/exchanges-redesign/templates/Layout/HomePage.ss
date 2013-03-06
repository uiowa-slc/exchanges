<div class="container" id="content">
	

		<div class="row">
		
      		<div class="span8 column">
	      		<div id="featured">
	      		<div id="emblem">
	      		
	      			<% with FeaturedIssue %>
	      			
		      			<span id="issue_num">$IssueDate</span></span>
		      			<span id="issue_name"><a class="titleLink" href="{$Link}">$Title</a></span>
		      			
		      			<h1><a class="titleLink" href="{$Link}letter">Letter From the Editor</a></h1>
		      			<p>$LetterFromEditor.Summary(300)</p>
		      			
		      			<a href="{$Link}letter">Read the letter from the editor</a>
		      			
	      			<% end_with %>
	      			
	      		</div>
	      		</div>
	      		
	      		<% with getFeaturedIssue %>
	      	
	      		<a href="$Link">
	      		<div id="gotoissue">
	      			<div>
	      				<span>go to the <strong>Table of Contents</strong></span>
	      			</div>
	      		</div>
	      		</a>
	      		
	      		<% end_with %>
	      		
	      		<h1 class="band">News</h1>

	      		<% loop getNewsItems %>

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
	      		<h1 class="band"><a href="{$BaseHref}news">See All News </a></h1>
	      	</div>


	      	<% include PastIssues %>
	      	
		</div>
		
		
</div> <!-- /container -->
