<!--{strip}-->
    <body class="<!--{$tpl_page_class_name|h}-->">
        <!--{$GLOBAL_ERR}-->
        <noscript>
            <p>JavaScript を有効にしてご利用下さい.</p>
        </noscript>

        <div class="frame_outer">
            <a name="top" id="top"></a>

            <!--{* ▼HeaderHeaderTop COLUMN*}-->
            <!--{if $arrPageLayout.HeaderTopNavi|@count > 0}-->
                <div id="headertopcolumn" class="ui-header-top">
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=HeaderTopNaviKey item=HeaderTopNaviItem from=$arrPageLayout.HeaderTopNavi}-->
                        <!-- ▼<!--{$HeaderTopNaviItem.bloc_name}--> -->
                        <!--{if $HeaderTopNaviItem.php_path != ""}-->
                            <!--{include_php file=$HeaderTopNaviItem.php_path items=$HeaderTopNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$HeaderTopNaviItem.tpl_path items=$HeaderTopNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$HeaderTopNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
                </div>
            <!--{/if}-->
            <!--{* ▲HeaderHeaderTop COLUMN*}-->
            <!--{* ▼HEADER *}-->
            <!--{if $arrPageLayout.header_chk != 2}-->
                <!--{include file= $header_tpl}-->
            <!--{/if}-->
            <!--{* ▲HEADER *}-->

            <div id="container" class="ui-content clearfix">

                <!--{* ▼TOP COLUMN*}-->
                <!--{if $arrPageLayout.TopNavi|@count > 0}-->
                    <div id="topcolumn" class="ui-content-top">
                        <!--{* ▼上ナビ *}-->
                        <!--{foreach key=TopNaviKey item=TopNaviItem from=$arrPageLayout.TopNavi}-->
                            <!-- ▼<!--{$TopNaviItem.bloc_name}--> -->
                            <!--{if $TopNaviItem.php_path != ""}-->
                                <!--{include_php file=$TopNaviItem.php_path items=$TopNaviItem}-->
                            <!--{else}-->
                                <!--{include file=$TopNaviItem.tpl_path items=$TopNaviItem}-->
                            <!--{/if}-->
                            <!-- ▲<!--{$TopNaviItem.bloc_name}--> -->
                        <!--{/foreach}-->
                        <!--{* ▲上ナビ *}-->
                    </div>
                <!--{/if}-->
                <!--{* ▲TOP COLUMN*}-->

                <div class="container">
                    <div class="inner">

                        <!--{* ▼メイン上部 *}-->
                        <!--{if $arrPageLayout.MainHead|@count > 0}-->
                            <div class="ui-main-top">
                                <!--{foreach key=MainHeadKey item=MainHeadItem from=$arrPageLayout.MainHead}-->
                                    <!-- ▼<!--{$MainHeadItem.bloc_name}--> -->
                                    <!--{if $MainHeadItem.php_path != ""}-->
                                        <!--{include_php file=$MainHeadItem.php_path items=$MainHeadItem}-->
                                    <!--{else}-->
                                        <!--{include file=$MainHeadItem.tpl_path items=$MainHeadItem}-->
                                    <!--{/if}-->
                                    <!-- ▲<!--{$MainHeadItem.bloc_name}--> -->
                                <!--{/foreach}-->
                            </div>
                        <!--{/if}-->
                        <!--{* ▲メイン上部 *}-->

                        <div class="row">

                            <!--{* ▼CENTER COLUMN *}-->
                            <div id="main_column" <!--{**}-->
                                class="ui-main <!--{if $tpl_column_num|h == 2}-->col-sm-9<!--{elseif $tpl_column_num|h == 1}-->col-xs-12<!--{else}-->col-sm-6 col-sm-push-3<!--{/if}-->
                                <!--{if $tpl_column_num == 2}-->
                                        <!--{" "}--><!--{if $arrPageLayout.LeftNavi|@count == 0}-->left<!--{else}-->right col-sm-push-3<!--{/if}-->
                                <!--{/if}-->">

                                <!-- ▼メイン -->
                                <!--{include file=$tpl_mainpage}-->
                                <!-- ▲メイン -->

                                <!--{* ▼メイン下部 *}-->
                                <!--{if $arrPageLayout.MainFoot|@count > 0}-->
                                    <!--{foreach key=MainFootKey item=MainFootItem from=$arrPageLayout.MainFoot}-->
                                        <!-- ▼<!--{$MainFootItem.bloc_name}--> -->
                                        <!--{if $MainFootItem.php_path != ""}-->
                                            <!--{include_php file=$MainFootItem.php_path items=$MainFootItem}-->
                                        <!--{else}-->
                                            <!--{include file=$MainFootItem.tpl_path items=$MainFootItem}-->
                                        <!--{/if}-->
                                        <!-- ▲<!--{$MainFootItem.bloc_name}--> -->
                                    <!--{/foreach}-->
                                <!--{/if}-->
                                <!--{* ▲メイン下部 *}-->
                            </div>
                            <!--{* ▲CENTER COLUMN *}-->

                            <!--{* ▼LEFT COLUMN *}-->
                            <!--{if $arrPageLayout.LeftNavi|@count > 0}-->
                                <div id="leftcolumn" <!--{**}-->
                                class="side_column ui-side <!--{if $tpl_column_num|h == 2}-->col-sm-3<!--{elseif $tpl_column_num|h == 1}-->col-xs-12<!--{else}-->col-sm-3 col-sm-pull-6<!--{/if}-->
                                <!--{if $tpl_column_num == 2}-->
                                        <!--{" "}--><!--{if $arrPageLayout.LeftNavi|@count == 0}--> <!--{else}-->col-sm-pull-9<!--{/if}-->
                                <!--{/if}-->">
                                    <!--{* ▼左ナビ *}-->
                                    <!--{foreach key=LeftNaviKey item=LeftNaviItem from=$arrPageLayout.LeftNavi}-->
                                        <!-- ▼<!--{$LeftNaviItem.bloc_name}--> -->
                                        <!--{if $LeftNaviItem.php_path != ""}-->
                                            <!--{include_php file=$LeftNaviItem.php_path items=$LeftNaviItem}-->
                                        <!--{else}-->
                                            <!--{include file=$LeftNaviItem.tpl_path items=$LeftNaviItem}-->
                                        <!--{/if}-->
                                        <!-- ▲<!--{$LeftNaviItem.bloc_name}--> -->
                                    <!--{/foreach}-->
                                    <!--{* ▲左ナビ *}-->
                                </div>
                            <!--{/if}-->
                            <!--{* ▲LEFT COLUMN *}-->

                            <!--{* ▼RIGHT COLUMN *}-->
                            <!--{if $arrPageLayout.RightNavi|@count > 0}-->
                                <div id="rightcolumn" class="side_column ui-side col-sm-3">
                                    <!--{* ▼右ナビ *}-->
                                    <!--{foreach key=RightNaviKey item=RightNaviItem from=$arrPageLayout.RightNavi}-->
                                        <!-- ▼<!--{$RightNaviItem.bloc_name}--> -->
                                        <!--{if $RightNaviItem.php_path != ""}-->
                                            <!--{include_php file=$RightNaviItem.php_path items=$RightNaviItem}-->
                                        <!--{else}-->
                                            <!--{include file=$RightNaviItem.tpl_path items=$RightNaviItem}-->
                                        <!--{/if}-->
                                        <!-- ▲<!--{$RightNaviItem.bloc_name}--> -->
                                    <!--{/foreach}-->
                                    <!--{* ▲右ナビ *}-->
                                </div>
                            <!--{/if}-->
                            <!--{* ▲RIGHT COLUMN *}-->

                        </div><!-- /row -->

                    </div><!-- /inner -->
                </div><!-- /container -->

                <!--{* ▼BOTTOM COLUMN*}-->
                <!--{if $arrPageLayout.BottomNavi|@count > 0}-->
                    <div id="bottomcolumn" class="ui-content-bottom">
                        <!--{* ▼下ナビ *}-->
                        <!--{foreach key=BottomNaviKey item=BottomNaviItem from=$arrPageLayout.BottomNavi}-->
                            <!-- ▼<!--{$BottomNaviItem.bloc_name}--> -->
                            <!--{if $BottomNaviItem.php_path != ""}-->
                                <!--{include_php file=$BottomNaviItem.php_path items=$BottomNaviItem}-->
                            <!--{else}-->
                                <!--{include file=$BottomNaviItem.tpl_path items=$BottomNaviItem}-->
                            <!--{/if}-->
                            <!-- ▲<!--{$BottomNaviItem.bloc_name}--> -->
                        <!--{/foreach}-->
                        <!--{* ▲下ナビ *}-->
                    </div>
                <!--{/if}-->
                <!--{* ▲BOTTOM COLUMN*}-->

            </div>

            <!--{* ▼FOOTER *}-->
            <!--{if $arrPageLayout.footer_chk != 2}-->
                <!--{include file=$footer_tpl}-->
            <!--{/if}-->
            <!--{* ▲FOOTER *}-->
            <!--{* ▼FooterBottom COLUMN*}-->
            <!--{if $arrPageLayout.FooterBottomNavi|@count > 0}-->
                <div id="footerbottomcolumn" class="ui-footer-bottom">
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=FooterBottomNaviKey item=FooterBottomNaviItem from=$arrPageLayout.FooterBottomNavi}-->
                        <!-- ▼<!--{$FooterBottomNaviItem.bloc_name}--> -->
                        <!--{if $FooterBottomNaviItem.php_path != ""}-->
                            <!--{include_php file=$FooterBottomNaviItem.php_path items=$FooterBottomNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$FooterBottomNaviItem.tpl_path items=$FooterBottomNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$FooterBottomNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
                </div>
            <!--{/if}-->
            <!--{* ▲FooterBottom COLUMN*}-->
        </div>

    </body>
<!--{/strip}-->
