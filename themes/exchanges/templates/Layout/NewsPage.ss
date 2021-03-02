<% include TopBar %>
<div class="layout layout--{$ClassName} typography">
    <div class="row row--large">
        <div class="large-1 columns exchanges-sticky">
            <% include BlogShareIcons %>
        </div>

        <div class="large-9 columns">
            <article class="post__container" role="main">
                <h1 class="post__heading post-padding">$Title</h1>


                <% if $FeaturedImage %>
                    <% if $FeaturedImageSmall %>
                        <div class="post__image-float-container">
                            <img class="post__image post__image--small <% if $FeaturedImageCaption%>post__image--with-caption<% end_if %>" src="$FeaturedImage.ScaleWidth(795).URL" />
                            <% if $FeaturedImageCaption %>
                                <p class="post__image-caption">$FeaturedImageCaption</p>
                            <% end_if %>
                        </div>
                        <% include PostMeta %>

                    <% else %>
                        <% include PostMeta %>
                        <img class="post__image <% if $FeaturedImageCaption%>post__image--with-caption<% end_if %>" src="
                        $FeaturedImage.ScaleWidth(795).URL" />

                        <% if $FeaturedImageCaption %>
                            <p class="post__image-caption post-padding">$FeaturedImageCaption</p>
                        <% end_if %>

                    <% end_if %>

                <% else %>
                        <% include PostMeta %>
                <% end_if %>

                <div class="post__body post-padding">

                    <% if $AudioClip %>
                        <div class="post__audio-container">
                            <h2>Listen to the audio:</h2>
                            <p style="margin: 0"><audio src="$AudioClip.URL" controls="controls" preload="none"></audio></p>
                            <% if $AudioClipTranscript %>
                            <p class="post__transcript-link"><a href="$AudioClipTranscript.URL">Download the transcript</a></p>
                            <% end_if %>
                        </div>
                    <% end_if %>

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

                <div class="clearfix"></div>
            </article>

            $Form
            $PageComments
        </div>

        <div class="large-2 columns exchanges-sticky">
            <% include BlogSidebar %>
        </div>
    </div>
    <% if $RelatedPosts %>
    <div class="row">
        <div class="large-9 large-offset-1 columns">
            <% if $AudioClip %>
                <h2 class="banner text-center">More Episodes</h2>
            <% else %>
                <h2 class="banner text-center">Related Posts</h2>
            <% end_if %>
                <ul class="large-block-grid-3 card-list">
                <% loop $RelatedPosts.Limit(6) %>
                    <li class="card-list__item">
                        <% if $FeaturedImage %>
                            <a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.FocusFill(690,440).URL}')">
                            <% else %>
                            <a href="$Link" class="card-list__link card-list__link--small card-list__link--no-featured-img" style="background-image: url('{$ThemeDir}/dist/images/post-default.png')">
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
</div>
