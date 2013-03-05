
	<div class="container" id="content">
	
		<div class="row">
		
      		<div class="span8 column">
      			<div id="emblem" style="background-image: {$Emblem.URL}">
      			
	      			<span id="issue_num">Issue #{$IssueNumber} for <span id="year">$IssueDate.Format("G")</span></span>
	      			<span id="issue_name">{$Title}</span>
	      			
	      			
      			<h1 class="toc">Table of Contents</h1>
      			
      			<% if LetterFromEditor %>
	      			<ul>
		      			<li class="toc">
			      			<h2><a href="{$Link}letter"><% if LetterFromEditorCustomTitle %>$LetterFromEditorCustomTitle <% else %>Letter from the editors<% end_if %></a></h2>
			      			<ul>
			      				<li>by the Editors</li>
				      		</ul>
				      	</li>
			      	</ul>
		      	<% end_if %>
		      	
		      	<% loop $Articles %>
			      	<ul>    	
				      	<li class="toc">
					      	<h2><a href="{$Link}">$Title</a></h2>
					      	
						      	<ul>
						      		<li>
						      		
						      		<% if $OriginalLanguage %>
						      		
							      		<% loop $Translators %>
							      		<a href="#">$Name</a><% if not Last %>, <% end_if %>
							      		<% end_loop %>
							      		
							      		translates from the $OriginalLanguage</li>
							      		
						      		<% end_if %>
						      		<li><em>Original by 
							      		<% loop $Authors %>
							      			<a href="#">$Name</a><% if not $Last %>, <% end_if %>
							      		<% end_loop %>
						      		</em></li>
						      	</ul>
				      	</li>
			      	</ul>
		      	<% end_loop %>
      			
				
      		</div>
      		</div>
		
      		<% include PastIssues %>
      		
		</div>
		
		

    </div> <!-- /container -->
 
  <script>

  </script>
 
