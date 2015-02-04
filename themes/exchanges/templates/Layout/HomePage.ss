<div class="row">
	<div class="large-12 columns">
		<% with FeaturedIssue %>
			<h1><span class="cur-issue-link">Read our latest issue: <a href="$Link">$Title</a></span></h1>
		<% end_with %>
	</div>
</div>
<div class="row">
	<div class="large-8 columns" id="news">
		<% loop $getNewsItems(6) %>
		<article class="$FirstLast">
			<h3><a href="$Link">$Title </a></h3>
			<time>$Date.Format("F j, Y")</time>
			<p> $Content.BigSummary <a href="$Link">Continue Reading</a></p>
		</article>
		<% end_loop %>
	</div>
	<div class="large-4 columns" id="home-widgets">
		$Content
	</div>
</div> 

