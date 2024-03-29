<?xml version="1.0"?>
<!-- htmlmin:ignore -->
<rss xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" version="2.0">
    <channel>
        <title>Exchanges</title>
        <link>http://exchanges.uiowa.edu</link>
        <language>en-us</language>
        <copyright></copyright>
        <itunes:subtitle>Journal of Literary Translation</itunes:subtitle>
        <itunes:author>Exchanges is edited by current students of the Iowa Translation Workshop</itunes:author>
        <itunes:summary>Exchanges is an online journal of literary translation published biannually. Founded in 1989 by poet and translator Daniel Weissbort, Exchanges has published the work of award-winning writers and translators across the country and the globe, including Deborah Smith, Jennifer Croft, Jeremy Tiang, Aron Aji, Yvette Siegert, Aviya Kushner, Ottilie Mulzet, Urayoán Noel, Craig Santos Perez, Lawrence Venuti, and many others.</itunes:summary>
        <description>Exchanges is an online journal of literary translation published biannually. Founded in 1989 by poet and translator Daniel Weissbort, Exchanges has published the work of award-winning writers and translators across the country and the globe, including Deborah Smith, Jennifer Croft, Jeremy Tiang, Aron Aji, Yvette Siegert, Aviya Kushner, Ottilie Mulzet, Urayoán Noel, Craig Santos Perez, Lawrence Venuti, and many others.</description>
        <!-- <atom:link href="$Link" rel="self" type="application/rss+xml"/> -->
        <itunes:owner>
            <itunes:name>Exchanges</itunes:name>
            <itunes:email>studorg-exchanges@uiowa.edu</itunes:email>
        </itunes:owner>
        <itunes:explicit>clean</itunes:explicit>
        <itunes:image href="" />
        <itunes:category text="Literature" />
        <% loop $Entries %>
        <% if $AudioClip %>
        <item>
            <id>$AudioClip.ID</id>
            <title>$Title.XML</title>
            <link>$AbsoluteLink</link>
            <% if $Description %>
            <description>$Description.CDATA</description>
            <% end_if %>
            <itunes:author>Exchanges</itunes:author>
            <itunes:subtitle>$Description.Plain.LimitCharacters(180)</itunes:subtitle>
            <itunes:summary>$Description.Plain</itunes:summary>
            <enclosure url="$AudioClip.AbsoluteURL" length="0" type="audio/x-m4a" />
            <% if $Date %>
            <pubDate>$Date.Rfc822</pubDate>
            <% else %>
            <pubDate>$Created.Rfc822</pubDate>
            <% end_if %>
            <guid>$AbsoluteLink</guid>
        </item>
        <% end_if %>
        <% end_loop %>
    </channel>
</rss>
<!-- htmlmin:ignore -->
