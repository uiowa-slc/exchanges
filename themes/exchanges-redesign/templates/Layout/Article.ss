<div class="container article" id="content">


		
		<div class="row" id="backto">
			<% loop Issues %>
			<a href="{$Link}">
			<div>
				<span>$Title</span>
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
		
      		<div class="span6 column" id="original-work">
      		
      			<h1>$UntranslatedTitle</h1>

      		 
      			
      	
      		  <span class="author">
      		<% loop $Authors %>
      			<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
  			<% end_loop %> 

				  		
  				</span>
   			
				<div class="mobile-article-nav">
					<a href="#translated-work">View Translated Work &raquo;</a>
				</div> 
   			
      			$Content
      			
				<div class="mobile-article-nav">
					<a href="#translated-work">View Translated Work &raquo;</a>
				</div>   
	      	</div>

      		<div class="span6 column" id="translated-work">
      		
      			<h1>$TranslatedTitle</h1>
      		
      		<span class="author">
      		<% loop $Translators %>
      			<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
  			<% end_loop %> 
  			
   		
  				</span>
  				
  			<div class="mobile-article-nav">
				<a href="#original-work">View Original Work &raquo;</a>
			</div>   
				
      			$Content2
      			
      			
      		<div class="mobile-article-nav">
				<a href="#original-work">View Original Work &raquo;</a>
			</div> 
			<p><a href="{$Link}notes">View Translation Notes</a></p>  
      		</div>
      		<a href="#header">
      			<div>
      				<span id="backtotop">Back to Top</span>
      			</div>
      		</a>
		</div>

    </div> <!-- /container -->
