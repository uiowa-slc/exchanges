<aside class="left-off-canvas-menu show-for-small-up hide-for-large-up">
		<ul class="off-canvas-list side-nav">
			<li class="title-nav">
				<ul id="title-nav-menu">
					<li class="">
					<a href="{$BaseHref}" class="nav-deets" id="home" >Home</a></li><li>
					<a href="about" class="nav-deets" >About</a></li><li>
					<a href="submissions" class="nav-deets" >Submit</a></li><li>
					<span href="#!" class="nav-deets moreissues" >Issues &#x25BC;</span></li>
				</ul>
			</li>
			<li class="pastissues">
				<section class="nav-li-content">
					<ul>
						<% loop $AllIssues.Sort(Sort DESC) %>
							<li><a href="$Link">$IssueNumber $Title <span class="nav-deets">$IssueDate</span></a></li>
						<% end_loop %>
							<li><a href="{$BaseHref}/issues-archive/">Older Issues</a></li>
					</ul>
				</section>
			</li>
		<% include SideNavIssue %>
		<% loop $CurrentIssue.Children %>
			<% include SideNavMenuItem %>
		<% end_loop %>
		</ul>
</aside> 