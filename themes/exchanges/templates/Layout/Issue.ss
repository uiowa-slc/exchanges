<% include IssueCover %>

<div class="layout layout--{$ClassName} typography">
	<div class="row">
		<div class="large-12 columns">
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
