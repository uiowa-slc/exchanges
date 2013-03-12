
	<div class="container" id="content">
	
		<div class="row">
		
      		<div class="span8 column">
      			<div id="emblem" style="background-image: {$Emblem.URL}">
      			
	      			<span id="issue_num">Issue #{$IssueNumber}</span>
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
		      	
		      	<% include TableOfContents %>
      			
				
      		</div>
      		</div>
      		
      		<div class="span4 column">
      			<% include PastIssues %>
      		</div>
		</div>
		
		

    </div> <!-- /container -->
 
  <script>

  </script>
 
