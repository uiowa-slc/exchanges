<% with $FeaturedIssue %>
	<div class="row issue-preview__wrap">
		<div class="large-12 issue-preview columns">
			<h2 class="banner text-center">In this Issue:</h2>
			<ul class="text-center card-list card-list--two">
				<% loop $RandomArticles.Limit(2) %>
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--large" style="background-image: url('{$BannerImage.FocusFill(690,440).URL}')">
						<%-- <img class="card-list__img" src="$BannerImage.FocusFill(690,440).URL"> --%>
						<div class="card-list__overlay card-list__overlay--always-visible"></div>
			
	              			<div class="card-list__text card-list__text--always-visible card-list__text--large">
	              				<h2 class="card-list__header card-list__header--large">$Title</h2>
		              			<p class="card-list__byline">$TranslatorByline(false).NoHTML</p>
	              			</div>
              		
					</a>
				</li>
				<% end_loop %>
					
			</ul>
			<p class="issue-preview__start-reading text-center"><a href="$Link" class="button large">Start reading &rarr;</a></p>
		</div>
	</div>
<% end_with %>

<div class="row">
	<div class="large-9 columns">
		<section class="card-section">
			<h2 class="card-section__header">From the Blog:</h2>
			<ul class="card-list card-list--two">
				<% loop $Posts.Limit(2) %>
					<li class="card-list__item card-list__item--single-row">
						<% if $FeaturedImage %>
						<a href="$Link" class="card-list__link card-list__link--medium" style="background-image: url('{$FeaturedImage.FocusFill(690,440).URL}')">
						<% else %>
						<a href="$Link" class="card-list__link card-list__link--medium card-list__link--no-featured-img" style="background-image: url('{$ThemeDir}/images/post-default.png')">
						<% end_if %>
							<%-- <img class="card-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
							<div class="card-list__overlay card-list__overlay--always-visible"></div>
	              			<div class="card-list__text card-list__text--always-visible">
	              			<h2 class="card-list__header">$Title</h2>
		              			<% if $Credits %>
		              			<p class="card-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
		              			<% end_if %>
	              			</div>
						</a>
					</li>
					
				<% end_loop %>
			</ul>			

			<ul class="card-list">
				<% loop $Posts.Limit(15,2) %>
					<% if $FeaturedImage %>
					<li class="card-list__item card-list__item--single-row">
						<a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.FocusFill(690,440).URL}')">
							<%-- <img class="card-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
							<div class="card-list__overlay"></div>
		          			<div class="card-list__text">
		          			<h2 class="card-list__header">$Title</h2>
		              			<% if $Credits %>
		              			<p class="card-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
		              			<% end_if %>
		          			</div>
						</a>
					</li>
					<% end_if %>
				<% end_loop %>
			</ul>
			<p><a class="card-section__header card-section__header--featured" href="blog/">See all posts &rarr;</a></p>
		</section>

	</div>
	<div class="large-3 columns">
	    <% include BlogSidebar %>    
	</div>
	</div>
</div>


