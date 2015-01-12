<div class="container" id="content">
	<% include PageNav %>

	<div class="row no-center">
		<div class="span8 column">
			<% with $Contributor %>
				<h1>$Name</h1>
				$BiographicalDetails
				<h2>Works Contributed by $Name:</h2>
				<ul>
					<% loop Articles %>
					<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			<% end_with %>
		</div>

		<div class="span4 column sidebar">
			<% include NewsSidebar %>
		</div>
	</div>

</div> <!-- /container -->