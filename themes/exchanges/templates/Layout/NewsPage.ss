<% include Breadcrumb %>
<div class="row content-page">
    <div class="large-1 columns">
        <% include BlogShareIcons %>
    </div>

    <div class="large-7 columns">
        <article>
            <% if $FeaturedImage %>
                <p class="post-image">$FeaturedImage.setWidth(795)</p>
            <% end_if %>
            <h1>$Title</h1>
            <div class="content">
                $Content
            </div>
            <% include PostMeta %>
        </article>
        
        $Form
        $PageComments
    </div>

    <div class="large-3 large-offset-1 columns">
        <% include BlogSideBar %>
    </div>
</div>
