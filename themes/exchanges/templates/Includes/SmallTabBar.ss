<nav class="tab-bar show-for-small-up hide-for-large-up">
	<section class="left-small">
		<a class="left-off-canvas-toggle menu-icon"><span></span></a>
	</section>
	<section class="middle tab-bar-section">
		<h1><a href="{$BaseHref}"><span class="exchanges-logo">exchanges</span></a></h1>
	</section>
	<section class="right">
		<a href="$CurrentIssue.Link" class="tiny button radius split">$CurrentIssue.Title.LimitCharacters(15)<span data-dropdown="drop"></span></a>
		<br> 
		<ul id="drop" class="f-dropdown" data-dropdown-content> 
			<% loop $AllIssues %>
			<li><a href="$Link">$IssueNumber $Title <span class="nav-deets">$IssueDate</span></a></li> 
			<% end_loop %>
		</ul>
	</section>
</nav>
