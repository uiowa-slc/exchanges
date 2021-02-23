<% include TopBar %>
<div class="layout layout--{$ClassName} typography">
    <div class="row">
        <div class="large-12 columns">
            <a href="$Link" class="button breadcrumb tiny">$Title</a>
        </div>
    </div>

    <div class="row">
        <div class="large-9 columns">
            <h1>
                $Title
            </h1>
            $Content
                <ul class="card-list">
<%--                     <% loop $PaginatedList %>
                        <li class="card-list__item card-list__item--single-row">
                            <a href="$Link" class="card-list__link card-list__link--small" style="background-image: url('{$FeaturedImage.FocusFill(690,440).URL}')">
                                <% if $FeaturedImage %>
                                    <div class="card-list__overlay"></div>
                                    <div class="card-list__text">
                                <% else %>
                                    <div class="card-list__overlay card-list__overlay--always-visible"></div>
                                    <div class="card-list__text card-list__text--always-visible">
                                <% end_if %>
                                <h2 class="card-list__header">$Title</h2>
                                    <% if $Credits %>
                                    <p class="card-list__byline"><% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %>$Name.XML<% end_loop %></p>
                                    <% end_if %>
                                </div>
                            </a>
                        </li>
                    <% end_loop %> --%>
                </ul>
                <% loop $PaginatedList %>
            <article class="post__container" style="margin-bottom: 5px">
                <h2 class="post__heading"><a href="$Link">$Title</a></h1>


                <% if $FeaturedImage %>
                        <img class="post__image-small" src="$FeaturedImage.ScaleWidth(795).URL" />
                        <% include PostMeta %>
                <% else %>
                        <% include PostMeta %>
                <% end_if %>

                <div class="post__body">

                    <% if $AudioClip %>
                        <div class="post__audio-container">
                            <h2>Listen to the audio:</h2>
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
                   <%--  <h2><a href="$Link">$Title</a></h2>
                    $Content.Summary --%>

                <% end_loop %>
<%--             <div class="pagination">
                <% with $PaginatedList %>
                    <% if $MoreThanOnePage %>
                        <p class="pagination">
                            <% if $NotFirstPage %>
                                <a class="prev" href="{$PrevLink}">&larr; Prev </a>
                            <% end_if %>

                            <% loop $PaginationSummary(4) %>
                                <% if $CurrentBool %>
                                    <button class="current pagination-link">$PageNum</button>
                                <% else %>
                                    <% if $Link %>
                                        <a class="pagination-link" href="$Link">$PageNum</a>
                                    <% else %>
                                        <span>...</span>
                                    <% end_if %>
                                <% end_if %>
                            <% end_loop %>

                            <% if $NotLastPage %>
                                <a class="next" href="{$NextLink}"> Next &rarr;</a>
                            <% end_if %>
                        </p>
                    <% end_if %>
                <% end_with %>
            </div> --%>

        </div>

        <div class="blog-sidebar large-3 columns">

            <div class="side-cards">
                <h2 class="banner">More from Exchanges</h2>
                <% include SideCards %>
               <%--  <% if $PaginatedList.CurrentPage() == 1 %>
                    <% loop $Posts.Sort('RAND()').Limit(5) %>
                        <a href="$Link" class="side-cards__link">
                            <% if $FeaturedImage %>
                                <img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
                            <% end_if %>
                            <h2 class="side-cards__header">$Title</h2>
                        </a>
                    <% end_loop %>
                <% else_if  $PaginatedList.CurrentPage() != 1  %>
                    <% loop $Posts.Sort('RAND()').Limit(2) %>
                        <a href="$Link" class="side-cards__link">
                            <% if $FeaturedImage %>
                                <img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
                            <% end_if %>
                                <h2 class="side-cards__header">$Title</h2>
                        </a>
                    <% end_loop %>
                <% end_if %> --%>
            </div>
        </div>



    </div>

</div>
