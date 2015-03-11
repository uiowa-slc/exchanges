<!--<div class="cover-container" style="background-image: url('$FeaturedIssue.Emblem.SetWidth(980).URL');">-->
<div class="cover-container" style="background-image: url('http://lorempixel.com/1240/300/');">

	<div class="cover-screen">
		<% include TopBar %>
		<div class="row cover-content">
			<div class="large-12 columns">
				<% with FeaturedIssue %>
					<span class="cur-issue-link">Read our latest issue: <br /> <a href="$Link">$Title</a></span>
				<% end_with %>
			</div>
		</div>
	</div>
</div>