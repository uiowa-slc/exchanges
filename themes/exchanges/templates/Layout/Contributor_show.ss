<div class="row content-page">
	<div class="small-12 columns">
		<h2>Works contributed by {$Contributor.Name}:</h2>
		<% if $BiographicalDetails %><p>$BiographicalDetails</p><% end_if %>
		<hr />
		<% if $Contributor.Articles %>
			<% loop $Contributor.Articles %>
				<h3><a href="$Link">$Title</a></h3>
				<p>$TranslatorByline<br />
				<% loop $Issues %> <a href="$Link" alt="$Title">$Title, $IssueDate </a><% end_loop %>
				</p>				
			<% end_loop %>
		<% end_if %>
	</div> 
</div>
