<div class="row content-page">

<div class="large-7 columns">
 <% include MemberDetails %>
        <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname</h2>
        <hr />


        <section class="card-section">
            <ul class="card-list card-list--two">
                <% loop $PaginatedList.Limit(2) %>
                    <li class="card-list__item card-list__item--single-row">
                        <a href="$Link" class="card-list__link card-list__link--medium" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
                            <%-- <img class="card-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
                            <div class="card-list__overlay card-list__overlay--always-visible"></div>
                            <div class="card-list__text card-list__text--always-visible">
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
                <% loop $PaginatedList.Limit(15,2) %>
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
            <p><a class="card-section__header card-section__header--featured" href="blog/">See all blog posts &rarr;</a></p>
        </section>

    </div>
    <%-- <div class="small-7 columns">
        <% include MemberDetails %>
=======
        <section>
            <h1>$CurrentProfile.FirstName $CurrentProfile.Surname</h1>
                <div class="profile-summary">
                    <% if $CurrentProfile.BlogProfileImage %>
                        <img src="$CurrentProfile.BlogProfileImage.setWidth(180).URL" alt="" role="presentation" class="profile-image" />
                    <% end_if %>
                    <p>$CurrentProfile.BlogProfileSummary</p>
                </div>

        </section>

        <% if $blogPosts %>
>>>>>>> 837b2a2bd8675f43faf2ee1c7e0133152cc21077
        <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname</h2>
        <section class="card-section">
            <ul class="card-list card-list--two">
                <% loop $blogPosts.Limit(2) %>
                    <li class="card-list__item card-list__item--single-row">
                        <a href="$Link" class="card-list__link card-list__link--medium" style="background-image: url('{$FeaturedImage.CroppedFocusedImage(690,440).URL}')">
                            <%-- <img class="card-list__img" src="$FeaturedImage.FocusFill(640,400).URL"> --%>
                            <div class="card-list__overlay card-list__overlay--always-visible"></div>
                            <div class="card-list__text card-list__text--always-visible">
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
                <% loop $blogPosts.Limit(99999,2) %>
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
        <% end_if %>
    </div>
        <% with $PaginatedList %>
            <% include Pagination %>
        <% end_with %>
      
    </div>
</div>