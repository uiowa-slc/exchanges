	<div id="poem__container" class="poem__container">
		<div class="large-6 large-centered columns poem__body poem__body--translated-work" id="translated-work">
			<article class="poem__translated">
				<div class="poem__translated-title poem__meta">
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

	</div>