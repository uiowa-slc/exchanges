<ul class="side-nav nav-grid">
	<li class="title-nav">
		<section class="nav-li-content" id="current-issue">
			<h1 class="exchanges-logo pulse"><a href="{$BaseHref}">exchanges</a></h1>
			<h3 class="issue-logo"><a href="$CurrentIssue.Link">$CurrentIssue.Title</a></h3>
			<%-- <div class="more-arrow">Past Issues &#x25BC;</div> --%>
		</section>	

	<ul id="title-nav-menu">
		<li class="">
		<a href="#" class="nav-deets">Home</a></li><li>
		<a href="#" class="nav-deets">About</a></li><li>
		<a href="#" class="nav-deets">Submit</a></li><li>
		<a href="#" class="nav-deets" id="more-arrow">Past Issues &#x25BC;</a></li>
	</ul>

	<%--
	<div class="row" id="title-nav-menu">
		<div class="small-1 columns">
			<a href="#">Home</a>
		</div>
		<div class="small-3 columns">
			<a href="#">About</a>
		</div>
		<div class="small-3 columns">
			<a href="#">Submit</a>
		</div>
		<div class="small-5 columns">
			<a href="#">Past Issues</a>
		</div>
	</div>
	--%>
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