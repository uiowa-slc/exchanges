<% include TopBar %>
<div class="layout layout--{$ClassName} typography">
	<div class="row row--Article">

		<div class="medium-7 large-2 medium-centered columns">
			<a href="$Parent.Link" class="breadcrumb breadcrumb--full-width tiny">$Parent.Title</a>
		</div>
	</div>
	<div class="row row--large">

		<div class="large-1 columns exchanges-sticky padding-top">
			<% include BlogShareIcons %>
		</div>
			<div class="article__container">
				<div class="large-8 large-centered columns article__body">
					<article>
						<header>
							<% if $ArtworkCreditsTitle %>
								<h1>$ArtworkCreditsTitle</h1>
							<% else %>
								<h1>Artwork Credits</h1>
							<% end_if %>
							
						</header>

						<div class="article__text">
							$Content
						</div>
					</article>
				</div>
		
		</div>

	</div>
	<% include IssueLetterSubnav %>


</div>
