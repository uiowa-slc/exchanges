<div class="row" id="homepage">
	<div class="small-10 small-centered columns" id="news">
		<% with FeaturedIssue %>
		<img src="$Emblem.URL" alt="Emblem" />
		<h1 class="text-center cur-issue-link"><a href="$Link">Read $Title </a></h1>
		<hr class="marg-fix">
		<% end_with %>
		<% loop $getNewsItems(6) %>
		<article>
			<h2><a href="$Link">$Title </a></h2>
			<time>$Date.NiceUS()</time>
			<blockquote> $Content.BigSummary </blockquote>
			<%--<p> $Content.BigSummary </p>--%>
		</article>

		<% end_loop %>
	</div>
</div> 

