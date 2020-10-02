<% if $BannerImage %>
    <% include ArticleCover %>
<% else %>
    <% include TopBar %>
<% end_if %>
<div class="layout layout--{$ClassName} typography">
    <div class="row row--Article">
        <div class="small-6 large-2 columns">
            <a href="$Parent.Link" class="breadcrumb">$Parent.Title</a>
        </div>
        <div class="medium-8 show-for-large-up columns <% if not $Artist %>end<%end_if %>">

        </div>

    </div>


    <div class="row row--large">
        <div class="large-1 columns exchanges-sticky">
            <% include BlogShareIcons %>
        </div>
        <div class="large-11 columns">
            <div class="row article__wrap">
                <div class="large-12 columns text-center">
                    <h1>$Title</h1>

                    <p></p>
                    <div class="slideshow">
                        <% loop $SlideshowImages %>
                            <% if $First %>
                                <a href="$Image.URL" class="card-list__link" style="background-image: url('$Image.ScaleWidth(500).URL'); background-size: contain; background-position: 50% 50%; background-repeat: no-repeat; height: 500px; width: 500px; margin: auto;">
                                        <div class="card-list__overlay card-list__overlay--always-visible"></div>
                                            <div class="card-list__text card-list__text--always-visible card-list__text--small">
                                                <div class="row flex-center">
                                                    <div class="small-2 columns">
                                                    </div>
                                                    <div class="small-10 columns">

                                                    <span href="$Image.URL" class="button large slideshow__startbutton" style="background: none; border: 2px solid white;"><% if $Top.SlideshowButtonText %>$Top.SlideshowButtonText<% else %>View Slideshow<% end_if %> <svg style="padding-top: 5px;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                  <path fill-rule="evenodd" d="M1.5 13A1.5 1.5 0 0 0 3 14.5h8a1.5 1.5 0 0 0 1.5-1.5V9a.5.5 0 0 0-1 0v4a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 0 0-1H3A1.5 1.5 0 0 0 1.5 5v8zm7-11a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 .5.5v5a.5.5 0 0 1-1 0V2.5H9a.5.5 0 0 1-.5-.5z"/>
                                                  <path fill-rule="evenodd" d="M14.354 1.646a.5.5 0 0 1 0 .708l-8 8a.5.5 0 0 1-.708-.708l8-8a.5.5 0 0 1 .708 0z"/>
                                                </svg></span>

                                                    </div>
                                                    <div class="small-2 columns">

                                                    </div>
                                                </div>
                                            </div>

                                    </a>
                                <%--                                  <a href="$Image.URL" title="$Caption"><img class="slideshow__startimg" style="" src="$Image.ScaleWidth(500).URL">
                                <span href="$Image.URL" class="button large slideshow__startbutton" style="background: none; border: 2px solid #03a3be;"><% if $Top.SlideshowButtonText %>$Top.SlideshowButtonText<% else %>View Slideshow<% end_if %> <svg style="padding-top: 5px;" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M1.5 13A1.5 1.5 0 0 0 3 14.5h8a1.5 1.5 0 0 0 1.5-1.5V9a.5.5 0 0 0-1 0v4a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 0 0-1H3A1.5 1.5 0 0 0 1.5 5v8zm7-11a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 .5.5v5a.5.5 0 0 1-1 0V2.5H9a.5.5 0 0 1-.5-.5z"/>
  <path fill-rule="evenodd" d="M14.354 1.646a.5.5 0 0 1 0 .708l-8 8a.5.5 0 0 1-.708-.708l8-8a.5.5 0 0 1 .708 0z"/>
</svg></span>
                       --%>          </a>
                            <% else %>
                                <a href="$Image.URL" title="$Caption" style="display:none;"><img src="$Image.URL" width="75" height="75"></a>
                            <% end_if %>
                        <% end_loop %>


                    </div>

                    <% if $Artist %>
                        <p>Art by: $Artist</p>
                    <% end_if %>

                    <% if $TranslatorNote %>
                            <a role="button" class="link--dashed" href="#" data-reveal-id="translator-notes-modal">
                                $TranslatorNoteButtonTextCustom
                            </a>
                    <% end_if %>
                    <div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
                        <h1>$TranslatorNoteButtonTextCustom</h1>
                        $TranslatorNote
                        <hr />
                        <p class="author">
                            <% loop $Translators %>
                                <a href="$Link" class="text-nowrap">$Name</a><br />
                            <% end_loop %>
                        </p>
                        <a class="close-reveal-modal">&#215;</a>
                    </div>

                </div>
            </div>
            <% include ArticleSubnav %>

        </div>

    </div>



    <div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
        <h1>$TranslatorNoteButtonTextCustom</h1>
        $TranslatorNote
        <hr />
        <p class="author">
            <% loop $Translators %>
                <a href="$Link" class="text-nowrap">$Name</a><br />
            <% end_loop %>
        </p>
        <a class="close-reveal-modal">&#215;</a>
    </div>

    <div id="in-the-classroom-modal" class="reveal-modal medium" data-reveal>
        <h1>In the Classroom</h1>
        $InTheClassroom
        <hr />
        <p class="author">
            <% loop $Translators %>
                <a href="$Link" class="text-nowrap">$Name</a><br />
            <% end_loop %>
        </p>
        <a class="close-reveal-modal">&#215;</a>
    </div>
</div>
