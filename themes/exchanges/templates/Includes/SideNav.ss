<ul class="side-nav nav-grid">
	<li class="title-nav">
		<section class="nav-li-content" id="current-issue">
			<h1 class="exchanges-logo pulse"><a href="{$BaseHref}">exchanges</a></h1>
			<h3 class="issue-logo"><a href="$CurrentIssue.Link">$CurrentIssue.Title</a></h3>
			<div class="more-arrow">Past Issues &#x25BC;</div>
		</section>	
	</li>
	<li id="issues-nav">
		<section class="nav-li-content">
			<ul>
				<% loop $AllIssues.Sort(Sort DESC) %>
					<li><a href="$Link">$IssueNumber $Title <span class="nav-deets">$IssueDate</span></a></li>
				<% end_loop %>
					<li><a href="{$BaseHref}/issues-archive/">Older Issues</a></li>
			</ul>
		</section>
	</li>
	<% loop $CurrentIssue.Articles() %>
		<% include SideNavMenuItem %>
	<% end_loop %>
</ul>