<footer class="footer clearfix" role="contentinfo">
	<div class="row">
        <div class="large-3 columns large-centered">
            <div class="text-center">
    			<p><a href="$absoluteBaseURL" class="hide-print logo"><img src="$ThemeDir/dist/images/exchanges-logo.png" alt="Exchanges" style="margin-top: -20px;"></a></p>
    			<p>
                    <a href="https://www.uiowa.edu">The University of Iowa</a><br /><a href="http://clas.uiowa.edu" target="_blank">College of Liberal Arts &amp; Sciences</a><br />
                    <a href="http://clas.uiowa.edu/dwllc" target="_blank">Division of World Languages, Literatures &amp; Cultures</a><br />
                    111 Phillips Hall<br />
                    Iowa City, IA 52242-1323
                 </p>
                <ul class="footer-nav">
                    <% loop Menu(1) %>
                        <li><a href="$Link">$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
            </div>
    	</div>
    	<div class="large-9 columns">
    		<div class="colgroup">

    		</div>
    	</div>
	</div>
</footer>
<div class="footer__info text-center">
    <p><a href="http://www.uiowa.edu/homepage/online-privacy-information" class="footer__bar-link" target="_blank" rel="noopener">Privacy Information</a> <a href="https://opsmanual.uiowa.edu/community-policies/nondiscrimination-statement" class="footer__bar-link" target="_blank" rel="noopener">Nondiscrimination Statement</a> <a href="https://uiowa.edu/accessibility" target="_blank">Accessibility</a></p>
</div>
