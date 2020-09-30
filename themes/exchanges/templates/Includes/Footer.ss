<footer class="footer clearfix" role="contentinfo">
	<div class="row">
    	<div class="small-12 columns">
    		<div class="row">
		        <div class="small-8 medium-4 large-3 columns">

						<a href="$absoluteBaseURL" class="hide-print logo"><img src="$ThemeDir/dist/images/exchanges-logo.png" alt="Exchanges" style="margin-top: -20px;"></a><br />


						<p><a href="https://www.uiowa.edu">The University of Iowa</a><br /><a href="http://clas.uiowa.edu" target="_blank">College of Liberal Arts & Sciences</a><br />
						<a href="http://clas.uiowa.edu/dwllc" target="_blank">Division of World Languages, Literatures & Cultures</a><br />
111 Phillips Hall<br />
Iowa City, IA 52242-1323
</p>
				</div>

				<div class="medium-3 large-2 columns">
					<div class="colgroup">
						<ul class="footer-nav">
							<% loop Menu(1) %>
								<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						</ul>
					</div>
				</div>
				<div class="medium-5 large-7 end columns hide-print">
					<!-- Begin MailChimp Signup Form -->
					<style type="text/css">

					/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
					   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
					</style>
					<div id="mc_embed_signup">
					<form action="https://uiowa.us17.list-manage.com/subscribe/post?u=2d4241cf88fec795e33330428&amp;id=2766e7142c" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
					    <div id="mc_embed_signup_scroll">
					<label for="mce-EMAIL">Subscribe to the Exchanges mailing list.</label>
					<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
					    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
					    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_2d4241cf88fec795e33330428_2766e7142c" tabindex="-1" value=""></div>
					    <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
					    </div>
					</form>
					</div>

				<!--End mc_embed_signup-->
					$SiteConfig.FooterText
				</div>
			</div>
		</div>
	</div>
</footer>
