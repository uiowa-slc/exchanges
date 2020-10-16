    <div id="article__container" class="article__container">
        <div class="large-8 large-centered columns article__body article__body--translated-work" id="translated-work">
            <article class="article__translated">
                <div class="article__translated-title article__meta">
                    <div>
                        <% if $TranslatedTitle && $TranslatedTitle %><h1>$TranslatedTitle.RAW</h1>
                        <% else %>
                            <h1 class="article__shared-title">$Title.RAW</h1>
                        <% end_if %>
                    </div>
                    <% if $Artist %>
                        <span class="author">
                            Art by $Artist
                        </span>
                    <% end_if %>
                </div>
                <div class="article__text">
                    <h2>Artist's Note</h2>
                    $ArtistNotes
                    <hr />
                </div>

            </article>
        </div>

</div>
