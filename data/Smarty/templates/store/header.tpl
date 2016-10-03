<!--▼HEADER-->
<!--{strip}-->
    <div id="header_wrap" class="ui-header">
        <div id="header" class="clearfix">
            <div class="container">
                <div class="inner">
                    <div id="logo_area" class="block-head-logo">
                        <h1 class="logo">
                            <a href="<!--{$smarty.const.TOP_URL}-->"><img src="<!--{$TPL_URLPATH}-->img/logo.jpg" alt="<!--{$arrSiteInfo.shop_name|h}-->/<!--{$tpl_title|h}-->" class="img-responsive" /></a>
                        </h1>
                    </div>
                    <div id="header_utility" class="block-head-content">
                        <div id="headerInternalColumn">
                        <!--{* ▼HeaderInternal COLUMN *}-->
                        <!--{if $arrPageLayout.HeaderInternalNavi|@count > 0}-->
                            <!--{* ▼上ナビ *}-->
                            <!--{foreach key=HeaderInternalNaviKey item=HeaderInternalNaviItem from=$arrPageLayout.HeaderInternalNavi}-->
                                <!-- ▼<!--{$HeaderInternalNaviItem.bloc_name}--> -->
                                <!--{if $HeaderInternalNaviItem.php_path != ""}-->
                                    <!--{include_php file=$HeaderInternalNaviItem.php_path items=$HeaderInternalNaviItem}-->
                                <!--{else}-->
                                    <!--{include file=$HeaderInternalNaviItem.tpl_path items=$HeaderInternalNaviItem}-->
                                <!--{/if}-->
                                <!-- ▲<!--{$HeaderInternalNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->
                            <!--{* ▲上ナビ *}-->
                        <!--{/if}-->
                        <!--{* ▲HeaderInternal COLUMN *}-->
                        </div>
                        <!--{* // デフォルトのナビを使用する場合はコメントアウトを外してください
                        <div id="header_navi">
                            <ul>
                                <li class="mypage">
                                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php"><img class="hover_change_image" src="<!--{$TPL_URLPATH}-->img/common/btn_header_mypage.jpg" alt="MYページ" /></a>
                                </li>
                                <li class="entry">
                                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php"><img class="hover_change_image" src="<!--{$TPL_URLPATH}-->img/common/btn_header_entry.jpg" alt="会員登録" /></a>
                                </li>
                                <li>
                                    <a href="<!--{$smarty.const.CART_URL}-->"><img class="hover_change_image" src="<!--{$TPL_URLPATH}-->img/common/btn_header_cart.jpg" alt="カゴの中を見る" /></a>
                                </li>
                            </ul>
                        </div>
                        *}-->
                    </div><!-- /header_utility -->
                </div>
            </div><!-- /container -->
        </div>
    </div>
<!--{/strip}-->
<!--▲HEADER-->
