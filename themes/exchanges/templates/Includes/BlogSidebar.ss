		<% if $SideBarView %>
			<div class="blog-sidebar typography unit size1of4 lastUnit">
				$SideBarView
			</div>
		<% end_if %>
		<div class="side-cards">
			<h2 class="banner">More from Exchanges</h2>
			<div class="side-cards__cat-container">
				<ul class="side-cards__list">
               
                	
                    <li><a href="blog/category/briefly-mentioned" class="side-cards__cat">Briefly Mentioned</a></li>
                
                    <li><a href="blog/category/dispatches" class="side-cards__cat">Dispatches</a></li>
                
                    <li><a href="blog/category/essays" class="side-cards__cat">Essays</a></li>
                
                    <li><a href="blog/category/interviews" class="side-cards__cat">Interviews</a></li>
                
                    <li><a href="blog/category/reviews" class="side-cards__cat">Reviews</a></li>
	                
	                <li><a href="blog/category/world-literature-in-the-making" class="side-cards__cat">World Literature in the Making</a></li>
                
                </ul>
			</div>
			<% loop $Posts.Sort('RAND()').Limit(5) %>
				<a href="$Link" class="side-cards__link">
					<% if $FeaturedImage %>
						<img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<% end_if %>
					<h2 class="side-cards__header">$Title</h2>				
				</a>
			<% end_loop %>
		</div>