<div class="cover-container <% if $UseTitleDropShadow %>with-dropshadow<% end_if %> b-lazy" data-src="$Emblem.FocusFill(1560, 861, false).URL" style="background-position: $Emblem.FocusPoint.PercentageX% $Emblem.FocusPoint.PercentageY%; background-size: cover;">
	<div class="cover-screen" <% if $Transparency %>style="background: rgba(68,68,68,{$Transparency});"<% end_if %>>
		<% include IssueTopBar %>

		<div class="row issue-date">
			<div class="large-12 columns"><span><a href="issues/">$IssueDate</a></span></div>
		</div>

		<div class="row cover-content">
			<div class="large-12 columns">
				<span><h1 class="issue-title">$Title</h1></span>
				<span><a href="$LetterLink">$LetterTitle &rarr;</a></span>
			</div>
		</div>
	</div>
</div>
