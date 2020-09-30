<div id="article__container" class="article__container article__container--sidebyside" data-equalizer data-equalizer-mq="large-up">
    <div class="row">
        <div class="large-6 large-push-6 columns article__body article__body--poem-lineheight article__body--translated-work" id="translated-work">
            <article class="article__translated">
                <div class="article__translated-title article__meta" data-equalizer-watch>
                    <div>
                        <% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle.RAW</h1>
                        <% else %>
                            <h1 class="article__shared-title">$Title.RAW</h1>
                        <% end_if %>
                    </div>
                        <span class="author">
                            Translated <% if $OriginalLanguage %>from the {$OriginalLanguage} by <% end_if %>
                            <% loop $Translators %>
                            <a href="$Link" class="text-nowrap">$Name</a><% if not $Last %>, <% end_if %>
                            <% end_loop %>
                            <% if $TranslatorNote %>
                                <br />
                                <a role="button" class="link--dashed" href="#" data-reveal-id="translator-notes-modal">
                                    $TranslatorNoteButtonTextCustom
                                </a>
                            <% end_if %>
                            <% if $InTheClassroom %>
                                <br />
                                <a role="button" class="link--dashed" href="#" data-reveal-id="in-the-classroom-modal">
                                    In the Classroom
                                </a>
                            <% end_if %>
                        </span>
                    <p class="hide-for-large-up author">
                        <a href="#original-work">$OriginalWorkButtonTextCustom &darr;</a>
                    </p>
                </div>
                <div class="article__text">
                $Content2
                </div>
                <p class="hide-for-large-up">
                    <br /><br /><a href="#original-work">$OriginalWorkButtonTextCustom &darr;</a>
                </p>
            </article>
        </div>

        <div class="large-6 large-pull-6 columns article__body article__body--poem-lineheight article__body--original-work article__body--lang-{$languageCode}" id="original-work" lang="{$languageCode}" <% if OriginalRTL %>dir="rtl"<% end_if %>>
            <article>
                <div class="article__untranslated-title article__meta <% if $OriginalTitleUseAltFont %>alt-font<% end_if %>" data-equalizer-watch>
                    <div>
                        <% if $UntranslatedTitle && $TranslatedTitle %>
                            <h1>$UntranslatedTitle.RAW</h1>
                        <% else %>
                            <h1>$Title.RAW</h1>
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
                <div class="article__text">
                    $Content
                </div>
            </article>
        </div>
    </div>
</div>
