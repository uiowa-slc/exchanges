<ul class="toc-no-images">
	<% loop $Children %>
		<li class="toc-no-images__item">
			<h2 class="toc-no-images__header"><a href="$Link" class="">$Title</a></h2>
            <% if $ClassName == "Slideshow" %>
                <% if $Content %>$Content<% end_if %>
            <% end_if %>
            <% if $CustomByline %>

               <p class="card-list__byline">$CustomByline</p>
            <% else %>
                <p class="card-list__byline">$TranslatorByline(false)</p>
            <% end_if %>
		</li>
	<% end_loop %>
</ul>
