<% if $Translators %>
    Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} by<% end_if %>
    <% loop $Translators %>
    <a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
    <% end_loop %>
<% end_if %>
