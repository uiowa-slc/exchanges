<article>
	<header>
		<h1>$Title</h1>
		<h2>Testing</h2>
	</header>
	<div class="row">
		<div class="large-9 columns">
			<div class="content-text">
				<ul>
					<% loop AllContributors %>
						<li><a href="$Link">$FirstName $LastName</a></li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</article>

