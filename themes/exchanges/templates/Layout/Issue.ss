<div class="row">
	<!--<div class="large-6 columns">
			<% if $LetterFromEditorCustomTitle %>
				<h2>$LetterFromEditorCustomTitle</h2>
			<% else %>
				<h2>Letter from the editor</h2>
			<% end_if %>
			$LetterFromEditor
			<div class="article-subnav">
				<% with $Children.First %><a href="$Link">Start with: $Title</a><% end_with %>
			</div>
	</div>-->
	<div class="large-6 large-centered columns end text-center table-of-contents">
		<h2>Table of Contents</h2>
		<% loop $Children %>
			<article>
				<h3><a href="$Link">$Title</a></h3>
				<p><% include TranslatorByline %></p>
			</article>
		<% end_loop %>


	</div>
</div>

