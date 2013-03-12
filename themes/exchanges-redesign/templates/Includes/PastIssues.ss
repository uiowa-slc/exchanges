
	<h1 class="band">Past Issues</h1>
	
	<% with Page("issues") %>
	
		<% loop Children %>
		<p><a href="$Link">$Title - $IssueDate</a></p>
		<% end_loop %>
		
		$Content
	
	<% end_with %>
	


