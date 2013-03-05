
	<div class="container" id="content">
	
		<div class="row">
		
      		<div class="span8 column">
      			<div id="emblem" style="background-image: {$Emblem.URL}">
      			
	      			<span id="issue_num">Issue #{$IssueNumber} for <span id="year">$IssueDate.Format("G")</span></span>
	      			<span id="issue_name">{$Title}</span>
	      			
	      			
      			<h1 class="toc">Table of Contents</h1>
      			
      			<% if LetterFromEditor %>
	      			<ul>
		      			<li class="toc">
			      			<h2><a href="{$Link}letter"><% if LetterFromEditorCustomTitle %>$LetterFromEditorCustomTitle <% else %>Letter from the editors<% end_if %></a></h2>
			      			<ul>
			      				<li>by the Editors</li>
				      		</ul>
				      	</li>
			      	</ul>
		      	<% end_if %>
		      	
		      	<% loop $Articles %>
			      	<ul>    	
				      	<li class="toc">
					      	<h2><a href="{$Link}">$Title</a></h2>
					      	
						      	<ul>
						      		<li>
						      		
						      		<% if $OriginalLanguage %>
						      		
							      		<% loop $Translators %>
							      		<a href="#">$Name</a><% if not Last %>, <% end_if %>
							      		<% end_loop %>
							      		
							      		translates from the $OriginalLanguage</li>
							      		
						      		<% end_if %>
						      		<li><em>Original by 
							      		<% loop $Authors %>
							      			<a href="#">$Name</a><% if not $Last %>, <% end_if %>
							      		<% end_loop %>
						      		</em></li>
						      	</ul>
				      	</li>
			      	</ul>
		      	<% end_loop %>
      			
				
      		</div>
      		</div>
		
      		<div class="span4 column">
      			<h1 class="band">Past Issues</h1>
      			<p><a href="#">Hackwork - Spring 2010</a></p>
      			<p><a href="#">Exocity - Winter 2009</a></p>
      			<p><a href="#">Mirrors and Masks - Spring 2009</a></p>
      			<p><a href="#">Roots & Branches - Fall 2008</a></p>
      			<p><a href="#">Silence & Song - Spring 2008</a></p>
      			<p><a href="#">Black & White - Winter 2008</a></p>
      			<p><a href="#">Sweet & Sour - Spring 2007</a></p>
      			<p><a href="#">Saints & Sinners - Winter 2006</a></p>
      			<p><a href="#">Bread & Circuses - Fall 2006</a></p>
      			<p><a href="#">Beasts & Machines - Spring 2005</a></p>
      			<p><a href="#">Madness & Civilization - Summer 2004</a></p>
      			<p><a href="#">Sex & Death - Spring 2004</a></p>
      			<p><a href="#">City & Country - Fall 2003</a></p>
      			
      		</div>
      		
		</div>
		
		

    </div> <!-- /container -->
 
  <script>

  </script>
 
