<div class="poetry row" id="top-of-poem">
	<div class="small-12 medium-6 columns" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
		<h1>$UntranslatedTitle</h1>
		<span class="author">
			<% loop $Authors %>
			Written By <a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %> 
		</span>
		<hr>

		<div class="show-for-small-only">
			<a href="#translated-work">View Translated Work &raquo;</a>
		</div> 
		$Content
		<div class="show-for-small-only">
			<a href="#translated-work">View Translated Work &raquo;</a>
		</div> 
	</div>
	<div class="small-12 medium-6 columns" id="translated-work">
		<h1>$TranslatedTitle</h1>
		<span class="author">
			<% loop $Translators %>
			Translated by <a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %> 
		</span>
		<hr>
		<div class="show-for-small-only">
			<a href="#original-work">View Original Work &raquo;</a>
		</div>   
		$Content2
		<div class="show-for-small-only">
			<a href="#original-work">View Original Work &raquo;</a>
		</div>
		<hr />
	</div>
</div>
<div class="row">
	<div class="small-6 small-centered columns">
		<a role="button" class="button radius" href="#top-of-poem">Back to Top &raquo;</a>
		<a role="button" class="button radius" href="{$Link}notes">Translation Notes &raquo;</a>
	</div>
</div>
