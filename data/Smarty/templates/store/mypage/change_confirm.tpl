<div id="mypagecolumn">
    <div class="entry-title">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
    </div>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area" class="ui-section">
        <div class="ui-title-md section-title">
            <h3 class="title"><!--{$tpl_subtitle|h}--></h3>
        </div>
        <p>下記の内容で送信してもよろしいでしょうか？<br />
            よろしければ、一番下の「完了ページへ」ボタンをクリックしてください。</p>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="complete" />
            <input type="hidden" name="customer_id" value="<!--{$arrForm.customer_id.value|h}-->" />
            <!--{foreach from=$arrForm key=key item=item}-->
                <!--{if $key ne "mode" && $key ne "subm"}-->
                <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item.value|h}-->" />
                <!--{/if}-->
            <!--{/foreach}-->
            <table summary=" " class="delivname table table-bordered">
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_confirm.tpl" flgFields=3 emailMobile=true prefix=""}-->
            </table>

            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <a href="?" onclick="eccube.setModeAndSubmit('return', '', ''); return false;" class="btn btn-default">戻る</a>
                    </li>
                    <li>
                        <input type="submit" class="btn btn-main" value="完了ページへ" name="complete" id="complete" />
                    </li>
                </ul>
            </div>
        </form>
    </div>
</div>
