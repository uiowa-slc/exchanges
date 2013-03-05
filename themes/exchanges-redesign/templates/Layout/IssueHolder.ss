

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
      		<!--
      		<div class="span4 column">
      			<h1 class="band">Table of Contents</h1>
      			<% with getParent %>
      				$TableOfContents
      			<% end_with %>

      		</div>
      		-->
		</div>

    </div> <!-- /container -->