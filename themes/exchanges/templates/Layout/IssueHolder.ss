<article>
	<div class="row">
		<div class="large-12 columns">
			<header>
				<h1>Issue Archive</h1>
			</header>
	
			<ul class="card-list">
				<% loop Children.Sort("Created DESC") %>
					<% include IssueCard %>
				<% end_loop %>
			</ul>
			
			<h2>Older Issues</h2>
			$Content
		</div>
	</div>
</article>

