<div class="row row--Article">
	<div class="small-6 large-2 columns">
		<a href="$Parent.Link" class="breadcrumb">$Parent.Title</a>
	</div>
	<div class="medium-8 show-for-large-up columns <% if not $Artist %>end<%end_if %>">
		<ul class="tabs translation-nav " data-tab role="tablist" data-options="scroll_to_content: false">
		  <li class="tab-title translation-nav__item active" role="presentation"><a href="#side-by-side" role="tab" tabindex="0" aria-selected="true" aria-controls="side-by-side">Side-by-side</a></li><li class="tab-title translation-nav__item" role="presentation"><a href='#original' role="tab" tabindex="0" aria-selected="false" aria-controls="original">Original</a>
		  </li><li class="tab-title translation-nav__item" role="presentation"><a href='#translated' role="tab" tabindex="0" aria-selected="false" aria-controls="translated">Translated</a></li><% if $TranslatorNote %><li class="tab-title translation-nav__item" role="presentation"><a href='#translator-notes' role="tab" tabindex="0" aria-selected="false" aria-controls="translator-notes">Translator Notes</a></li><% end_if %>
		</ul>
	</div>
	<% if $Artist %>
		<div class="small-6 large-2 columns">
			<p class="article__artist-credit">Image credit: $Artist</p>
			<p class="article__artist-credit">
			<% if $ShowCreditsLink %>
					<% if $Parent.ArtworkCreditsTitle %>
	    				<a class="article__artwork-credit article__artwork-credit--small" href="$Parent.CreditsLink">$Parent.ArtworkCreditsTitle</a><% if $ShowFullSizeImage %><br /><% end_if %>
			  		<% else %>
	    				<a class="article__artwork-credit artwork-credit__link article__artwork-credit--small" href="$Parent.CreditsLink" target="_blank">View Artwork Credits</a><% if $ShowFullSizeImage %><br /><% end_if %>
			  		<% end_if %>
			<% end_if %>
			<% if $ShowFullSizeImage %>
				<% if $FullSizeImage %>
					<a href="$FullSizeImage.Link" class="popup-link link--dashed article__artwork-credit article__full-size-image">View full size</a><br />
				<% else %>
					<a class="popup-link link--dashed article__artwork-credit--small" href="$BannerImage.Link">View full size </a><br />
				<% end_if %>
			<% end_if %>

			</p>
		</div>
	<% end_if %>
</div>

<noscript>
    <style>.Article #poetry {opacity: 1;}</style>
</noscript>

<div class="row row--large">
	<div class="large-1 columns exchanges-sticky">
		<% include BlogShareIcons %>
	</div>
	<div class="large-11 columns">
		<div class="row article__wrap">
			<div class="large-12 columns">
				<div class="tabs-content">
					  <section role="tabpanel" aria-hidden="false" class="content active" id="side-by-side">
					    <% include ArticleBodySideBySide %>
					  </section>
					  <section role="tabpanel" aria-hidden="true" class="content" id="original">
					    <% include ArticleBodyOriginal %>
					  </section>
					  <section role="tabpanel" aria-hidden="true" class="content" id="translated">
					    <% include ArticleBodyTranslated %>
					  </section>
					  <% if $TranslatorNote %>
					  <section role="tabpanel" aria-hidden="true" class="content" id="translator-notes">
					    <% include ArticleBodyTranslatorNotes %>
					  </section>
					  <% end_if %>
				</div>
			</div>
		</div>
	</div>

</div>
<% include ArticleSubnav %>

<div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
	<h1>Translator Notes</h1>
	$TranslatorNote
	<hr />
	<p class="author">
		<% loop $Translators %>
			<a href="$Link" class="text-nowrap">$Name</a><br />
		<% end_loop %>
	</p>
	<a class="close-reveal-modal">&#215;</a>
</div>
