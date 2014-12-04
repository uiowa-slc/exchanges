<div class="row">
	<div class="small-12 columns">
		<h1 class="headline">$Contributor.Name</h1>
		<hr>
		<% loop $Contributor.Articles() %>
			<a href="$Link" alt="$Name"> $title </a>
		<% end_loop %>
	</div> 
</div>
<div class="row">
	<div class="small-12 columns">
		<p>$BiographicalDetails</p>
	</div> 
</div>