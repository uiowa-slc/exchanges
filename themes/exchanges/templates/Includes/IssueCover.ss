<div class="cover-container" style="background-image: url('$FeaturedIssue.Emblem.SetWidth(980).URL');">
<%-- <div class="cover-container" style="background-image: url('http://lorempixel.com/1240/300/');">
 --%>
	<div class="cover-screen">
		<% include TopBar %>
		<div class="row cover-content">
			<div class="large-12 columns">
				<span><h1 class="issue-title">$Title</h1></span>
				<span>
				<% if $LetterFromEditorCustomTitle %>
					<a href="#">$LetterFromEditorCustomTitle &rarr;</a>
				<% else %>
					<a href="#">Letter from the editor &rarr;
				<% end_if %></span>
			</div>
		</div>
	</div>
</div>