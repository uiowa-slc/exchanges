<div class="row">
	<div class="small-12 columns">
		<h1 class="headline">$Contributor.Name</h1>
		<hr>
		<% if $Contributor.Articles %>
		<h2>Works contributed by $Contributor.Name :</h2>
		<ul>
		<% loop $Contributor.Articles %>
			<li><a href="$Link" alt="$Name"> $title </a></li>
		<% end_loop %>
		</ul>
		<% end_if %>
	</div> 
</div>
<div class="row">
	<div class="small-12 columns">
		<p>$BiographicalDetails</p>
	</div> 
</div>