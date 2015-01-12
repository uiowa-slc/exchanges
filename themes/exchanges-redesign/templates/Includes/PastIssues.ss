<section class="pastIssues">
	<h2>Past Issues</h2>
	<% with Page("issues-archive") %>
		<ul>
		<% loop Children %>
		<li><a href="$Link">$Title - $IssueDate</a></li>
		<% end_loop %>
		</ul>
		$Content
	<% end_with %>
</section>

