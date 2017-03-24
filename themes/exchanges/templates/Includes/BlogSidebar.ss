		<h2 class="banner">More Posts</h2>
		<div class="side-cards">
			<% loop $Posts.Limit(7) %>
				<a href="$Link" class="side-cards__link">
					<img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
					<h2 class="side-cards__header">$Title</h2>				
				</a>
			<% end_loop %>
		</div>