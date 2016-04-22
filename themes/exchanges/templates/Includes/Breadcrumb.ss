<div class="row">
	<div class="medium-4 columns <% if not $Artist %>end<% end_if %>">
		<a href="$Parent.Link" class="button breadcrumb tiny">$Parent.Title</a>
	</div>
	<% if $Artist %>
		<div class="medium-7 medium-offset-1 columns">
			<p class="artist-credit">Image credit: $Artist</p>
		</div>
	<% end_if %>
</div>