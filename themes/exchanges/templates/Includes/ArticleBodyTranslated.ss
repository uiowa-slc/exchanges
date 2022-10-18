<div id="article__container" class="article__container">
    <div class="row">
        <div class="large-8 large-centered columns article__body--poem-lineheight article__body article__body--translated-work" id="translated-work">
            <article class="article__translated">
                <div class="article__translated-title article__meta">
                    <div>
                        <% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle.RAW</h1>
                        <% else %>
                            <h1 class="article__shared-title">$Title.RAW</h1>
                        <% end_if %>
                    </div>
                        <span class="author">
                            <% include BylineTranslators %>
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
    </div>
</div>
