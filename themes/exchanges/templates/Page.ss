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
		<title>$Title.Plain - $SiteConfig.Title</title>
	<% end_if %>
	<% include OpenGraph %>
	<link rel="icon" type="image/png" href="{$ThemeDir}/images/favicon.ico" />
	{$TypeKitScript}
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
	<% else_if $ClassName == "Article" %>
		<% if $BannerImage %>
			<% include ArticleCover %>
		<% else %>
			<% include TopBar %>
		<% end_if %>		
	<% else_if $ClassName == "ArticleSingleColumn" %>
		<% if $BannerImage %>
			<% include ArticleCover %>
		<% else %>
			<% include TopBar %>
		<% end_if %>
	<% else %>
		<% include TopBar %>
	<% end_if %>
	
	<div class="layout layout--{$ClassName} typography">
		$Layout
	</div>

	<% include Footer %>
	$BetterNavigator

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/build/build.js"></script>
$Analytics

</body>
</html>
