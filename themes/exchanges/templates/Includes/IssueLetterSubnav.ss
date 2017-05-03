<div class="article__subnav">
	<div class="row row--fluid">
		<div class="large-12 columns">

			<ul class="text-center card-list">


					<% with $Parent %>
						<% include IssueCard %>
					<% end_with %>


					<% if $Children %>
						<% with $Children.First %>
							<% include PoemCardNext %>
						<% end_with %>				
					<% end_if %>
			</ul>


		</div>
	</div>
</div>	
