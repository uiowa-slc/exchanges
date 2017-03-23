<div class="post__summary">
    <p class="post__image">
        <a href="$Link" <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>>
            $FeaturedImage.setWidth(795)
        </a>
    </p>    
    <h2>
        <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
            <% if $MenuTitle %>$MenuTitle
            <% else %>$Title<% end_if %>
        </a>
    </h2>

    <% if $Content %>
        <p>
            $Content.Summary(200)
            <a href="$Link">
               Continue Reading
            </a>
        </p>
    <% end_if %>
    
    <% include PostMeta %>
</div>