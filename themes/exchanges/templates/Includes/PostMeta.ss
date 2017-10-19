<p class="post__meta">
	Posted on $PublishDate.Format("F j, Y")
	<% if $Credits %>
		 by
		<% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
	<% end_if %>

	<% if $Categories.exists %>
		in 
		<% loop $Categories %>
			<a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %><% end_if %>
		<% end_loop %>
	<% end_if %>
</p>
