<div class="typography">
	
	<% if Children %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>

			<div id="Breadcrumbs">
			   	<p>$Breadcrumbs</p>
			</div>
			
			<% with Item %>
				<h2>$Title</h2>
				
				$Content
			<% end_with %>
	
	<% if Children %>
		</div>
	<% end_if %>

</div>
