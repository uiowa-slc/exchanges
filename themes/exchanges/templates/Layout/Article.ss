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
	        <ul class="tabs translation-nav " data-tab role="tablist" data-options="scroll_to_content: false">

            <% if not $Subjournal.HideSideBySide %>
	        <li class="tab-title translation-nav__item active" role="presentation">
	            <a href="#side-by-side" role="tab" tabindex="0" <% if $Subjournal.HideSideBySide %>aria-selected="false"<% else %>aria-selected="true"<% end_if %> aria-controls="side-by-side">
	                Side-by-side
	            </a>
	        </li>
	        <li class="tab-title translation-nav__item <% if $Subjournal.HideSideBySide %>active<% end_if %>" role="presentation">
	            <a href='#original' role="tab" tabindex="0" <% if $Subjournal.HideSideBySide %>aria-selected="true"<% else %>aria-selected="false"<% end_if %> aria-controls="original">
	                $OriginalWorkButtonTextCustom
	            </a>
	        </li>
	        <li class="tab-title translation-nav__item" role="presentation">
	            <a href='#translated' role="tab" tabindex="0" aria-selected="false" aria-controls="translated">
	                Translation
	            </a>
	        </li>
            <% else %>

            <li class="tab-title translation-nav__item <% if $Subjournal.HideSideBySide %>active<% end_if %>" role="presentation">
                <a href='#translated' role="tab" tabindex="0" aria-selected="false" aria-controls="translated">
                    Translation
                </a>
            </li>
            <li class="tab-title translation-nav__item" role="presentation">
                <a href='#original' role="tab" tabindex="0" <% if $Subjournal.HideSideBySide %>aria-selected="true"<% else %>aria-selected="false"<% end_if %> aria-controls="original">
                    $OriginalWorkButtonTextCustom
                </a>
            </li>
            <% end_if %>
	        <% if $TranslatorNote %>
	            <li class="tab-title translation-nav__item" role="presentation">
	                <a href='#translator-notes' role="tab" tabindex="0" aria-selected="false" aria-controls="translator-notes">
	                    $TranslatorNoteButtonTextCustom
	                </a>
	            </li>
	        <% end_if %>
	        <% if $InTheClassroom %>
	            <li class="tab-title translation-nav__item" role="presentation">
	                <a href='#in-the-classroom' role="tab" tabindex="0" aria-selected="false" aria-controls="in-the-classroom">
	                    In the Classroom
	                </a>
	            </li>
	        <% end_if %>
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

	<div class="row row--large article__columns">
        <% if not $Subjournal.HideShareLinks %>
	    <div class="large-1 columns exchanges-sticky">
	        <% include BlogShareIcons %>
	    </div>
        <% end_if %>
	    <div class="<% if $Subjournal.HideShareLinks %>large-12<% else %>large-11<% end_if %> columns">
	        <div class="row article__wrap">
	            <div class="<% if $Subjournal.HideShareLinks %>large-10 large-centered<% else %>large-11<% end_if %> columns">
	                <div class="tabs-content">
                        <% if not $Subjournal.HideSideBySide %>
	                      <section role="tabpanel" aria-hidden="false" class="content active" id="side-by-side">
	                        <% include ArticleBodySideBySide %>
	                      </section>
                        <% end_if %>
	                      <section role="tabpanel" aria-hidden="true" class="content" id="original">
	                        <% include ArticleBodyOriginal %>
	                      </section>
	                      <section role="tabpanel" aria-hidden="true" class="content <% if $Subjournal.HideSideBySide %>active<% end_if %>" id="translated">
	                        <% include ArticleBodyTranslated %>
	                      </section>
	                      <% if $TranslatorNote %>
	                      <section role="tabpanel" aria-hidden="true" class="content" id="translator-notes">
	                        <% include ArticleBodyTranslatorNotes %>
	                      </section>
	                      <% end_if %>
	                      <% if $InTheClassroom %>
	                      <section role="tabpanel" aria-hidden="true" class="content" id="in-the-classroom">
	                        <% include ArticleBodyInTheClassroom %>
	                      </section>
	                      <% end_if %>
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

	<div id="in-the-classroom-modal" class="reveal-modal medium" data-reveal>
	    <h1>In the Classroom</h1>
	    $InTheClassroom
<%-- 	    <hr />
	    <p class="author">
	        <% loop $Translators %>
	            <a href="$Link" class="text-nowrap">$Name</a><br />
	        <% end_loop %>
	    </p> --%>
	    <a class="close-reveal-modal">&#215;</a>
	</div>
</div>
