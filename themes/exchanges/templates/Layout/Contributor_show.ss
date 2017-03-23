<% if $Contributor.BiographicalDetails %>
<div class="row">
	<div class="small-12 large-8 large-centered columns">
		<h2>About $Contributor.Name</h2>
		<p>$Contributor.BiographicalDetails</p>
	</div>
</div>
<% end_if %>
<div class="row">
	<div class="small-12 columns">
		<h2>Works contributed by <span class="text-nowrap">{$Contributor.Name}</span>:</h2>
		<hr />
		<% if $Contributor.Articles %>
			<ul class="small-block-grid-1 large-block-grid-3">
				<% loop $Contributor.Articles %>
					<% include PoemCard %>
				<% end_loop %>
			</ul>
		<% end_if %>
				
	</div> 	
</div>
