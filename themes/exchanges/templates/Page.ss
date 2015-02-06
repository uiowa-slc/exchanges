<!doctype html>

<html class="no-js" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="$Title.ATT" />
	<% if $ClassName == "Article" %>
		<meta property="og:description" content="<% include TranslatorByline %>" />
	<% else %>
		<meta property="og:description" content="Exchanges began in 1989-90, as a project of the Iowa Translation Workshop when I was director. The first issue was cyclostyled, the title being copied from Ulalume González de León’s short story “Intercambios,” translated by Stephanie Lovelady, a student in the Workshop. All texts were presented bilingually." />
	<% end_if %>
	
	<meta property="og:url" content="$AbsoluteLink.ATT" />

	<% if $Emblem %>
		<meta property="og:image" content="<% with $Emblem %>$AbsoluteURL.ATT<% end_with %>" />
	<% else_if $ClassName == "Article" %>
		<% with $Parent %>
			<meta property="og:image" content="$AbsoluteURL.ATT" class="$Title" />
		<% end_with %>
	<% else %>
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$AbsoluteURL.ATT<% end_with %>" />
		<% end_with %>
	<% end_if %>

	<style>
	  .wf-loading *{
	    visibility: hidden;
	  }
	  .wf-active *{
	    visibility: visible;
	  }
	</style>

	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />

	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	<link rel="stylesheet" href="$ThemeDir/css/app.css" />
	<script>
	  (function(d) {
	    var config = {
	      kitId: 'gor3pds',
	      scriptTimeout: 3000
	    },
	    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='//use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
	  })(document);
	</script>
	<%--
	<script type="text/javascript" src="//use.typekit.net/yxj2cnc.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	--%>
	<script src="$ThemeDir/bower_components/modernizr/modernizr.js"></script>
</head>
<body class="$ClassName.ATT">
	
<div class="off-canvas-wrap" data-offcanvas>
	<div class="inner-wrap">
	<%--<% include TopBar %>--%>
	<%-- include UiowaBar --%>
	<% include SmallTabBar %>
	<% include OffCanvasSideNav %>	
	<div class="main typography" role="main">
		<div class="content row full-width">

			<% if $ClassName == "Issue" %>
				<a href="$Link"><img src="$Emblem.SetWidth(800).URL" alt="Emblem" class="emblem hide-for-large-up"/></a>
			<% end_if %>
			<% if $ClassName == "HomePage" %>
				<a href="$FeaturedIssue.Link"><img src="$FeaturedIssue.Emblem.SetWidth(800).URL" alt="Emblem" class="emblem hide-for-large-up"/></a>
			<% end_if %>

			<div class="xxlarge-2 large-3 side-nav-column large-uncentered columns show-for-large-up" id="nav-background">
				<% include SideNav %>
			</div>
			<div class="xxlarge-10 large-9 main-column columns" id="main-background">
				<% if $ClassName == "Issue" %>
					<img src="$Emblem.SetWidth(800).URL" alt="Emblem" class="emblem show-for-large-up"/>
				<% end_if %>
				<% if $ClassName == "HomePage" %>
					<a href="$FeaturedIssue.Link"><img src="$FeaturedIssue.Emblem.SetWidth(800).URL" alt="Emblem" class="emblem show-for-large-up"/></a>
				<% end_if %>
				<div class="padded-content">
				$Layout
				<% include Footer %>
				</div>
			</div>
		</div>
	</div>

	<a class="exit-off-canvas"></a>
	
	</div>
</div><!-- end off-canvas-wrap -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
function downloadJSAtOnload() {
var element = document.createElement("script");
element.src = "themes/exchanges/build/build.js";
document.body.appendChild(element);
}
if (window.addEventListener)
window.addEventListener("load", downloadJSAtOnload, false);
else if (window.attachEvent)
window.attachEvent("onload", downloadJSAtOnload);
else window.onload = downloadJSAtOnload;
</script>
<!--<script src="$ThemeDir/build/build.src.js"></script>-->
</body>
</html>
