	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />

    <% if $ClassName == "HomePage" %>
        <meta property="og:title" content="$SiteConfig.Title.ATT" />
    <% else_if $isSubjournal %>
        <% if $ClassName == "Subjournal" %>
            <meta property="og:title" content="$Subjournal.Title.ATT" />
        <% else %>
            <meta property="og:title" content="$Title.Plain - $Subjournal.Title" />
        <% end_if %>
    <% else %>
        <meta property="og:title" content="$Title.Plain - $SiteConfig.Title" />
    <% end_if %>

	<% if $ClassName == "HomePage" %>
		<meta property="og:title" content="$SiteConfig.Title.ATT" />
	<% else %>
		<meta property="og:title" content="$Title.ATT | $SiteConfig.Title.ATT" />
	<% end_if %>
	<% if $ClassName == "HomePage" %>
		<meta property="og:description" content="Read our latest issue: $FeaturedIssue.Title" />
	<% else_if $ClassName == "Article" %>
		<meta property="og:description" content="$TranslatorByline(false).ATT" />
	<% else_if $Content %>
		<meta property="og:description" content="$Content.Plain" />
	<% else %>
		<meta property="og:description" content="$SiteConfig.FooterText.Plain.ATT" />
	<% end_if %>

	<meta property="og:url" content="$AbsoluteLink.ATT" />

	<% if $ClassName == "HomePage" %>
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$ScaleWidth(1200).AbsoluteURL.ATT<% end_with %>" />
			<meta property="og:image:width" content="$Emblem.ScaleWidth(1200).Width">
			<meta property="og:image:height" content="$Emblem.ScaleWidth(1200).Height">
		<% end_with %>
	<% else_if $Emblem %>
		<meta property="og:image" content="<% with $Emblem %>$ScaleWidth(1200).AbsoluteURL.ATT<% end_with %>" />
		<meta property="og:image:width" content="$Emblem.ScaleWidth(1200).Width">
		<meta property="og:image:height" content="$Emblem.ScaleWidth(1200).Height">
	<% else_if $ClassName == "Article" %>
		<% if $BannerImage %>
			<meta property="og:image" content="$BannerImage.ScaleWidth(1200).AbsoluteURL.ATT" />
			<meta property="og:image:width" content="$BannerImage.ScaleWidth(1200).Width">
			<meta property="og:image:height" content="$BannerImage.ScaleWidth(1200).Height">
		<% else %>
			<% with $Parent %>
				<meta property="og:image" content="$Emblem.ScaleWidth(1200).AbsoluteURL.ATT"/>
				<meta property="og:image:width" content="$Emblem.ScaleWidth(1200).Width">
				<meta property="og:image:height" content="$Emblem.ScaleWidth(1200).Height">
			<% end_with %>
		<% end_if %>
	<% else_if $ClassName == "NewsPage" %>
				<meta property="og:image" content="$FeaturedImage.ScaleWidth(1200).AbsoluteURL.ATT" />
				<meta property="og:image:width" content="$FeaturedImage.ScaleWidth(1200).Width">
				<meta property="og:image:height" content="$FeaturedImage.ScaleWidth(1200).Height">
	<% else %>
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$ScaleWidth(1200).AbsoluteURL.ATT<% end_with %>" />
			<meta property="og:image:width" content="$Emblem.ScaleWidth(1200).Width">
			<meta property="og:image:height" content="$Emblem.ScaleWidth(1200).Height">
		<% end_with %>
	<% end_if %>
