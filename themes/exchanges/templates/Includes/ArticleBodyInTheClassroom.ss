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
                    <% include BylineTranslators %>
                </span>
                <p class="hide-for-large-up author">
                    <a href="#original-work">$OriginalWorkButtonTextCustom &darr;</a>
                </p>
            </div>
            <div class="article__text">
                <h2>In the Classroom</h2>
                $InTheClassroom
            </div>
            <p class="hide-for-large-up">
                <br /><br /><a href="#original-work">$OriginalWorkButtonTextCustom &darr;</a>
            </p>
        </article>
    </div>
</div>
