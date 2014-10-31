<ul class="side-nav nav-grid">
	<li class="title-nav">
		<a href="$Link">
			<h1><img src="{$ThemeDir}/images/logo-white.png"/><span class="category">$CurrentIssue.Title</span></h1>
		</a>
	</li>
	<% with $getCurrentIssue %>
		<% loop Articles() %>
			$IssueNumber
			<% include SideNavMenuItem %>
		<% end_loop %>
	<% end_with %>
</ul>