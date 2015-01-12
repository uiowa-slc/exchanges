<% if $UntranslatedTitle && $TranslatedTitle %>
<div class="row">
	<div class="medium-12 columns">
		 <h1 class="text-center">$Title</h1>
	</div>
</div>
<% else %>
<% end_if %>
<div class="row" id="poetry">
	<div class="small-12 medium-6 columns poem" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
		<h1><% if $UntranslatedTitle %> $UntranslatedTitle <% end_if %></h1>
		<span class="author">
			Written By
			<% loop $Authors %>
			<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
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
		<h1><% if $TranslatedTitle %> $Title <% end_if %></h1>
		<span class="author">
			Translated by 
			<% loop $Translators %>
			<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %> 
			| <a role="button" href="{$Link}notes">View Translation Notes</a>
		</span>

		<p class="show-for-small-only author">
			<a href="#original-work">View Original Work &raquo;</a>
		</p>   
		<hr>
		$Content2
		<p class="show-for-small-only">
			<a href="#original-work">View Original Work &raquo;</a>
		</p>
	</div>

</div>

<div class="row">
	<div class="small-12 columns">
		<div class="right">
			<a role="button" href="#">Back to Top &uarr;</a>
		</div>
	</div>
</div>
