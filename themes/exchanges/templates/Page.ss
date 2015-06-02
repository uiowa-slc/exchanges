<!doctype html>
<html lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="google" value="notranslate" />
	<% if $URLSegment = 'home' %>
		<title>$SiteConfig.Title - The University of Iowa</title>
	<% else %>
		<title>$Title - $SiteConfig.Title - The University of Iowa</title>
	<% end_if %>
	
	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<% if $URLSegment = 'home' %>
		<meta property="og:title" content="$SiteConfig.Title.ATT" />
	<% else %>
		<meta property="og:title" content="$Title.ATT - Exchanges Literary Journal" />
	<% end_if %>
	<% if $ClassName == "Article" %>
		<meta property="og:description" content="$TranslatorByline("false").ATT" />
	<% else %>
		<meta property="og:description" content="Exchanges began in 1989-90, as a project of the Iowa Translation Workshop when I was director. The first issue was cyclostyled, the title being copied from Ulalume González de León’s short story “Intercambios,” translated by Stephanie Lovelady, a student in the Workshop. All texts were presented bilingually." />
	<% end_if %>
	
	<meta property="og:url" content="$AbsoluteLink.ATT" />

	<% if $Emblem %>
		<meta property="og:image" content="<% with $Emblem %>$SetWidth(1200).AbsoluteURL.ATT<% end_with %>" />
	<% else_if $ClassName == "Article" %>
		<% with $Parent %>
			<meta property="og:image" content="$SetWidth(1200).AbsoluteURL.ATT" class="$Title" />
		<% end_with %>
	<% else %>
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$SetWidth(1200).AbsoluteURL.ATT<% end_with %>" />
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
<script type="text/javascript">
(function(d) {
  var tkTimeout=3000;
  if(window.sessionStorage){if(sessionStorage.getItem('useTypekit')==='false'){tkTimeout=0;}}
  var config = {
    kitId: 'gor3pds',
    scriptTimeout: tkTimeout
  },
  h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+"wf-inactive";if(window.sessionStorage){sessionStorage.setItem("useTypekit","false")}},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+="wf-loading";tk.src='//use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
})(document);
</script>
<script type="text/javascript">
  WebFontConfig = {
    google: { families: [ 'Noto+Serif:400,700,400italic,700italic:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })(); </script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-426753-15', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
