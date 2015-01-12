<div class="container" id="content">
	<div class="row">
		<div class="span8 column">
	  		<h1><a href="{$Link}">$Title</a></h1>
	  		
	  		<h4>Notes on Translation</h4>
			$TranslatorNote
			<br />
			<% loop Translators %><% if not First %>, <% end_if %><a href="$Link">$Name</a><% end_loop %>
		</div>
		<div class="span4 column">
			<% with Issues.First %>
				<h1><a href="$Link">$Title</a></h1>
				<% include TableOfContents %>
			<% end_with %>
		</div>
	</div>
</div> <!-- /container -->