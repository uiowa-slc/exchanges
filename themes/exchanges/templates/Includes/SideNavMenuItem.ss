<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>">
	<a href="$Link">
	<section class="nav-li-content">
		<h4> $MenuTitle </h4>
		<p class="author"><% if $Translators %> <% loop $Translators %>$Name <% if not $Last %>, <% else %> translates <% end_if %><% end_loop %><% end_if %> <% if OriginalLanguage %> from the orginal $OriginalLanguage<% end_if %><% if $Authors %><% loop $Authors %>. Original by $Name <% end_loop %> <% end_if %>
		</p>
	</section>
	</a>
</li>

			        