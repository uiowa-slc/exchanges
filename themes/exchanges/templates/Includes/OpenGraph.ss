	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<% if $ClassName == "HomePage" %>
		<meta property="og:title" content="$FeaturedIssue.Title - $SiteConfig.Title.ATT" />
	<% else %>
		<meta property="og:title" content="$Title.ATT - Exchanges Literary Journal" />
	<% end_if %>
	<% if $ClassName == "HomePage" %>
		<meta property="og:description" content="Read our latest issue: $FeaturedIssue.Title" />
	<% else_if $ClassName == "Article" %>
		<meta property="og:description" content="$TranslatorByline("false").NoHTML" />
	<% else_if $Content %>
		<meta property="og:description" content="$Content.NoHTML" />
	<% else %>
		
	<% end_if %>
	
	<meta property="og:url" content="$AbsoluteLink.ATT" />

	<% if $ClassName == "HomePage" %>
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$SetWidth(1200).AbsoluteURL.ATT<% end_with %>" />
			<meta property="og:image:width" content="$Emblem.SetWidth(1200).Width">
			<meta property="og:image:height" content="$Emblem.SetWidth(1200).Height">
		<% end_with %>
	<% else_if $Emblem %>
		<meta property="og:image" content="<% with $Emblem %>$SetWidth(1200).AbsoluteURL.ATT<% end_with %>" />
		<meta property="og:image:width" content="$Emblem.SetWidth(1200).Width">
		<meta property="og:image:height" content="$Emblem.SetWidth(1200).Height">
	<% else_if $ClassName == "Article" %>
		<% if $BannerImage %>
			<meta property="og:image" content="$BannerImage.SetWidth(1200).AbsoluteURL.ATT" class="$Title" />
			<meta property="og:image:width" content="$BannerImage.SetWidth(1200).Width">
			<meta property="og:image:height" content="$BannerImage.SetWidth(1200).Height">
		<% else %>
			<% with $Parent %>
				<meta property="og:image" content="$Emblem.SetWidth(1200).AbsoluteURL.ATT" class="$Title" />
				<meta property="og:image:width" content="$Emblem.SetWidth(1200).Width">
				<meta property="og:image:height" content="$Emblem.SetWidth(1200).Height">
			<% end_with %>
		<% end_if %>
	<% else_if $ClassName == "BlogPost" %>
				<meta property="og:image" content="$FeaturedImage.SetWidth(1200).AbsoluteURL.ATT" class="$Title" />
				<meta property="og:image:width" content="$FeaturedImageSetWidth(1200).Width">
				<meta property="og:image:height" content="$FeaturedImage.SetWidth(1200).Height">
	<% else %>		
		<% with $FeaturedIssue %>
			<meta property="og:image" content="<% with $Emblem %>$SetWidth(1200).AbsoluteURL.ATT<% end_with %>" />
			<meta property="og:image:width" content="$Emblem.SetWidth(1200).Width">
			<meta property="og:image:height" content="$Emblem.SetWidth(1200).Height">
		<% end_with %>
	<% end_if %>