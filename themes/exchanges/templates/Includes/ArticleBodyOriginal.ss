<div id="article__container" class="article__container">
	<div class="row">
		<div class="large-6 large-centered columns article__body article__body--poem-lineheight article__body--original-work article__body--lang-{$languageCode}" id="original-work" lang="{$languageCode}" <% if OriginalRTL %>dir="rtl"<% end_if %>>
			<article>
				<div class="article__untranslated-title article__meta <% if $OriginalTitleUseAltFont %>alt-font<% end_if %>" data-equalizer-watch>
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

				<div class="article__text article__text--poem">
					$Content
				</div>
			</article>
		</div>
	</div>
</div>