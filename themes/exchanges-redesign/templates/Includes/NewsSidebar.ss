  			<h1 class="band"><a href="news/">News</a></h1>
  					<% with Page("news") %>
	      				<% loop Entries.Limit(3) %>
	      					<h2><a href="$Link">$Title</a></h2>
	      					<p>$Date.niceUS</p>
	      					<p>$Content.Summary(20)<a href="$Link">Continue Reading</a></p>
	      					
	      				<% end_loop %>
	      			<% end_with %>
	     