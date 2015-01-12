<a href="{$BaseHref}">
				<div class="nav-link">
					<span>Home</span>
				</div>
			</a>		
			<a href="news/">
				<div class="nav-link">
					<span>News</span>
				</div>
			</a>
			<% with getCurrentIssue %>
			
				<a href="{$Link}">
				<div class="nav-link">
					<span>Current Issue</span>
				</div>
				</a>
				
			<% end_with %>
			<a href="about/">
			<div class="nav-link">
				<span>About</span>
			</div>
			</a>
			<a href="articles/">
			<div class="nav-link">
				<span>Submissions</span>
			</div>
			</a>
			<a href="issues/">
			<div class="nav-link">
				<span>Archive</span>
			</div>
			</a>
