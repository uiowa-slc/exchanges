		
	<div class="container" id="content">
		
		<div class="row" id="backto">
			<a href="toc.html">
			<div>
				<span>Translator Note</span>
			</div>
			</a>
			<a href="two-col.html">
			<div>
				<span>$Author</span>
			</div>
			</a>
		</div>
	
		<div class="row">
		
      		<div class="span8 column">
      			<p>
      				$Content
      			</p>

      		</div>
		
      		<div class="span4 column">
      			<h1 class="band">Table of Contents</h1>
      			<% with getParent %>
      				$TableOfContents
      			<% end_with %>

      		</div>
      		
		</div>

    </div> <!-- /container -->  
 
