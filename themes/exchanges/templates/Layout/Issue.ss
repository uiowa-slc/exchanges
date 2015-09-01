<div class="row">
	<div class="large-6 large-centered columns end text-center table-of-contents">
		<h2>Table of Contents</h2>
		<% loop $Children %>
			<article>
				<h3><a href="$Link">$Title</a></h3>
				<p>$TranslatorByline</p>
			</article>
		<% end_loop %>
	</div>
</div>

<% include ArticleSubnav %>