
     
<% if $ArticleFormat = 'oneColumnPage' %>




		
	<div class="container" id="content">
		
		<div class="row" id="backto">
			<a href="toc.html">
			<div>
				<span>$Title</span>
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









		
<% else_if $ArticleFormat = 'twoColumnPage' %>

	<div class="container" id="content">
		
		<div class="row" id="backto">
			<a href="toc.html">
			<div>
				<span>Table of Contents</span>
			</div>
			</a>
		</div>
		
		<div class="row" id="to">
			<% with getTranslatorNote %>
				<a href="{$Link}">
				<div>
					<span>Notes on Translation</span>
				</div>
				</a>
			<% end_with %>
		</div>
	
		<div class="row">
		
      		<div class="span6 column">
      			<span class="author">$Author</span>
<h1>$TranslatedTitle</h1>
$Content
	      	</div>

      		<div class="span6 column">
      			<span class="author">$Translator</span>
<h1>$UntranslatedTitle</h1>
$Content2
      		</div>
      		<a href="#header">
      			<div>
      				<span id="backtotop">Back to Top</span>
      			</div>
      		</a>
		</div>

    </div> <!-- /container -->
