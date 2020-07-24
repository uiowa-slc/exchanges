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
	<link rel="icon" type="image/png" href="{$ThemeDir}/dist/favicons/favicon.ico" />
	{$TypeKitScript}

	<% if $isSubjournal %>
	   	<link href="{$ThemeDir}/dist/styles/{$Subjournal.Identifier}.css" rel="stylesheet">
    <% else %>
        <link href="{$ThemeDir}/dist/styles/main.css" rel="stylesheet">
	<% end_if %>

	<% if $LinkColor %>
		<style>
			a{
				color: {$LinkColor};
			}
		</style>
	<% end_if %>
</head>
<body class="$ClassName.ATT">

		$Layout

	<% include Footer %>
	$BetterNavigator

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>-->
<script type="text/javascript" src="{$ThemeDir}/dist/scripts/main.min.js"></script>
$Analytics

</body>
</html>
