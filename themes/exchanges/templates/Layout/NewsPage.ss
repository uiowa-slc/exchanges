
<div class="row row--large">
    <div class="large-1 columns exchanges-sticky">
        <a href="$Parent.Link" class="breadcrumb breadcrumb--full-width tiny">$Parent.Title</a>
        <% include BlogShareIcons %>
    </div>

    <div class="large-9 columns">
        <article class="post__container" role="main">
            <h1 class="post__heading">$Title</h1>


            <% if $FeaturedImage %>
                <% if $FeaturedImageSmall %>
                    <img class="post__image--small" src="$FeaturedImage.setWidth(795).URL" />
                    <% include PostMeta %>
                <% else %>
                    <% include PostMeta %>
                    <img class="post__image" src="$FeaturedImage.setWidth(795).URL" />
                <% end_if %>
            <% end_if %>
            
            <div class="post__body">
                $Content

<%--                 <ul class="post__social post__social--horizontal">
                    
                    <li class="post__social-item post__social-item--horizontal"><span class="post__social-label">Share:</span></li>
                    <li class="post__social-item post__social-item--horizontal">
                        <a href="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}', '_blank', 'width=400,height=500');void(0);" title="Share on Facebook">
                        <span class="post__social-icon social-icon-facebook"></span></a>
                    </li>
                    <li class="post__social-item post__social-item--horizontal">
                        <a href="https://twitter.com/intent/tweet?text={$AbsoluteLink}" title="Share on Twitter" target="_blank">
                        <span class="post__social-icon social-icon-twitter"></span></a>
                    </li>
                    <li class="post__social-item post__social-item--horizontal">
                        <a href="mailto:" title="Share via email" target="_blank">
                        <span class="post__social-icon social-icon-envelop"></span></a>
                    </li>

                </ul>  --%>             
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
                    <a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
