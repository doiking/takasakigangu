<div id="mypagecolumn">
    <div class="entry-title">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
    </div>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area" class="ui-section">
        <div class="ui-title-md section-title">
            <h3 class="title"><!--{$tpl_subtitle|h}--></h3>
        </div>
        <p>下記項目にご入力ください。「<span class="attention">※</span>」印は入力必須項目です。<br />
            入力後、一番下の「確認ページへ」ボタンをクリックしてください。</p>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="customer_id" value="<!--{$arrForm.customer_id.value|h}-->" />
            <table summary="会員登録内容変更 " class="delivname table table-bordered">
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=3 emailMobile=true prefix=""}-->
            </table>
            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <input type="submit" class="btn btn-main" value="確認ページへ" name="refusal" id="refusal" />
                    </li>
                </ul>
            </div>
        </form>
    </div>
</div>
