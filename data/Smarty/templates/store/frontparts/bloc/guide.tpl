<!--{strip}-->
    <div class="block_outer ui-section">
        <div id="guide_area" class="block_body section-body">
            <ul class="button_like ui-list-menu">
                <li>
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_page_class_name == "LC_Page_Abouts"}-->selected<!--{/if}-->">
                        当サイトについて</a></li>
                <li>
                    <a href="<!--{$smarty.const.HTTPS_URL}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_page_class_name == "LC_Page_Contact" || $tpl_page_class_name == "LC_Page_Contact_Complete"}-->selected<!--{/if}-->">
                        お問い合わせ</a></li>
                <li>
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->order/<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_page_class_name == "LC_Page_Order"}-->selected<!--{/if}-->">
                        特定商取引法に基づく表記</a></li>
                <li>
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->guide/privacy.php" class="<!--{if $tpl_page_class_name == "LC_Page_Guide_Privacy"}-->selected<!--{/if}-->">
                        プライバシーポリシー</a></li>
            </ul>
        </div>
    </div>
<!--{/strip}-->
