<ul class="side-nav nav-grid">
	<li class="title-nav">
		<h1><a href="{$BaseHref}"><span class="exchanges-logo">exchanges</span><span class="category">$CurrentIssue.Title</span></a></h1>
	</li>
	<% with $getCurrentIssue %>
		<% loop Articles() %>
			$IssueNumber
			<% include SideNavMenuItem %>
		<% end_loop %>
	<% end_with %>
</ul>