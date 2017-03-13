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

<%-- <% with $FeaturedIssue %>
	<div class="large-7 columns">
		<h2 class="banner text-center">$LetterTitle</h2>
 		$LetterFromEditor
		<div class="row">
			<div class="large-12 columns">
				<div class="article-subnav">
						<div class="toc-container">
							<a href="$Link" class="toc-link">Table of Contents</a>
						</div>
				</div>
			</div>
		</div>
	</div>

<% end_with %> --%>
	<div class="container large-12 columns" id="news">
		<h2 class="banner text-center">From the Blog:</h2>
		<ul class="large-block-grid-4 news-list">
			<% loop $PostsByTag("Interviews").Limit(8) %>
				<% if $FeaturedImage %>
				<li class="news-list__item">
					<a href="$Link" class="news-list__link">
						<img class="news-list__img" src="$FeaturedImage.URL">
						<div class="news-list__overlay">&nbsp;</div>
              			<div class="news-list__title"><h2>$Title</h2></div>
					</a>
				</li>
				<% end_if %>
			<% end_loop %>
		</ul>
		<%-- <a href="$Blog.Link"><h2 class="banner text-center">More from the blog</h2></a> --%>
	</div>
</div>


