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
        <div class="small-12 columns <% if not $Artist %>end<%end_if %>">
            <% if $TranslatorNote || $ArtistNotes || $InTheClassroom %>
                <ul class="tabs translation-nav " data-tab role="tablist" data-options="scroll_to_content: false">

                <li class="tab-title translation-nav__item active" role="presentation">
                    <a href="#main" role="tab" tabindex="0" aria-selected="true" aria-controls="side-by-side">
                        $Title
                    </a>
                </li>
                <% if $Content3 %>
                    <li class="tab-title translation-nav__item" role="presentation">
                        <a href='#original' role="tab" tabindex="0" aria-selected="false" aria-controls="translator-notes">
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
                <% if $ArtistNotes %>
                    <li class="tab-title translation-nav__item" role="presentation">
                        <a href='#artist-notes' role="tab" tabindex="0" aria-selected="false" aria-controls="artist-notes">
                            Artist's Note
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
            <% end_if %>
        </div>

            <div class="small-6 large-2 columns">

            </div>

    </div>

    <noscript>
        <style>.Article #poetry {opacity: 1;}</style>
    </noscript>

    <div class="row row--large article__columns">
        <div class="large-1 columns exchanges-sticky">
            <% include BlogShareIcons %>
        </div>
        <div class="large-11 columns">
            <div class="row article__wrap">
                <div class="large-12 columns">
                    <div class="tabs-content">
                          <section role="tabpanel" aria-hidden="false" class="content active" id="main">
                            <div class="article__container">
                                $Content
                            </div>
                          </section>
                          <% if $Content3 %>
                          <section role="tabpanel" aria-hidden="true" class="content" id="original">
                            <div class="article__container">
                                $Content3
                            </div>
                          </section>
                          <% end_if %>
                          <% if $TranslatorNote %>
                          <section role="tabpanel" aria-hidden="true" class="content" id="translator-notes">
                            <% include ArticleBodyTranslatorNotes_nolinks %>
                          </section>
                          <% end_if %>
                          <% if $ArtistNotes %>
                          <section role="tabpanel" aria-hidden="true" class="content" id="artist-notes">
                            <% include ArticleBodyArtistNotes %>
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
        <a class="close-reveal-modal">&#215;</a>
    </div>
</div>
