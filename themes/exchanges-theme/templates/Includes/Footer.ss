<footer id="footer">
    <div class="container clearfix">
        <img src="images/md-logo.png" alt="Student Life Marketing + Design" width="63" class="left">
        <p style="color: #bbb;font-size: 12px;xtext-align:center;">The Division of Student Life Annual Report is produced annually by Student Life Marketing + Design (M+D), a communications agency powered by students. M+D provides real-world experience, preparing students for careers in marketing, design, web development, and social media.</p>
        <hr>
        <div id="footer-header" class="clearfix">
            <p><a href="http://www.uiowa.edu/"><img src="http://studentlife.uiowa.edu/themes/doss/images/logo-footer.png" alt="The University of Iowa - Logo" /></a></p>
            <div id="footer-search" class="clearfix">
                <form action="/home/SearchForm" method="get" accept-charset="utf-8">
                    <input type="text" name="Search" value="" title="Search Text" id="search" placeholder="Search..."/>
                    <input type="image" name="submit" alt="Search" id="search-submit" src="http://studentlife.uiowa.edu/themes/doss/images/search-icon.png" />
                </form>         
            </div>
        </div>
        <br>
        <div class="row-fluid">
            <div class="clear-list">
                <div id="list1" class="span3">
                    <ul class="unstyled footer-list">
                        <li class="footer-list-header"><a href="/student-success/">Student Success</a></li>
                        <li><a href="http://dos.uiowa.edu">Dean of Students</a></li>
                        <li><a href="http://thechallenge.uiowa.edu/">The Iowa Challenge</a></li>
                        <li><a href="http://imu.uiowa.edu/leadership/">Leadership Development</a></li>
                        <li><a href="http://www.uiowa.edu/admissions/undergrad/majors/pick-one.htm">Pick One Program</a></li>
                        <li><a href="http://www.uiowa.edu/~sds/">Student Disability Services</a></li>
                    </ul>
                    <ul class="unstyled footer-list">
                        <li class="footer-list-header"><a href="/parents/">Parents</a></li>
                        <li><a href="/parents">Parent’s Association</a></li>
                    </ul> 
                </div>
                <div id="list2" class="span3">
                    <ul class="unstyled footer-list">
                        <li class="footer-list-header"><a href="/campus-life/">Campus Life</a></li>
                        <li><a href="http://imu.uiowa.edu">Iowa Memorial Union</a></li>
                        <li><a href="http://imu.uiowa.edu/osl">Center for Student Involvement and Leadership</a></li>
                        <li><a href="http://recserv.uiowa.edu/">Recreational Services</a></li>
                        <li><a href="http://houising.uiowa.edu">University Housing &amp; Dining</a></li>
                    </ul>
                     <ul class="unstyled footer-list">
                        <li class="footer-list-header"><a href="/about/">About</a></li>
                        <li><a href="/about/contact">Contact</a></li>
                    </ul> 
                </div>
            </div>
            <div id="list3" class="span3">
                <ul class="unstyled footer-list">
                    <li class="footer-list-header"><a href="/health-and-safety/">Health and Safety</a></li>
                    <li><a href="http://www.uiowa.edu/ucs/">Counseling Services</a></li>
                    <li><a href="http://studenthealth.uiowa.edu/wellness">Health Iowa</a></li>
                    <li><a href="http://studenthealth.uiowa.edu/">Student Health Services</a></li>
                    <li><a href="http://www.uiowa.edu/~wrac/">Women’s Resource and Action Center</a></li>
                </ul>
                <a class="give-now" href="http://studentlife.uiowa.edu/give">Give Now</a>
            </div>
            <div id="list4" class="span3">
                <div id="footer-contact">
                    <div id="footer-address" class="vcard">
                        <div class="org">Division of Student Life</div>
                        <p class="adr">
                            <span class="street-address">249 Iowa Memorial Union</span><br>
                            <span class="locality">Iowa City</span> , 
                            <span class="region">IA</span>
                            <span class="postal-code">52242</span><br>
                            <span class="tel">319-335-3557</span><br>
                            <a class="email" href="mailto:vp-student-life@uiowa.edu">vp-student-life@uiowa.edu</a>
                        </p>
                    </div>
                    <div id="copyright">
                        <p>&copy; 2012 <a href="/#">The University of Iowa</a>. <br>All Rights Reserved.<br/>Site designed by IMU Marketing &amp; Design.</p>
                    </div>
                </div>
            </div>
        </div><!-- end row -->
    </div><!-- end container -->
</footer>


<!--
<footer class="container">
	<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		<aside class="socialLinks pull-right">
			<% if SiteConfig.TwitterUsername %>
				<a title="Follow us on Twitter" href="http://www.twitter.com/$SiteConfig.TwitterUsername" target="_blank" class="icon-dark icon-small icon-twitter-sign"></a>
			<% end_if %>
			<% if SiteConfig.FacebookURL %>
				<a title="Join us on Facebook" href="http://www.facebook.com/$SiteConfig.FacebookURL" target="_blank" class="icon-dark icon-small icon-facebook-sign"></a>
			<% end_if %>
		</aside>
	<% end_if %>
	<% if Footer %>
		<ul class="nav nav-pills">
			<% with Footer %>
				<% loop Children %>
					<li class="$LinkingMode <% if $LinkingMode = current %>active<% end_if %>">
						<a href="$Link" title="Go to the $Title.XML page"  class="$LinkingMode"<% if AccessKey %> accesskey="$AccessKey"<% end_if %>>
							$MenuTitle.XML
						</a>
					</li>
				<% end_loop %>
			<% end_with %>
		</ul>
	<% end_if %>
	<div class="pull-right">
		<a href="$SiteConfig.FooterLogoLink" accesskey="/"> 
			<img src="$SiteConfig.FooterLogo.URL" width="$SiteConfig.FooterLogo.Width" height="$SiteConfig.FooterLogo.Height" alt="$SiteConfig.FooterLogoDescription" title="$SiteConfig.FooterLogoDescription" />
		</a>
	</div>
	
	<h1>
		<a title="$SiteConfig.Title" href="$BaseHref" class="brand">
			$SiteConfig.Title
		</a>
	</h1>
	<p><small>$SiteConfig.Title &copy; 2012</small></p>
</footer>
-->