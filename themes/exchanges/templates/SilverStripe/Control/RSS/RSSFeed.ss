<?xml version="1.0"?>
<rss xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" version="2.0">
    <channel>
        <title>Translators Note</title>
        <link>http://exchanges.uiowa.edu</link>
        <language>en-us</language>
        <copyright></copyright>
        <itunes:subtitle>Exchanges Audio</itunes:subtitle>
        <itunes:author>Exchanges: Journal of Literary Translation</itunes:author>
        <itunes:summary>Exchanges is an online journal of literary translation published biannually. Founded in 1989 by poet and translator Daniel Weissbort, Exchanges has published the work of award-winning writers and translators across the country and the globe, including Deborah Smith, Jennifer Croft, Jeremy Tiang, Aron Aji, Yvette Siegert, Aviya Kushner, Ottilie Mulzet, Urayoán Noel, Craig Santos Perez, Lawrence Venuti, and many others.</itunes:summary>
        <description>Exchanges is an online journal of literary translation published biannually. Founded in 1989 by poet and translator Daniel Weissbort, Exchanges has published the work of award-winning writers and translators across the country and the globe, including Deborah Smith, Jennifer Croft, Jeremy Tiang, Aron Aji, Yvette Siegert, Aviya Kushner, Ottilie Mulzet, Urayoán Noel, Craig Santos Perez, Lawrence Venuti, and many others.</description>
        <itunes:owner>
            <itunes:name>Translators Note: Exchanges Audio</itunes:name>
            <itunes:email>studorg-exchanges@uiowa.edu</itunes:email>
        </itunes:owner>
        <itunes:explicit>clean</itunes:explicit>
        <itunes:image href="https://exchanges.uiowa.edu/_resources/themes/exchanges/dist/images/exchanges-podcast-poster2.png" />
        <itunes:category text="Education" />
        <itunes:category text="Language Learning" />
        <% loop $Entries %>
        <% if $AudioClip %>
        <item>
            <id>$AudioClip.ID</id>
            <title>$Title.XML</title>
            <link>$AbsoluteLink</link>
            <% if $Description %>
            <description>$Description.CDATA</description>
            <% end_if %>
            <itunes:author>Exchanges is edited by current students of the Iowa Translation Workshop</itunes:author>
            <itunes:subtitle>$Description.Plain.LimitCharacters(180)</itunes:subtitle>
            <itunes:summary>$Description.Plain</itunes:summary>
            <enclosure url="$AudioClip.AbsoluteURL" length="$AudioClip.AbsoluteSize" type="$AudioClip.MimeType" />
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
