<div class="row">


	<div id="poetry">
		<div class="large-6 columns" id="original-work" <% if OriginalRTL %>dir="rtl"<% end_if %>>
			<article class="poem">
				<div class="poem-unstranslated-title poem-info">
					<% if $UntranslatedTitle %><h1> $UntranslatedTitle</h1><% end_if %>
						<% if $UntranslatedTitle && $TranslatedTitle %>
						<% else %>
						<h1>$Title</h1>
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
		<div class="large-6 columns" id="translated-work">
			<article class="poem">
				<div class="poem-translated-title poem-info">
					<% if $TranslatedTitle %><h1>$Title</h1><% end_if %>
					<span class="author">
						Translated by 
						<% loop $Translators %>
						<a href="contributors/show/{$ID}">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %>
						<% if $OriginalLanguage %>from $OriginalLanguage <% end_if %>
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

	<div class="row">
		<div class="large-12 columns">
			<div class="article-subnav">

					<div class="large-4 columns prev-container show-for-large-up">
					<% if $PreviousPage %>
						<% with $PreviousPage %>
							<a href="$Link" class="prev "> &larr; $Title</a>
						<% end_with %>
					<% end_if %>
					</div>

					<div class="large-4 columns toc-container">
						<a href="$Parent.Link">$Parent.Title</a> <br />
						<a href="$Parent.Link" class="toc-link">Table of Contents</a>
					</div>

					<div class="large-4 columns next-container end">
					<% if $NextPage %>
						<% with $NextPage %>
							<a href="$Link" class="next">$Title &rarr;</a><br />
						<% end_with %>
					<% end_if %>
					</div>
			</div>
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
</div>
