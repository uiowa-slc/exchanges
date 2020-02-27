
<% if $FeaturedIssue %>


	<div class="cover-container  <% if $FeaturedIssue.UseTitleDropShadow %>with-dropshadow<% end_if %> b-lazy" data-src="$FeaturedIssue.Emblem.FocusFill(1560, 861, false).URL" style="background-position: $FeaturedIssue.Emblem.PercentageX% $FeaturedIssue.Emblem.PercentageY%; background-size: cover;">
		<div class="cover-screen" <% if $FeaturedIssue.Transparency %>style="background: rgba(68,68,68,{$FeaturedIssue.Transparency});"<% end_if %>>
			<% include HomePageTopBar %>
			<div class="row issue-date">
				<div class="large-12 columns"><span><a href="issues/">$FeaturedIssue.IssueDate</a></span></div>
			</div>
			<div class="row cover-content">
				<div class="large-12 columns">
					<h1 class="sj__journal-title">$Title</h1>
					<% with FeaturedIssue %>
						<span>Read our latest issue: <br /> <a class="issue-title" href="$Link">$Title</a></span>
					<% end_with %>
				</div>
			</div>
		</div>
	</div>


	<div class="layout layout--{$ClassName} typography">
		<% with $FeaturedIssue %>
			<div class="row issue-preview__wrap">
				<div class="large-12 issue-preview columns">
					<h2 class="banner text-center">In this Issue:</h2>
					<ul class="text-center card-list card-list--two">
						<% loop $Children.Limit(2) %>
						<li class="card-list__item">
							<a href="$Link" class="card-list__link card-list__link--large" style="background-image: url('{$BannerImage.FocusFill(690,440).URL}')">
								<%-- <img class="card-list__img" src="$BannerImage.FocusFill(690,440).URL"> --%>
								<div class="card-list__overlay card-list__overlay--always-visible"></div>

			              			<div class="card-list__text card-list__text--always-visible card-list__text--large">
			              				<h2 class="card-list__header card-list__header--large">$Title</h2>
				              			<p class="card-list__byline">$TranslatorByline(false).Plain</p>
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
			<div class="large-8 columns large-centered">
				<h2 class="text-center">About $Title</h2>
				$Content
			</div>
		</div>
	</div>
<% else %>


<% include TopBar %>

<div class="layout layout--{$ClassName} typography">
	<div class="row">
		<div class="large-1 columns exchanges-sticky">
			<% include BlogShareIcons %>
		</div>
		<div class="article__wrap large-9 columns large-centered end">
			<article class="article__container" role="main">
				<div class="article__body">
					<header>
						<h1>$Title</h1>
					</header>
					$Content
					$Form
				</div>
			</article>
		</div>
	</div>
</div>


<% end_if %>