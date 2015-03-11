<% if $UntranslatedTitle && $TranslatedTitle %>
<% else %>
	<h1 class="text-center">$Title</h1>
<% end_if %>

<div data-equalizer>
	<div class="small-12 medium-6 x-large-3 columns poem" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
		<div class="poem-unstranslated-title" data-equalizer-watch>
			<% if $UntranslatedTitle %><h1> $UntranslatedTitle</h1><% end_if %>
			<span class="author">
				<% if $Authors %>Written By
				<% loop $Authors %>
				<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
				<% end_loop %> 
				<% end_if %>
			</span>
			<p class="show-for-small-only author">
				<a href="#translated-work">View Translated Work &darr;</a>
			</p>
		</div>
		<hr>
		$Content
	</div>
	<div class="small-12 large-6 x-large-3 columns poem end" id="translated-work">
		<div class="poem-translated-title" data-equalizer-watch>
			<% if $TranslatedTitle %><h1>$Title</h1><% end_if %>
			<span class="author">
				Translated by 
				<% loop $Translators %>
				<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
				<% end_loop %>
				<% if $OriginalLanguage %>from $OriginalLanguage <% end_if %>
				<% if $TranslatorNote %><a role="button" class="" href="#" data-reveal-id="translator-notes-modal">View Notes</a><% end_if %>
			</span>

			<p class="show-for-small-only author">
				<a href="#original-work">View Original Work &uarr;</a>
			</p>
		</div>
		<hr>
		$Content2
		<p class="show-for-small-only">
			<a href="#original-work">View Original Work &uarr;</a>
		</p>
	</div>
</div>

<div class="row">
	<div class="large-12 column">
		
		<% if $NextPage %>
			<div class="article-subnav">
				<% with $NextPage %>
					<a href="$Link">Next: $Title</a>
				<% end_with %>
			</div>
		<% end_if %>
	</div>
</div>

<div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
	<h2>$Title</h2>
	<p><% include TranslatorByline %></p>
	<h3>Translator Notes</h3>
	$TranslatorNote
	<hr />
	<p><% loop $Translators %><a href="$Link">$Name</a><br /><% end_loop %></p>
	<a class="close-reveal-modal">&#215;</a>
</div>
