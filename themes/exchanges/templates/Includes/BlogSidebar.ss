		
		<h2 class="banner">More from Exchanges</h2>
		<% if $SideBarView %>
			<div class="blog-sidebar typography unit size1of4 lastUnit">
				$SideBarView
			</div>
		<% end_if %>
		<div class="side-cards">
			<% loop $Posts.Sort('RAND()').Limit(5) %>
				<a href="$Link" class="side-cards__link">
					<img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<h2 class="side-cards__header">$Title</h2>				
				</a>
			<% end_loop %>
		</div>