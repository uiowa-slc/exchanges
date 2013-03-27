<% loop $Articles %>
	<ul>    	
  	<li class="toc">
      	<h2><a href="{$Link}">$Title</a></h2>
      	
	      	<ul>
	      		<li>
	      		
	      		<% if $OriginalLanguage %>
	      		
	      			<% if $Translators %>
		      		<% loop $Translators %>
		      		<a href="#">$Name</a><% if not Last %>, <% end_if %>
		      		<% end_loop %>
		      		
		      		translates from the $OriginalLanguage</li>
		      		<% end_if %> <%-- end if Translators --%>
		      		
	      		<% end_if %><%-- end if OriginalLanguage --%>
	      		<% if $Authors %>
	      		<li><em>Original by 
		      		<% loop $Authors %>
		      			<a href="#">$Name</a><% if not $Last %>, <% end_if %>
		      		<% end_loop %>
	      		</em></li>
	      		<% end_if %><%-- end if Authors --%>
	      	</ul>
  	</li>
	</ul>
<% end_loop %>