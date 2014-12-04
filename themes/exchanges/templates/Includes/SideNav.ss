<ul class="side-nav nav-grid">
	<li class="title-nav">
		<a href="{$BaseHref}">
		<section class="nav-li-content" id="issue-menu">
			<h1 class="exchanges-logo">exchanges</h1>
			<h3 class="issue-logo">$CurrentIssue.Title</h3>
			<span class="more-arrow">Past Issues &#x25BC;</span>
		</section>
		</a>
	
	</li>
	<li class="issues-nav">
		<section class="nav-li-content">
			<p>test</p>
		</section>
	</li>
	<% with $getCurrentIssue %>
		<% loop Articles() %>
			$IssueNumber
			<% include SideNavMenuItem %>
		<% end_loop %>
	<% end_with %>
</ul>