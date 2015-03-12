<% with $FeaturedIssue %>
	<div class="row">
		<div class="large-12 issue-preview columns">
			<h2 class="banner">In this Issue:</h2>
			<ul class="large-block-grid-3">
				<% loop Children %>
					<li><h3><a href="$Link">$Title</a></h3><% include TranslatorByline %></li>
				<% end_loop %>
					<li class="start-reading"><a href="$Children.First.Link">Start reading &rarr;</a></li>
			</ul>
			
		</div>
	</div>
<% end_with %>

<div class="row">
	<div class="large-8 columns" id="news">
		<hr />
		<h2 class="banner">From the Blog:</h2>
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


