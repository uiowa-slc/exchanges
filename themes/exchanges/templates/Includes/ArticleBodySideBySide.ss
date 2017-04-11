	<div id="poem__container" class="poem__container" data-equalizer data-equalizer-mq="large-up">
		<div class="large-6 large-push-6 columns poem__body poem__body--translated-work" id="translated-work">
			<article class="poem__translated">
				<div class="poem__translated-title poem__meta" data-equalizer-watch>
					<div>
						<% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle</h1>
						<% else %> 
							<h1 class="poem__shared-title">$Title</h1>
						<% end_if %>
					</div>
						<span class="author">
							Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} by <% end_if %>
							<% loop $Translators %>
							<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
							<% end_loop %>
							
							<% if $TranslatorNote %><br /><a role="button" class="" href="#" data-reveal-id="translator-notes-modal">View Translator Notes</a><% end_if %>
						</span>

					<p class="hide-for-large-up author">
						<a href="#original-work">View Original Work &darr;</a>
					</p>
				</div>
				<div class="poem__text">
				$Content2
				</div>
				<p class="hide-for-large-up">
					<br /><br /><a href="#original-work">View Original Work &darr;</a>
				</p>
			</article>
		</div>

		<div class="large-6 large-pull-6 columns poem__body poem__body--original-work poem__body--{$languageCode}" id="original-work" lang="{$languageCode}" <% if OriginalRTL %>dir="rtl"<% end_if %>>
			<article>
				<div class="poem__untranslated-title poem__meta <% if $OriginalTitleUseAltFont %>alt-font<% end_if %>" data-equalizer-watch>
					<div>
						<% if $UntranslatedTitle && $TranslatedTitle %>
							<h1>$UntranslatedTitle</h1>
						<% else %>
							<h1>$Title</h1>
						<% end_if %>
					</div>
					<span class="author">
						<% if $Authors %>By
						<% loop $Authors %>
							<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %> 
						<% end_if %>
					</span>
					<p class="hide-for-large-up author">
						<a href="#translated-work">View Translated Work &uarr;</a>
					</p>
				</div>
				<div class="poem__text">
					$Content
				</div>
			</article>
		</div>

		
	</div>