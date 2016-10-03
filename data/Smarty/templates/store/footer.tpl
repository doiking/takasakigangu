<!--▼FOOTER-->
<!--{strip}-->
    <div id="footer_wrap" class="ui-footer">
        <div id="pagetop" class="ui-pagetop">
            <div class="container">
                <a href="#top">このページの先頭へ</a>
            </div>
        </div>
        <div id="footer" class="inner clearfix">
            <div class="container">
                <div id="copyright" class="copy">Copyright ©
                    &nbsp;<!--{if $smarty.const.RELEASE_YEAR != $smarty.now|date_format:"%Y"}--><!--{$smarty.const.RELEASE_YEAR}-->-<!--{/if}--><!--{$smarty.now|date_format:"%Y"}-->
                    &nbsp;<!--{$arrSiteInfo.shop_name_eng|default:$arrSiteInfo.shop_name|h}--> All rights reserved.
                </div>
            </div>
        </div>
    </div>
<!--{/strip}-->
<!--▲FOOTER-->
