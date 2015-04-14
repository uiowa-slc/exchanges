<!doctype html>
<html class="no-js wf-loading" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="google" value="notranslate" />
	<title><% if $MetaTitle %>$MetaTitle.NoHTML<% else %>$Title.NoHTML<% end_if %> - $SiteConfig.Title</title>
	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="$Title.ATT" />
	<% if $ClassName == "Article" %>
		<meta property="og:description" content="$TranslatorByline("false").ATT" />
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

	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />
	<style>
		<% include CriticalCss %>
	</style>
	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	<script>
	 <% include LoadCSS %>
	  loadCSS( "{$ThemeDir}/css/app.css" );
	</script>
	<noscript><link href="{$ThemeDir}/css/app.css" rel="stylesheet"></noscript>
</head>
<body class="$ClassName.ATT">
	

	
	<%-- include UiowaBar --%>

	<% if $ClassName == "HomePage" %>
		<% include HomePageCover %>
	<% else_if $ClassName == "Issue" %>
		<% include IssueCover %>
	<% else %>
		<% include TopBar %>
	<% end_if %>

	<div class="main typography" role="main">
		$Layout
	</div>
	<% include Footer %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<%-- <script>
  var cb = function() {
    var l = document.createElement('link'); l.rel = 'stylesheet';
    l.href = 'themes/exchanges/css/critical.css';
    var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
  };
  var raf = requestAnimationFrame || mozRequestAnimationFrame ||
      webkitRequestAnimationFrame || msRequestAnimationFrame;
  if (raf) raf(cb);
  else window.addEventListener('load', cb);
</script> --%>

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
<script src="//use.typekit.net/gor3pds.js"></script>
<script>try{Typekit.load();}catch(e){}</script>
</body>
</html>
