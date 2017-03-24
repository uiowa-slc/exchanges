
<div class="row">
    <div class="large-12 columns">
        <a href="$Link" class="button breadcrumb tiny">$Title</a>
    </div>
</div>

<div class="row">
    <div class="large-9 columns">
        <ul class="large-block-grid-2 card-list">
            <% loop $Posts.Sort('RAND()').Limit(2,2) %>
                
                <li class="card-list__item">
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
        <h2 class="banner banner--no-bg banner--podcast"><span class="social-icon-podcast">
    </span>Our Podcast</h2>
        <div class="side-cards">
            <% loop $Posts.Sort('RAND()').Limit(5) %>
                <a href="$Link" class="side-cards__link">
                    <img class="side-cards__img" src="$FeaturedImage.FocusFill(640,400).URL">
                    <h2 class="side-cards__header side-cards__header--podcast">$Title</h2>              
                </a>
            <% end_loop %>
        </div>
        <p><a class="banner banner--no-bg banner--podcast" href="#">See all podcasts &rarr;</a></p>
    </div>
</div>
<% with $PaginatedList %>
    <% include Pagination %>
<% end_with %>
