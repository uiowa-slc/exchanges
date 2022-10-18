<% include TopBar %>
<div class="layout layout--{$ClassName} typography">
	<article>
		<div class="row">
			<div class="large-12 columns">
				<header>
					<h1>Issue Archive</h1>
				</header>
		
				<ul class="card-list">
					<% loop Children.Sort("Created DESC") %>
						<li class="card-list__item card-list__item--issue">
							<a href="$Link" class="card-list__link <% if $CoverImageOnly %>card-list__link--contain<% end_if %>" style="<% if $CoverImageOnly %>background-image: url('{$Emblem.ScaleMaxWidth(600).URL}')<% else %>background-image: url('{$Emblem.FocusFill(690,440).URL}')<% end_if %>">
								<% if not $CoverImageOnly %>
								<div class="card-list__overlay card-list__overlay--always-visible"></div>
								<div class="card-list__text card-list__text--always-visible card-list__text--large">
									<h2 class="card-list__header card-list__header--issue-title"><span>$Title</span></h2>
										<p class="card-list__issue-date">$IssueDate</p>
								</div>
								<% end_if %>
							</a>
						</li>
					<% end_loop %>
				</ul>

				$Content
			</div>
		</div>
	</article>
</div>