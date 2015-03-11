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

