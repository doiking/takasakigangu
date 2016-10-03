<div id="undercolumn">
    <div id="undercolumn_entry" class="ui-section">
        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>
        <p>下記の内容で送信してもよろしいでしょうか？<br />
            よろしければ、一番下の「会員登録をする」ボタンをクリックしてください。</p>
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="complete">
            <!--{foreach from=$arrForm key=key item=item}-->
                <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item.value|h}-->" />
            <!--{/foreach}-->

            <table class="table table-bordered" summary="入力内容確認">
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_confirm.tpl" flgFields=3 emailMobile=false prefix=""}-->
            </table>

            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <a href="?" onclick="eccube.setModeAndSubmit('return', '', ''); return false;" class="btn btn-default">戻る</a>
                    </li>
                    <li>
                        <input type="submit" class="btn btn-main" value="会員登録をする" name="send" id="send" />
                    </li>
                </ul>
            </div>

        </form>
    </div>
</div>
