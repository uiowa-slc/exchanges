
<div class="row row--large">
    <div class="large-1 columns exchanges-sticky">
        <% include BlogShareIcons %>
    </div>

    <div class="large-9 columns">
        <article class="post__container" role="main">
            <h1 class="post__heading">$Title</h1>


            <% if $FeaturedImage %>
                <% if $FeaturedImageSmall %>
                    <img class="post__image-small" src="$FeaturedImage.ScaleWidth(795).URL" />
                    <% include PostMeta %>
                <% else %>
                    <% include PostMeta %>
                    <img class="post__image" src="$FeaturedImage.ScaleWidth(795).URL" />
                <% end_if %>
            <% else %>
                    <% include PostMeta %>
            <% end_if %>
            
            <div class="post__body">
                $Content

                <% if $Tags %>
                <p class="post__meta post__meta--body">
                    Tagged as:
                    <% loop $Tags %>
                        <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %><% end_if %>
                    <% end_loop %>
                </p> 
                <% end_if %>        
            </div>
            

        </article>
        
        $Form
        $PageComments
    </div>

    <div class="large-2 columns exchanges-sticky">
        <% include BlogSideBar %>
    </div>
</div>
<% if $RelatedPosts %>
<div class="row">
    <div class="large-9 large-offset-1 columns">
        <h2 class="banner text-center">Related Posts</h2>
            <ul class="large-block-grid-3 card-list">
            <% loop $RelatedPosts.Limit(6) %>
                <li class="card-list__item">
                    <% if $FeaturedImage %>
                        <a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.FocusFill(690,440).URL}')">
                        <% else %>
                        <a href="$Link" class="card-list__link card-list__link--small card-list__link--no-featured-img" style="background-image: url('{$ThemeDir}/images/post-default.png')">
                        <% end_if %>
                        <%-- <img class="card-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
                        <div class="card-list__overlay"></div>
                        <div class="card-list__text">
                        <h2 class="card-list__header">$Title</h2>
                            <% if $Credits %>
                            <p class="card-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
                            <% end_if %>
                        </div>
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
</div>
<% end_if %>
