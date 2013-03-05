<div class="container" id="content">
		
		<div class="row" id="backto">
			<% loop Issues %>
			<a href="{$Link}">
			<div>
				<span>Back to $Title</span>
			</div>
			</a>
			<% end_loop %>
		</div>
		
		
		<% if TranslatorNote %>
		<div class="row" id="to">
			<a href="{$Link}notes">
			<div>
				<span>Notes on Translation</span>
			</div>
			</a>
		</div>
		<% end_if %>
	
		<div class="row">
		
      		<div class="span6 column">
      		  <span class="author">
      		<% loop $Authors %>
      			<a href="#">$Name</a><% if not $Last %>, <% end_if %>
  			<% end_loop %>     		
  				</span>
      			
      			$Content
	      	</div>

      		<div class="span6 column">
      			      		  <span class="author">
      		<% loop $Translators %>
      			<a href="#">$Name</a><% if not $Last %>, <% end_if %>
  			<% end_loop %>     		
  				</span>
      			$Content2
      		</div>
      		<a href="#header">
      			<div>
      				<span id="backtotop">Back to Top</span>
      			</div>
      		</a>
		</div>

    </div> <!-- /container -->
