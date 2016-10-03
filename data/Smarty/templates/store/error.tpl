<!--{strip}-->
    <div id="undercolumn">
        <div id="undercolumn_error">
            <div class="message_area">
                <!--★エラーメッセージ-->
                <p class="error well"><!--{$tpl_error}--></p>
            </div>

            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <!--{if $return_top}-->
                            <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-main btn-sm">トップページへ</a>
                        <!--{else}-->
                            <a href="javascript:history.back()" class="btn btn-default btn-sm">戻る</a>
                        <!--{/if}-->
                    </li>
                </ul>
            </div>
        </div>
    </div>
<!--{/strip}-->
