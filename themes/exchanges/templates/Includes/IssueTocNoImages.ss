<ul class="toc-no-images">
	<% loop $Children %>
		<li class="toc-no-images__item">
			<h2 class="toc-no-images__header"><a href="$Link" class="">$Title</a></h2>
			<p class="toc-no-images__byline">$TranslatorByline(false)</p>
		</li>
	<% end_loop %>
</ul>