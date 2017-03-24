<% with $FeaturedIssue %>
	<div class="row issue-preview__wrap">
		<div class="large-12 issue-preview columns">
			<h2 class="banner text-center">In this Issue:</h2>
			<ul class="small-block-grid-1 large-block-grid-2 text-center card-list">
				<% loop $RandomArticles.Limit(2) %>
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--large" style="background-image: url('{$BannerImage.CroppedFocusedImage(690,440).URL}')">
						<%-- <img class="card-list__img" src="$BannerImage.CroppedFocusedImage(690,440).URL"> --%>
						<div class="card-list__overlay card-list__overlay--always-visible"></div>
			
	              			<div class="card-list__text card-list__text--always-visible card-list__text--large">
	              				<h2 class="card-list__header card-list__header--large">$Title</h2>
		              			<p class="card-list__byline">$TranslatorByline(false).NoHTML</p>
	              			</div>
              		
					</a>
				</li>
				<% end_loop %>
					
			</ul>
			<p class="start-reading text-center"><a href="$Link">Start reading &rarr;</a></p>
		</div>
	</div>
<% end_with %>

<div class="row">
	<div class="large-9 columns">
		<h2 class="banner">From the Blog:</h2>
		<ul class="large-block-grid-2 card-list">
			<% loop $Posts.Sort('RAND()').Limit(2,2) %>
				
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--medium" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
				
			<% end_loop %>
		</ul>
		<h3 class="banner banner--no-bg">Interviews</h3>
		<ul class="large-block-grid-3 card-list">
			<% loop $Posts.Limit(3) %>
				<% if $FeaturedImage %>
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
		<h3 class="banner banner--no-bg">Essays</h3>
		<ul class="large-block-grid-3 card-list">
			<% loop $Posts.Sort('RAND()').Limit(3,4) %>
				<% if $FeaturedImage %>
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
		<h3 class="banner banner--no-bg">Book Reviews</h3>
		<ul class="large-block-grid-3 card-list">
			<% loop $Posts.Sort('RAND()').Limit(3,6) %>
				<% if $FeaturedImage %>
				<li class="card-list__item">
					<a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
	</div>
	<div class="large-3 columns">
		<h2 class="banner banner--no-bg banner--podcast"><span class="social-icon-podcast">
    </span>Our Podcast</h2>
		<div class="side-cards">
			<% loop $Posts.Sort('RAND()').Limit(5) %>
				<a href="$Link" class="side-cards__link">
					<img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<h2 class="side-cards__header side-cards__header--podcast">$Title</h2>				
				</a>
			<% end_loop %>
		</div>
		<p><a class="banner banner--no-bg banner--podcast" href="#">See all podcasts &rarr;</a></p>
	</div>
</div>


