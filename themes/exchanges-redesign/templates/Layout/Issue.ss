<%-- old-redesign --%>
<div class="container" id="content">
		<div class="row">
			<div class="span12 column">
				<div id="emblem" style="background-image: url({$Emblem.URL})">
	      			<span id="issue_num">{$IssueDate}</span>
	      			<span id="issue_name">{$Title}</span>
      			</div>

			</div>
      		<div class="span8 column">

      			<h1 class="toc">Table of Contents</h1>
	      			<% if LetterFromEditor %>
		      			<h2><a href="{$Link}letter"><% if LetterFromEditorCustomTitle %>$LetterFromEditorCustomTitle <% else %>Letter from the editors<% end_if %></a></h2><p>by the editors</p>
			      	<% end_if %>
			      	<div class="submissions-toc">
			      		<% include TableOfContents %>
		      		</div><!-- end .toc -->
      		</div>
      		
      		<div class="span4 column">
      			<% include PastIssues %>
      		</div>
		</div>
</div> <!-- /container -->
