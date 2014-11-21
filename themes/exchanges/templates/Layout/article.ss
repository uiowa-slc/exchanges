<div class="row" id="poetry">
	<div class="small-12 medium-6 columns poem" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
		<h1>$UntranslatedTitle</h1>
		<span class="author">
			<% loop $Authors %>
			Written By <a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %> 
		</span>
		<p class="show-for-small-only author">
			<a href="#translated-work">View Translated Work &raquo;</a>
		</p> 
		<hr>
		$Content
		<p class="show-for-small-only">
			<a href="#translated-work">View Translated Work &raquo;</a>
		</p> 
	</div>
	<div class="small-12 medium-6 columns poem" id="translated-work">
		<h1>$TranslatedTitle</h1>
		<span class="author">
			<% loop $Translators %>
			Translated by <a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %> 
		</span>

		<p class="show-for-small-only author">
			<a href="#original-work">View Original Work &raquo;</a>
		</p>   
		<hr>
		$Content2
		<p class="show-for-small-only">
			<a href="#original-work">View Original Work &raquo;</a>
		</p>
		<hr />
	</div>
</div>
<div class="row">
	<div class="small-10 medium-8 small-centered columns">
		<a role="button" class="button small radius" href="#poetry">Back to Top &raquo;</a>
		<a role="button" class="button small radius" href="{$Link}notes">Translation Notes &raquo;</a>
	</div>
</div>
