<div id="undercolumn">

    <div id="undercolumn_contact" class="ui-section">
        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>
        <p>下記入力内容で送信してもよろしいでしょうか？<br />
            よろしければ、一番下の「完了ページへ」ボタンをクリックしてください。</p>
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="complete" />
            <!--{foreach key=key item=item from=$arrForm}-->
                <!--{if $key ne 'mode'}-->
                    <input type="hidden" name="<!--{$key}-->" value="<!--{$item.value|h}-->" />
                <!--{/if}-->
            <!--{/foreach}-->
            <table class="table table-bordered ui-table" summary="お問い合わせ内容確認">
                <col width="30%" />
                <col width="70%" />
                <tr>
                    <th>お名前</th>
                    <td><!--{$arrForm.name01.value|h}-->　<!--{$arrForm.name02.value|h}--></td>
                </tr>
                <tr>
                    <th>お名前(フリガナ)</th>
                    <td><!--{$arrForm.kana01.value|h}-->　<!--{$arrForm.kana02.value|h}--></td>
                </tr>
                <tr>
                    <th>郵便番号</th>
                    <td>
                        <!--{if strlen($arrForm.zip01.value) > 0 && strlen($arrForm.zip02.value) > 0}-->
                            〒<!--{$arrForm.zip01.value|h}-->-<!--{$arrForm.zip02.value|h}-->
                        <!--{/if}-->
                    </td>
                </tr>
                <tr>
                    <th>住所</th>
                    <td><!--{$arrPref[$arrForm.pref.value]}--><!--{$arrForm.addr01.value|h}--><!--{$arrForm.addr02.value|h}--></td>
                </tr>
                <tr>
                    <th>電話番号</th>
                    <td>
                        <!--{if strlen($arrForm.tel01.value) > 0 && strlen($arrForm.tel02.value) > 0 && strlen($arrForm.tel03.value) > 0}-->
                            <!--{$arrForm.tel01.value|h}-->-<!--{$arrForm.tel02.value|h}-->-<!--{$arrForm.tel03.value|h}-->
                        <!--{/if}-->
                    </td>
                </tr>
                <tr>
                    <th>メールアドレス</th>
                    <td><a href="mailto:<!--{$arrForm.email.value|escape:'hex'}-->"><!--{$arrForm.email.value|escape:'hexentity'}--></a></td>
                </tr>
                <tr>
                    <th>お問い合わせ内容</th>
                    <td><!--{$arrForm.contents.value|h|nl2br}--></td>
                </tr>
            </table>
            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <a href="?" onclick="eccube.setModeAndSubmit('return', '', ''); return false;" class="btn btn-default">戻る</a>
                    </li>
                    <li>
                        <input type="submit" class="btn btn-main" value="完了ページへ" name="send" id="send" />
                    </li>
                </ul>
            </div>

        </form>
    </div>
</div>
