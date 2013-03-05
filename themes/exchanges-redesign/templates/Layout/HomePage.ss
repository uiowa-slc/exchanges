<div class="container" id="content">
	

		<div class="row">
		
      		<div class="span8 column">
	      		<div id="featured">
	      		<div id="emblem">
	      		
	      			<% with FeaturedIssue %>
	      			
		      			<span id="issue_num">Issue #$IssueNumber <% if IssueDate %> for <span id="year">$getYear</span><% end_if %></span>
		      			<span id="issue_name">$Title</span>
		      			
		      	
	      			
	      				
		      			<h1>Letter From the Editor</h1>
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
	      				<h1>$Title</h1>
	      				<span class="postdate">$Date</span>
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

<div id="footer">
		<div class="container-fluid" id="nav">
			<div class="container">
		<div class="row">
			<a href="index.html">
				<div class="nav-link">
					<span>News</span>
				</div>
			</a>
			<a href="toc.html">
			<div class="nav-link">
				<span>Current Issue</span>
			</div>
			</a>
			<div class="nav-link">
				<span>About</span>
			</div>
			<div class="nav-link">
				<span>Submissions</span>
			</div>
			<div class="nav-link">
				<span>Archives</span>
			</div>
		</div>
		</div>
		</div>
		<div class="row">
		<div class="container-fluid">
		<div class="container">
		<span id="disability">
		Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact Nancy Abram in advance at 319-335-3414.
		</span>
		<div id="uiowa">
		<img src="themes/exchanges-redesign/images/uiowa.png" />
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>

