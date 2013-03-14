<div class="container" id="content">
	

		<div class="row">
		
      		<div class="span8 column">
      		
      		<% with FeaturedIssue %>
	      		<div id="featured">
	      		<div id="emblem" style="background-image: url({$Emblem.URL})">

	      			<span id="issue_num">$IssueDate</span></span>
	      			<span id="issue_name"><a class="titleLink" href="{$Link}">$Title</a></span>
	      			<a class="letterLink" href="{$Link}letter">Letter From the Editor</a>

	      		</div>
	      			
		      		<p>$LetterFromEditor.Summary(300)</p>
		      			
		      		<a href="{$Link}letter">Read the letter from the editor</a>
		      		
	      		</div>
	      		<% end_with %>
	      		
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
	      				<p>$Content.Summary(100)</p>
	      				<a href="{$Link}">Read More</a>
	      		</div>
	      		
	      		<% end_loop %>
	      		<h1 class="band"><a href="{$BaseHref}news">See All News </a></h1>
	      	</div>
	      	<div class="span4 column">
		      		<% include PastIssues %>
		      		<% include WhatWereReading %>
		    </div>
	      	
		</div>
		
		
</div> <!-- /container -->
