<?xml version="1.0" encoding="<!--{$encode}-->"?>

<rss version="2.0">
    <channel>
        <title><!--{$site_title|sfMbConvertEncoding:$encode|h}--></title>
        <link><!--{$smarty.const.HTTP_URL}--></link>
        <description><!--{$description|sfMbConvertEncoding:$encode|h}--></description>
        <language>ja</language>
        <managingEditor><!--{$email|h}--></managingEditor>
        <webMaster><!--{$email|h}--></webMaster>
        <generator>web shoppings v1.0</generator>
        <copyright>(c) COPYRIGHT</copyright>
        <category>WEB SHOPPING</category>
        <docs>http://backend.userland.com/rss</docs>

        <!--{section name=cnt loop=$arrNews}-->
            <item>
                <link><!--{$arrNews[cnt].news_url|h}--></link>
                <title><!--{$arrNews[cnt].news_title|sfMbConvertEncoding:$encode|h}--></title>
                <description><!--{$arrNews[cnt].news_comment|truncate:256|sfMbConvertEncoding:$encode|h}--></description>
                <pubDate><!--{$arrNews[cnt].news_date|h}--></pubDate>
            </item>
        <!--{/section}-->

    </channel>
</rss>
