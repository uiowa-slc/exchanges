<div class="row" id="homepage">
	<div class="medium-12 small-centered columns" id="news">
		<% with FeaturedIssue %>
		<h1><span class="cur-issue-link">Read our latest issue: <a href="$Link">$Title</a></span></h1>
		<hr class="marg-fix">
		<% end_with %>
		<h2>Latest News</h2>
		<% loop $getNewsItems(6) %>
		<article class="row $FirstLast news-item">
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

