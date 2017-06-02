
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
        <ul class="card-list">
                <% loop $PaginatedList %>
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
                    
                <% end_loop %>
            </ul>

    </div>
    
    <div class="large-3 columns">
        <% include BlogSideBar %>         
    </div>
    <% with $PaginatedList %>
        <% include Pagination %>
    <% end_with %>   
</div>

