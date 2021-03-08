<% include TopBar %>
<div class="layout layout--{$ClassName} typography">
    <div class="row">
        <div class="large-12 columns">
            <a href="$Link" class="button breadcrumb tiny">$Title</a>
        </div>
    </div>

    <div class="row">
        <div class="large-9 large-centered columns">
            <h1>
                $Title
            </h1>
            <div class="podcast-intro">
                <% if $CoverImage %>
                    <img src="$CoverImage.URL" class="podcast-cover" />
                <% end_if %>
                $Content
                 <div class="clearfix"></div>
            </div>

        <% loop $PaginatedList %>
            <article class="post__container" style="margin-bottom: 5px">
                <h2 class="post__heading post-padding"><a href="$Link">$Title</a></h1>


                <% if $FeaturedImage %>
                        <div class="post__image-float-container">
                            <img class="post__image post__image--small <% if $FeaturedImageCaption%>post__image--with-caption<% end_if %>" src="$FeaturedImage.ScaleWidth(795).URL" />
                            <% if $FeaturedImageCaption %>
                                <p class="post__image-caption">$FeaturedImageCaption</p>
                            <% end_if %>
                        </div>
                    <% include PostMeta %>
                <% else %>
                    <% include PostMeta %>
                <% end_if %>

                <div class="post__body post-padding">

                    <% if $AudioClip %>
                        <div class="post__audio-container">
                            <h3>Listen to the audio:</h3>
                            <p style="margin: 0"><audio src="$AudioClip.URL" controls="controls" preload="none"></audio></p>
                            <% if $AudioClipTranscript %>
                            <p class="post__transcript-link"><a href="$AudioClipTranscript.URL">Download the transcript</a></p>
                            <% end_if %>
                        </div>
                    <% end_if %>

                    <p>$Content.Summary</p>
                    <p><a href="$Link">Continue Reading...</a></p>
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

        <% end_loop %>

        </div>

<%--         <div class="blog-sidebar large-3 columns">

            <div class="side-cards">
                <h2 class="banner">More from Exchanges</h2>
                <% include SideCards %>

            </div>
        </div> --%>



    </div>

</div>
