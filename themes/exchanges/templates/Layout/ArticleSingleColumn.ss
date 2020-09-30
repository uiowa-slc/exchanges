<% if $BannerImage %>
	<% include ArticleCover %>
<% else %>
	<% include TopBar %>
<% end_if %>
<div class="layout layout--{$ClassName} typography">
	<div class="row row--Article">
		<div class="small-6 large-2 columns">
			<a href="$Parent.Link" class="breadcrumb">$Parent.Title</a>
		</div>
		<div class="medium-8 show-for-large-up columns <% if not $Artist %>end<%end_if %>">
	<%-- 		<ul class="tabs translation-nav " data-tab role="tablist" data-options="scroll_to_content: false">
			  <li class="tab-title translation-nav__item active" role="presentation"><a href="#side-by-side" role="tab" tabindex="0" aria-selected="true" aria-controls="side-by-side">Side-by-side</a></li><li class="tab-title translation-nav__item" role="presentation"><a href='#original' role="tab" tabindex="0" aria-selected="false" aria-controls="original">Original</a>
			  </li><li class="tab-title translation-nav__item" role="presentation"><a href='#translated' role="tab" tabindex="0" aria-selected="false" aria-controls="translated">Translated</a></li><li class="tab-title translation-nav__item" role="presentation"><a href='#translator-notes' role="tab" tabindex="0" aria-selected="false" aria-controls="translator-notes">Translator Notes</a></li>
			</ul> --%>
		</div>
		<% if $Artist %>
			<div class="small-6 large-2 columns">
				<p class="article__artist-credit">Image credit: $Artist</p>
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
				<div id="article__container" class="article__container">
					<div class="large-8 large-centered columns article__body article__body--translated-work">
						<article class="article__translated">
							<header>
								<% if $TranslatedTitle %>
									<h1>$TranslatedTitle</h1>
									<% if $Title %>
									<p class="subheader">$Title</p>
									<% end_if %>
								<% else %>
									<h1>$Title</h1>
								<% end_if %>
							</header>
							<% if $Authors %>
							<p class="poem-info">
								<% if $Translators %>
									<span class="author">
										Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} <% end_if %> by
										<% loop $Translators %>
										<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
										<% end_loop %>

										<% if $TranslatorNote %><br /><a role="button" class="" href="#" data-reveal-id="translator-notes-modal">$TranslatorNoteButtonTextCustom</a><% end_if %>
									</span>
								<% else %>

								<% end_if %>
									<% if $Translators %><br /><% end_if %><span class="author">Original By
									<% loop $Authors %>
										<a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
									<% end_loop %>
									</span>
							</p>
							<% end_if %>

								$Content
								$Form

						</article>
					</div>

				</div>

			</div>
		</div>

	</div>
	<% include ArticleSubnav %>

	<div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
		<h1>$TranslatorNoteButtonTextCustom</h1>
		$TranslatorNote
		<hr />
		<p class="author">
			<% loop $Translators %>
				<a href="$Link" class="text-nowrap">$Name</a><br />
			<% end_loop %>
		</p>
		<a class="close-reveal-modal">&#215;</a>
	</div>
</div>
