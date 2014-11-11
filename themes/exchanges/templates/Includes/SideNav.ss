<ul class="side-nav nav-grid">
	<li class="title-nav">
		<a href="{$BaseHref}">
			<h1><span class="exchanges-logo">exchanges</span><span class="category">$CurrentIssue.Title</span></h1>
		</a>
	</li>
	<% with $getCurrentIssue %>
		<% loop Articles() %>
			$IssueNumber
			<% include SideNavMenuItem %>
		<% end_loop %>
	<% end_with %>
</ul>