<section class="pastIssues">
	<h1 class="band">Past Issues</h1>
	
	<% with Page("issues-archive") %>
		<ul>
		<% loop Children %>
		<li><a href="$Link">$Title - $IssueDate</a></li>
		<% end_loop %>
		</ul>
		$Content
	
	<% end_with %>
</section>

