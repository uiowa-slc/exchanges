<article>
	<div class="row">
		<div class="large-12 columns">
			<header>
				<h1>Issue Archive</h1>
			</header>
	
			<ul class="card-list">
				<% loop Children.Sort("Created DESC") %>
					<li class="card-list__item card-list__item--issue">
						<a href="$Link" class="card-list__link" style="background-image: url('{$Emblem.CroppedFocusedImage(690,440).URL}')">
							<%-- <img class="card-list__img" src="$BannerImage.CroppedFocusedImage(690,440).URL"> --%>
							<div class="card-list__overlay card-list__overlay--always-visible"></div>
							<div class="card-list__text card-list__text--always-visible card-list__text--large">
								<h2 class="card-list__header card-list__header--issue-title"><span>$Title</span></h2>
									<p class="card-list__issue-date">$IssueDate</p>
							</div>
						</a>
					</li>
				<% end_loop %>
			</ul>
			
			<h2>Older Issues</h2>
			$Content
		</div>
	</div>
</article>

