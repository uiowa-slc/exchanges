<% with $FeaturedIssue %>
	<div class="row">
		<div class="large-12 issue-preview columns">
			<h2 class="banner text-center">In this Issue:</h2>
			<ul class="small-block-grid-1 large-block-grid-3 text-center">
				<% loop $RandomArticles.Limit(2) %>
					<% include PoemCard %>
				<% end_loop %>
					<li class="start-reading"><a href="$Link">Start reading &rarr;</a></li>
			</ul>
			<hr />
		</div>
	</div>
<% end_with %>

<div class="row">

<% with $FeaturedIssue %>
	<div class="large-7 columns">
		<h2 class="banner">$LetterTitle</h2>
		$LetterFromEditor
	</div>
<% end_with %>
	<div class="large-5 columns" id="news">
		<h2 class="banner">From the Blog:</h2>
		<ul class="large-block-grid-1 news-list">
			<% loop $getNewsItems(4) %>
				<li>
					<article class="$FirstLast">
						<h3><a href="$Link">$Title </a></h3>
						<time>$Date.Format("F j, Y")</time>
						<p> $Content.Summary(20) <a href="$Link">Continue Reading</a></p>
					</article>
				</li>
			<% end_loop %>
		</ul>
	</div>
</div>


