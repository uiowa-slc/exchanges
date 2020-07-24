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

                                 <a href="$Image.URL" title="$Caption"><img style="display: block; margin: auto; padding-bottom: 20px;" src="$Image.ScaleWidth(300).URL">
                                <span href="$Image.URL" class="button large">View Slideshow</span>
                                </a>
                            <% else %>
                                <a href="$Image.URL" title="$Caption" style="display:none;"><img src="$Image.URL" width="75" height="75"></a>
                            <% end_if %>
                        <% end_loop %>


                    </div>

                    <% if $TranslatorNote %>
                            <a role="button" class="link--dashed" href="#" data-reveal-id="translator-notes-modal">
                                View Translator Notes
                            </a>
                    <% end_if %>
                    <div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
                        <h1>Translator Notes</h1>
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
        </div>

    </div>
    <% include ArticleSubnav %>

    <div id="translator-notes-modal" class="reveal-modal medium" data-reveal>
        <h1>Translator Notes</h1>
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
