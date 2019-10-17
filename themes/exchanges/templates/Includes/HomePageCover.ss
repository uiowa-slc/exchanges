<div class="cover-container  <% if $FeaturedIssue.UseTitleDropShadow %>with-dropshadow<% end_if %> b-lazy" data-src="$FeaturedIssue.Emblem.FocusFill(1560, 861, false).URL" style="background-position: $FeaturedIssue.Emblem.PercentageX% $FeaturedIssue.Emblem.PercentageY%; background-size: cover;">
	<div class="cover-screen" <% if $FeaturedIssue.Transparency %>style="background: rgba(68,68,68,{$FeaturedIssue.Transparency});"<% end_if %>>
		<% include HomePageTopBar %>
		<div class="row issue-date">
			<div class="large-12 columns"><span><a href="issues/">$FeaturedIssue.IssueDate</a></span></div>
		</div>
		<div class="row cover-content">
			<div class="large-12 columns">
				<img src="{$ThemeDir}/dist/images/exchanges-logo.png" alt="Exchanges Logo" />
				<% with FeaturedIssue %>
					<span>Read our latest issue: <br /> <a class="issue-title" href="$Link">$Title</a></span>
				<% end_with %>
			</div>
		</div>
	</div>
</div>
