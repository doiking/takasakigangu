<div id="undercolumn">
    <div id="undercolumn_customer">
        <p class="flow_area">
            <ol class="shopping-flow">
                <li class="current">お届け先の指定</li>
                <li class="row2">お支払い方法・<br>お届け時間等の指定</li>
                <li>入力内容ご確認</li>
                <li>ご注文完了</li>
            </ol>
        </p>
        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>

        <div class="information">
            <p>下記項目にご入力ください。「<span class="attention">※</span>」印は入力必須項目です。<br />
                <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
                    入力後、一番下の「上記のお届け先のみに送る」<br/>
                    または「複数のお届け先に送る」ボタンをクリックしてください。
                <!--{else}-->
                    入力後、一番下の「次へ」ボタンをクリックしてください。
                <!--{/if}-->
            </p>
        </div>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="nonmember_confirm" />
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
            <table class="table table-bordered" summary=" ">
            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=2 emailMobile=false prefix="order_"}-->
                <tr>
                    <th colspan="2">
                    <!--{assign var=key value="deliv_check"}-->
                    <input type="checkbox" name="<!--{$key}-->" value="1" onclick="eccube.toggleDeliveryForm();" <!--{$arrForm[$key].value|sfGetChecked:1}--> id="deliv_label" />
                    <label for="deliv_label"><span class="attention">お届け先を指定</span>　※上記に入力された住所と同一の場合は省略可能です。</label>
                    </th>
                </tr>
            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=1 emailMobile=false prefix="shipping_"}-->
            </table>

            <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
                <p class="alignC">この商品を複数のお届け先に送りますか？</p>
            <!--{/if}-->
            <div class="btn_area">
                <ul class="list-inline">
                    <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
                        <li>
                            <input type="submit" class="btn btn-default" value="上記のお届け先のみに送る" name="singular" id="singular" />
                        </li>
                        <li>
                            <a href="javascript:;" onclick="eccube.setModeAndSubmit('multiple', '', ''); return false" class="btn btn-default">複数のお届け先に送る</a>
                        </li>
                    <!--{else}-->
                        <li>
                            <input type="submit" class="btn btn-main" value="次へ" name="singular" id="singular" />
                        </li>
                    <!--{/if}-->
                </ul>
            </div>
        </form>
    </div>
</div>
