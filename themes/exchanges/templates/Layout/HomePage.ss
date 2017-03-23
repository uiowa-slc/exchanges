<% with $FeaturedIssue %>
	<div class="row">
		<div class="large-12 issue-preview columns">
			<h2 class="banner text-center">In this Issue:</h2>
			<ul class="small-block-grid-1 large-block-grid-2 text-center news-list">
				<% loop $RandomArticles.Limit(2) %>
				<li class="news-list__item">
					<a href="$Link" class="news-list__link news-list__link--large" style="background-image: url('{$BannerImage.CroppedFocusedImage(690,440).URL}')">
						<%-- <img class="news-list__img" src="$BannerImage.CroppedFocusedImage(690,440).URL"> --%>
						<div class="news-list__overlay news-list__overlay--always-visible"></div>
			
	              			<div class="news-list__text news-list__text--always-visible news-list__text--large">
	              				<h2 class="news-list__header news-list__header--large">$Title</h2>
		              			<p class="news-list__byline">$TranslatorByline(false).NoHTML</p>
	              			</div>
              		
					</a>
				</li>
				<% end_loop %>
					
			</ul>
			<p class="start-reading"><a href="$Link">Start reading &rarr;</a></p>
			<hr />
			
		</div>
	</div>
<% end_with %>

<div class="row">
	<div class="large-9 columns">
		<h2 class="banner">From the Blog:</h2>
		<ul class="large-block-grid-2 news-list">
			<% loop $Posts.Limit(2) %>
				<% if $FeaturedImage %>
				<li class="news-list__item">
					<a href="$Link" class="news-list__link news-list__link--medium" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
						<%-- <img class="news-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
						<div class="news-list__overlay"></div>
              			<div class="news-list__text">
              			<h2 class="news-list__header">$Title</h2>
	              			<% if $Credits %>
	              			<p class="news-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
	              			<% end_if %>
              			</div>
					</a>
				</li>
				<% end_if %>
			<% end_loop %>
		</ul>
		<%-- <h2 class="banner text-center">Interviews</h2> --%>
		<ul class="large-block-grid-3 news-list">
			<% loop $Posts %>
				<% if $FeaturedImage %>
				<li class="news-list__item">
					<a href="$Link" class="news-list__link news-list__link--small" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
						<%-- <img class="news-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
						<div class="news-list__overlay"></div>
              			<div class="news-list__text">
              			<h2 class="news-list__header">$Title</h2>
	              			<% if $Credits %>
	              			<p class="news-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
	              			<% end_if %>
              			</div>
					</a>
				</li>
				<% end_if %>
			<% end_loop %>
		</ul>
	</div>
	<div class="large-3 columns">
		<h2 class="banner">Our Podcast</h2>
		<div class="side-posts">
			<% loop $Posts.Limit(3) %>
				<a href="$Link" class="side-posts__link">
					<img class="side-posts__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<h2 class="side-posts__header">$Title</h2>				
				</a>
			<% end_loop %>
		</div>
		<p><a href="#">See all podcasts &rarr;</a></p>
	</div>
</div>


