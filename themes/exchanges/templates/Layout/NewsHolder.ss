
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
        <section class="card-section">
        <h3 class="card-section__header">Interviews</h3>
        <ul class="card-list">
            <% loop $Posts.Limit(3) %>
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
        </section>
        <section class="card-section">
        <h3 class="card-section__header">Essays</h3>
        <ul class="card-list">
            <% loop $Posts.Sort('RAND()').Limit(3,4) %>
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
        </section>
        <section class="card-section">
        <h3 class="card-section__header">Book Reviews</h3>
        <ul class="card-list">
            <% loop $Posts.Sort('RAND()').Limit(3,6) %>
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
        </section>
        <ul class="large-block-grid-3 card-list">
            <% loop $Posts.Limit(9) %>
                <% if $FeaturedImage %>
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
                <% end_if %>
            <% end_loop %>
        </ul>
        
    </div>
    <div class="large-3 columns">
        <h2 class="banner banner--no-bg banner--podcast"><span class="social-icon-podcast"></span>Our Podcast</h2>
        <div class="side-cards">
            <% loop $Posts.Sort('RAND()').Limit(5) %>
                <a href="$Link" class="side-cards__link">
                    <img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
                    <h2 class="side-cards__header side-cards__header--podcast">$Title</h2>              
                </a>
            <% end_loop %>
            <div class="card-list__item card-list__item--issue">
            <% loop $ChildrenOf("issues").Limit(3) %>
                <a href="$Link" class="card-list__link" style="background-image: url('{$Emblem.CroppedFocusedImage(690,440).URL}')">
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
            <p><a class="card-section__header card-section__header--featured" href="#">See all $Title blogs &rarr;</a></p>
            </section>
        <% end_loop %>
        </div>
        <p><a class="banner banner--no-bg banner--podcast" href="#">See all podcasts &rarr;</a></p>
    </div>
</div>
<% with $PaginatedList %>
    <% include Pagination %>
<% end_with %>
