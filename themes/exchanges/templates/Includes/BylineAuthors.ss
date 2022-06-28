<% if $OriginalCustomByline %>
    $OriginalCustomByline
<% else_if $Authors %>By
<% loop $Authors %>
    <a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
<% end_loop %>
<% end_if %>