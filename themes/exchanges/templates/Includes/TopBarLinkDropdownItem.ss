<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>">
	<a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a>
	<% if $Children %>
	<ul class="dropdown">
		<% loop $Children %>
		<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>"><a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a></li>
		<% end_loop %>
	</ul>
	<% end_if %>
</li>