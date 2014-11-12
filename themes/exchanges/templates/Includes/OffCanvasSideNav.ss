<aside class="left-off-canvas-menu show-for-small-up hide-for-large-up">
		<ul class="off-canvas-list side-nav">
		<% with $getCurrentIssue %>
			<% loop Articles() %>
				$IssueNumber
				<% include SideNavMenuItem %>
			<% end_loop %>
		<% end_with %>
		</ul>
</aside> 