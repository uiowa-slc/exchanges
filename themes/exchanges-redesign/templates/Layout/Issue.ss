<div class="container" id="content">
	

		<div class="row">
		
      		<div class="span8 column">
	      		<div id="featured">
	      		<div id="emblem">
	      			<span id="issue_num">Issue #14 for <span id="year">2013</span></span>
	      			<span id="issue_name">Current Issue</span>
	      			
	      			<% loop getLetterEditor %>
	      			
		      			<h1>Letter From the Editor</h1>
		      			<p>$Content.Summary(300)</p>
		      			<a href="$Link">Read more</a>
	      			<% end_loop %>
	      			
	      		</div>
	      		</div>
	      		
	      		<% with getTOC %>
	      	
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
	      		</div>
	      		
	      		<% end_loop %>

	      	</div>


	      	<% include PastIssues %>
	      	
		</div>
</div> <!-- /container -->


	
	<!--
	
	<div id="toc"> $Content </div>
	<div id="toc_extra">
		<% if ContentsImage %>
		$ContentsImage
		<% end_if %>
	</div>
	<!--
	<div id="emblem">
		<% if Emblem %>
			$Emblem
		<% end_if %>
	
	</div>
	
	-->
	
	<!--
	
	BEFORE ITEMS 
	 <% loop Items %>                <li>
                <h2>$Title AAA</h2>
                <p>$Content.FirstParagraph</p>
                <a href="$Link">View</a>
            </li>
            $Debug
   <% end_loop %>
   
   -->
   
   <!--
   
   CONTRIBUTORS ASSOCIATED WITH THIS ISSUE:<br><br>
   <% loop listContributors %>
   		Link = $Link<br><br>
   <% end_loop %>
   
   -->
   <br><br><br>
   
   <!--
   ARTICLES ASSOCIATED WITH THIS ISSUE:<br><br>
   <% loop listArticles %>
   		Link = $Link<br><br>
   		
   <% end_loop %>
   
  dumbTest = $dumbTest
  supperTest = $superTest
 
  <% loop getDataObjectAsPage %>
  	$Debug
  <% end_loop %>
  
  -->
  
 
  
 
