<ul class="side-nav nav-grid">
	<li class="title-nav">
		<a href="{$BaseHref}">
		<section class="nav-li-content">
			<h1 class="exchanges-logo">exchanges</h1>
			<h3 class="issue-logo">$CurrentIssue.Title</h3>
		</section>
		</a>
	
	</li>
	<% with $getCurrentIssue %>
		<% loop Articles() %>
			$IssueNumber
			<% include SideNavMenuItem %>
		<% end_loop %>
	<% end_with %>
</ul>