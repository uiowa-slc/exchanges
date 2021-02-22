		<% if $SideBarView %>
			<div class="blog-sidebar typography unit size1of4 lastUnit">
				$SideBarView
			</div>
		<% end_if %>
		<div class="side-cards">
			<h2 class="banner">More from Exchanges</h2>
            <% include SideCards %>
			<% loop $Posts.Sort('RAND()').Limit(5) %>
				<a href="$Link" class="side-cards__link">
					<% if $FeaturedImage %>
						<img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<% end_if %>
					<h2 class="side-cards__header">$Title</h2>
				</a>
			<% end_loop %>
		</div>
