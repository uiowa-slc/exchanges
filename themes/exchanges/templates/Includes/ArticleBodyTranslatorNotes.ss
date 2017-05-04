	<div id="article__container" class="article__container">
		<div class="large-8 large-centered columns article__body article__body--translated-work" id="translated-work">
			<article class="article__translated">
				<div class="article__translated-title article__meta">
					<div>
						<% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle</h1>
						<% else %> 
							<h1 class="article__shared-title">$Title</h1>
						<% end_if %>
					</div>
						<span class="author">
							Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} by <% end_if %>
							<% loop $Translators %>
							<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
							<% end_loop %>
						</span>
					<p class="hide-for-large-up author">
						<a href="#original-work">View Original Work &darr;</a>
					</p>
				</div>
				<div class="article__text">
					<h2>Translator Notes</h2>
					$TranslatorNote
					<hr />
					<% if $Translators %>
						<p>
						<% loop $Translators %>
							<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %>
						</p>	
					<% end_if %>				
				</div>
				<p class="hide-for-large-up">
					<br /><br /><a href="#original-work">View Original Work &darr;</a>
				</p>
			</article>
		</div>
		
</div>