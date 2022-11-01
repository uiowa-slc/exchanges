<p class="text-center"><a class="link--dashed toc__letter-link"href="$LetterLink">$LetterTitle</a></p>
        <% if $ArtworkCredits %>
            <p class="text-center toc__artwork-credits">
                <% if $ArtworkCreditsTitle %>
                    <a href="$CreditsLink">$ArtworkCreditsTitle</a>
                <% else %>
                    <a href="$CreditsLink" target="_blank">Artwork Credits</a>
                <% end_if %>
            </p>
        <% end_if %>
<ul class="toc-no-images">
	<% loop $Children %>
		<li class="toc-no-images__item">
			<h2 class="toc-no-images__header"><a href="$Link" class="">$Title</a></h2>
            <% if $ClassName == "Slideshow" %>
                <% if $Content %>$Content<% end_if %>
            <% end_if %>
            <% if $CustomByline %>
               <p class="card-list__byline card-list__byline--text-only">$CustomByline</p>
            <% else %>
                <p class="card-list__byline card-list__byline--text-only">$TranslatorByline(false).RAW</p>
            <% end_if %>
		</li>
	<% end_loop %>
</ul>
