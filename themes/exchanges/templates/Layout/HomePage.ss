<div class="row" id="homepage">
	<div class="small-11 small-centered columns" id="news">
		<% with FeaturedIssue %>
		<img src="$Emblem.URL" alt="Emblem" />
		<h1 class="text-center cur-issue-link"><a href="$Link">Read $Title</a></h1>
		<hr class="marg-fix">
		<% end_with %>
		<% loop $getNewsItems(6) %>
		<article class="row">
			<div class="small-12 medium-5 large-4 columns">
				<h3><a href="$Link">$Title </a></h3>
				<time class="left">$Date.NiceUS()</time>
			</div>
			<div class="small-12 medium-7 large-7 end columns">
				<p> $Content.BigSummary </p>
				<%--<p> $Content.BigSummary </p>--%>
			</div>
		</article>

		<% end_loop %>
	</div>
</div> 

