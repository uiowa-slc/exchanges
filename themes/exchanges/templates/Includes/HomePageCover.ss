<div class="cover-container" style="background-image: url('$FeaturedIssue.Emblem.SetWidth(980).URL');">
<% include TopBar %>
	<div class="row cover-content">
		<div class="large-12 columns">
			<% with FeaturedIssue %>
				<span class="cur-issue-link">Read our latest issue: <br /> <a href="$Link">$Title</a></span>
			<% end_with %>
		</div>
	</div>
</div>