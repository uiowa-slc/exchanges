<% include Breadcrumb %>
<div class="row content-page">

    <div class="large-7 columns">
        <article>

            <h1>$Title</h1>
            
            <% if $FeaturedImage %>
                <p class="post-image">$FeaturedImage.setWidth(795)</p>
            <% end_if %>
            <div class="col-lg-1">
                <div><% include BlogShareIcons %></div>
            </div>
            <div class="content" style="padding-left: 85px;">$Content</div>

            <% include EntryMeta %>
        </article>
        
        $Form
        $PageComments
    </div>
    


    <div class="large-4 columns">
    <% include BlogSideBar %>
    </div>

</div>
