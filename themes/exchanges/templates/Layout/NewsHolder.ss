
<div class="row">
    <div class="large-12 columns">
        <a href="$Link" class="button breadcrumb tiny">$Title</a>
    </div>
</div>

<div class="row">
    <div class="large-9 columns">
        <ul class="card-list card-list--two">
            <% loop $Posts.Limit(4) %>
                <li class="card-list__item card-list__item--single-row">
                    <a href="$Link" class="card-list__link card-list__link--medium" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
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
        <% if $FeaturedCategories %>
            <% loop $FeaturedCategories %>
            <section class="card-section">
            <h3 class="card-section__header">$Title</h3>
            <ul class="card-list">
                <% loop $BlogPosts.Limit(3) %>
                    <% if $FeaturedImage %>
                    <li class="card-list__item card-list__item--single-row">
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
                    <% end_if %>
                <% end_loop %>
            </ul>
            <p><a class="card-section__header card-section__header--featured" href="$Link">See all $Title blogs &rarr;</a></p>
            </section>
            <% end_loop %>

        <% else %>
            <section class="card-section">
            <ul class="card-list">
                <% loop $Posts.Limit(12,4) %>
                    <% if $FeaturedImage %>
                    <li class="card-list__item card-list__item--single-row">
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
                    <% end_if %>
                <% end_loop %>
            </ul>
            <p><a class="card-section__header card-section__header--featured" href="blog/">See all posts &rarr;</a></p>
            </section>
        <% end_if %>
    </div>
    <div class="large-3 columns exchanges-sticky">
        <h2 class="banner banner--no-bg banner--podcast"><span class="social-icon-podcast"></span> Our Podcast</h2>
        <div class="side-cards">
            <% loop $PostsByCategory('podcasts').Limit(5) %>
                <a href="$Link" class="side-cards__link">
                    <% if $FeaturedImage %>
                        <img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
                    <% else %>
                        <img class="side-cards__img" src="{$ThemeDir}/images/placeholder.png">
                    <% end_if %>
                    <h2 class="side-cards__header side-cards__header--with-padding side-cards__header--podcast">$Title</h2>             
                </a>
            <% end_loop %>
            <p><a class="banner banner--no-bg banner--podcast" href="blog/category/podcasts">See all podcasts &rarr;</a></p>
            <h2 class="banner banner--no-bg">Journal</h2>
            <div class="card-list__item card-list__item--issue">
            <% loop $ChildrenOf("issues").Reverse.Limit(3) %>
                <a href="$Link" class="card-list__link card-list__link--margin-bottom" style="background-image: url('{$Emblem.CroppedFocusedImage(690,440).URL}')">
                    <%-- <img class="card-list__img" src="$BannerImage.CroppedFocusedImage(690,440).URL"> --%>
                    <div class="card-list__overlay card-list__overlay--always-visible"></div>
                    <div class="card-list__text card-list__text--always-visible card-list__text--large">
                        <h2 class="card-list__header card-list__header--issue-title"><span>$Title</span></h2>
                        <p class="card-list__issue-date">$IssueDate</p>
                        <p class="card-list__issue-toc-text">Table of Contents</p>
                    </div>
                </a>
            <% end_loop %>
            
            </div>
            <p><a class="banner banner--no-bg" href="issues/">See all issues of Exchanges &rarr;</a></p>
            <% loop $FeaturedCategories %>
                <section class="card-section">
                <h3 class="card-section__header">$Title</h3>
                <ul class="card-list">
                <% loop $BlogPosts.Limit(3) %>
                    <% if $FeaturedImage %>
                    <li class="card-list__item card-list__item--single-row">
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
                    <% end_if %>
                <% end_loop %>
            </ul>
            <p><a class="card-section__header card-section__header--featured" href="$Link">See all $Title blogs &rarr;</a></p>
            </section>
        <% end_loop %>
        </div>
        
    </div>
</div>
<% with $PaginatedList %>
    <% include Pagination %>
<% end_with %>
