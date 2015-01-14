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