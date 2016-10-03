<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="新しいお届け先の追加・変更"}-->

<div id="window_area" class="container">
    <div class="content-title">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
    </div>
    <p>下記項目にご入力ください。「<span class="attention">※</span>」印は入力必須項目です。<br />
        入力後、一番下の「登録する」ボタンをクリックしてください。</p>

    <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="edit" />
        <input type="hidden" name="other_deliv_id" value="<!--{$smarty.session.other_deliv_id|h}-->" />
        <input type="hidden" name="ParentPage" value="<!--{$ParentPage}-->" />

        <table class="table table-bordred" summary="お届け先登録">
            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=1 emailMobile=false prefix=""}-->
        </table>
        <div class="btn_area">
            <ul class="list-inline">
                <li>
                    <a class="btn btn-main btn-sm" href="javascript:" onclick="eccube.setValueAndSubmit('form1', 'mode', 'edit'); return false;">登録する</a>
                </li>
            </ul>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
