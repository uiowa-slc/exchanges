

<div class="container" id="content">
		$Form
		$PageComments
		<% include PageNav %>
	
		<div class="row">
		
      		<div class="span8 column">
      			<h2>Newer Issues (on this Website)</h2>
      				<% loop Children %>
      					<p><a href="{$Link}">$Title</a></p>
      				<% end_loop %>
      		
      				
      				<h2>Older Issues:</h2>
      			
      				$Content

      		</div>
      
      		<div class="span4 column no-center">
      			<% include Submissions %>
      		</div>
      	
		</div>

    </div> <!-- /container -->