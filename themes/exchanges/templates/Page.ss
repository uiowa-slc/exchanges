<!doctype html>
<html lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="google" value="notranslate" />
	<% if $ClassName == "HomePage" %>
		<title>$SiteConfig.Title</title>
	<% else %>
		<title>$Title.NoHTML - $SiteConfig.Title</title>
	<% end_if %>
	<% include OpenGraph %>
	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />
	<%-- <script type="text/javascript" src="https://use.typekit.net/gor3pds.js"></script>
	<script type="text/javascript">try{Typekit.load({ async: false });}catch(e){}</script>--%>
	$TypeKit
	<link href="{$ThemeDir}/css/app.css" rel="stylesheet">
	<% if $LinkColor %>
		<style>
			a{
				color: {$LinkColor};
			}
		</style>
	<% end_if %>
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
	
	
	<% if $BannerImage %>
		<div class="article__cover-container b-lazy" data-src="$BannerImage.CroppedFocusedImage(1560, 861, false).URL" style="background-position: $BannerImage.PercentageX% $BannerImage.PercentageY%; background-size: cover;">
		</div>
	<% end_if %>

	<div class="layout layout--{$ClassName} typography">
		$Layout
	</div>

	<% include Footer %>
	$BetterNavigator

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="themes/exchanges/build/build.js"></script>
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
