<% loop $Articles %>
	<div class="submission">
		<h2><a href="{$Link}">$Title</a></h2>
		<% if $OriginalLanguage %>
			<p>
			<% if $Translators %>
				<% loop $Translators %>
					<a href="contributors/show/{$ID}">$Name</a><% if not Last %>, <% end_if %>
				<% end_loop %>
				<% if MoreThanOneTranslator %>translate<% else %>translates<%end_if %> from the $OriginalLanguage</li>
			<% end_if %> <%-- end if Translators --%>
			</p>
		<% end_if %><%-- end if OriginalLanguage --%>
		<% if $Authors %>
			<p><em>Original by 
				<% loop $Authors %>
					<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
				<% end_loop %>
			</em></p>
		<% end_if %><%-- end if Authors --%>
	</div>
<% end_loop %>