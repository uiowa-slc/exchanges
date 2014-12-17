<% with FeaturedIssue %>
	<a href="$Link"><img src="$Emblem.URL" alt="Emblem" /></a>
<% end_with %>
<div class="row" id="homepage">
	<div class="medium-12 small-centered columns" id="news">
		<% with FeaturedIssue %>
		<span class="cur-issue-link">Read our latest issue: <a href="$Link">$Title</a></span>
		<hr class="marg-fix">
		<% end_with %>
		<h2>Latest News</h2>
		<% loop $getNewsItems(6) %>
		<article class="row $FirstLast">
			<div class="small-12 medium-5 large-4 columns">
				<h3><a href="$Link">$Title </a></h3>
				<time class="left">$Date.Format("F j, Y")</time>
			</div>
			<div class="small-12 medium-7 large-8 columns">
				<p> $Content.BigSummary <a href="$Link">Continue Reading</a></p>
				<%--<p> $Content.BigSummary </p>--%>
			</div>
		</article>

		<% end_loop %>
	</div>
</div> 

