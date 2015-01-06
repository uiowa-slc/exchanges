<div class="row">
	<div class="small-12 columns">
		<h2>Works contributed by $Contributor.Name :</h2>
		<hr>
		<% if $Contributor.Articles %>
		
		<ul>
		<% loop $Contributor.Articles %>
			<li><a href="$Link" alt="$Name"> $title</a> in <% loop $Issues %> <a href="$Link" alt="$Title"> $Title, $IssueDate </a><% end_loop %></li>
		<% end_loop %>
		</ul>
		<% end_if %>
	</div> 
</div>
<div class="row">
	<div class="small-12 columns">
		<p>$BiographicalDetails</p>
	</div> 
</div>