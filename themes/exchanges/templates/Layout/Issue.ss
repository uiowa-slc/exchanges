<div class="medium-10 small-12 end columns">
	<h1>$Title</h1>
	<hr />
		<% if $LetterFromEditorCustomTitle %>
			<h2>$LetterFromEditorCustomTitle</h2>
		<% else %>
			<h2>Letter from the editor</h2>
		<% end_if %>
		$LetterFromEditor
		<div class="article-subnav">
		<% with $Children.First %><a href="$Link">Start with: $Title</a><% end_with %>
		</div>
</div>

