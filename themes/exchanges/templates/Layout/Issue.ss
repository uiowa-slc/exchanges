<% include IssueCover %>

<div class="layout layout--{$ClassName} typography">
	<div class="row">
		<div class="large-12 columns">
			<h2 class="banner text-center">In this Issue:</h2>

			<p class="text-center"><a class="link--dashed toc__letter-link"href="$LetterLink">$LetterTitle</a></p>
            <% if $ArtworkCredits %>
                <p class="text-center">
                    <% if $ArtworkCreditsTitle %>
                        <a href="$CreditsLink">$ArtworkCreditsTitle</a>
                    <% else %>
                        <a href="$CreditsLink" target="_blank">Artwork Credits</a>
                    <% end_if %>
                </p>
            <% end_if %>
            <% if $UseCenteredToc %>
                <% include IssueTocNoImages %>
            <% else_if $HasArticleImages %>
                <% include IssueTocImages %>
            <% else %>
                <% include IssueTocNoImages %>
            <% end_if %>

		</div>
	</div>
</div>
