<div class="container" id="content">
		<div class="row">
		
      		<div class="span8 column">
      		<% if FeaturedIssue %>
      		<% with FeaturedIssue %>
	      		<div id="featured">
	      		<div id="emblem" style="background-image: url({$Emblem.URL})">

	      			<span id="issue_num">$IssueDate</span></span>
	      			<span id="issue_name"><a class="titleLink" href="{$Link}">$Title</a></span>
	      			<a class="letterLink" href="{$Link}letter"><% if LetterFromEditorCustomTitle %>$LetterFromEditorCustomTitle <% else %>Letter from the editors<% end_if %></a>

	      		</div>
	      			
	      			<div class="letterPreview">
			      		<p><a href="{$Link}letter">$LetterFromEditor.Summary(300)</a></p>
			      		
	      			</div>
		      		
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
	      		<% end_if %>

	      		<% with Page("news") %>
		      		<% loop $Entries %>
		      		<div class="blog_post">
		      			<div class="postheader">
		      				<h2><a href="$Link">$Title</a></h2>
		      				<h5 class="postdate">$Date.NiceUs</h5>
		      			</div>
		      				<p>$Content.Summary(100) <a href="{$Link}">Continue Reading</a></p>
		      				
		      		</div>
		      		<% end_loop %>
	      		<% end_with %>
	      		<h1 class="band"><a href="{$BaseHref}news">See All Posts </a></h1>
	      	</div>
	      	<div class="span4 column sidebar">
		      		<% include PastIssues %>
		      		<% include WhatWereReading %>
		    </div>
	      	
		</div>
		
		
</div> <!-- /container -->
