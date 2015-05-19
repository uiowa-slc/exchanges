<% include Breadcrumb %>
<div class="article">

<% if $IsCompilation %>
	<div class="row">
		<div class="medium-12 columns">
			 <h1 class="text-center compilation-title">$Title</h1>
		</div>
	</div>
<% else_if $UntranslatedTitle && $TranslatedTitle %>

<% else %>
	<div class="row">
		<div class="medium-12 columns">
			 <h1 class="text-center compilation-title">$Title</h1>
		</div>
	</div>
<% end_if %>



<div class="row">


	<div id="poetry" data-equalizer>
		<div class="large-6 columns poem" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
			<article class="">
				<div class="poem-unstranslated-title poem-info" data-equalizer-watch>
						<% if $UntranslatedTitle && $TranslatedTitle %>
							<h1>$UntranslatedTitle</h1>
						<% end_if %>
					<span class="author">
						<% if $Authors %>Written By
						<% loop $Authors %>
						$Name<% if not $Last %>, <% end_if %>
						<% end_loop %> 
						<% end_if %>
					</span>
					<p class="show-for-small-only author">
						<a href="#translated-work">View Translated Work &darr;</a>
					</p>
				</div>
				$Content
			</article>
		</div>
		<div class="large-6 columns poem" id="translated-work">
			<article class="translated">
				<div class="poem-translated-title poem-info" data-equalizer-watch>
					<% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle</h1>
					<% end_if %>
					<span class="author">
						Translated by 
						<% loop $Translators %>
						<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %>
						<% if $OriginalLanguage %>from the {$OriginalLanguage}. <% end_if %>
						<% if $TranslatorNote %><br /><a role="button" class="" href="#" data-reveal-id="translator-notes-modal">View Translator Notes</a><% end_if %>
					</span>

					<p class="show-for-small-only author">
						<a href="#original-work">View Original Work &uarr;</a>
					</p>
				</div>
				$Content2
				<p class="show-for-small-only">
					<br /><br /><a href="#original-work">View Original Work &uarr;</a>
				</p>
			</article>
		</div>
		
	</div>

	<% include ArticleSubNav %>

	<div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
		<h1>Translator Notes</h1>
		$TranslatorNote
		<hr />
		<p><% loop $Translators %><a href="$Link">$Name</a><br /><% end_loop %></p>
		<a class="close-reveal-modal">&#215;</a>
	</div>
</div>
</div>