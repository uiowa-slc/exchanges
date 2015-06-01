<div class="container article" id="content">
	<div class="row">
		<div class="span6 column">
			<% loop Issues %>
				<a href="{$Link}">Return to $Title</a>
			<% end_loop %>
		</div>
		<div class="span6 column view-notes-nav">
			<% if TranslatorNote %>
				<a href="{$Link}notes">View Notes on Translation &raquo;</a> 
			<% end_if %>
		</div>
	</div>
	<div class="row">

		<div class="span6 column" lang="{$defineLanguage($OriginalLanguage)}" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
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
			<hr />
			<p><a href="{$Link}notes">View Notes on Translation &raquo;</a></p>  
		</div>
		<a href="#header">
			<div>
				<span id="backtotop">Back to Top</span>
			</div>
		</a>
	</div>
</div> <!-- /container -->
