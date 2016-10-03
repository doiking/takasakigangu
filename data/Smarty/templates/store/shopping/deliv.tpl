<div id="undercolumn">
    <div id="undercolumn_shopping" class="ui-section">
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

        <div id="address_area" class="clearfix">
            <div class="information">
                <p>下記一覧よりお届け先住所を選択して、「選択したお届け先に送る」ボタンをクリックしてください。</p>
                <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
                    <p>一覧にご希望の住所が無い場合は、「新しいお届け先を追加する」より追加登録してください。</p>
                <!--{/if}-->
                <p class="mini attention">※最大<!--{$smarty.const.DELIV_ADDR_MAX|h}-->件まで登録できます。</p>
            </div>
            <!--{if $smarty.const.USE_MULTIPLE_SHIPPING !== false}-->
                <div class="add_multiple">
                    <p>この商品を複数の<br />お届け先に送りますか？</p>
                    <a href="javascript:;" onclick="eccube.setModeAndSubmit('multiple', '', ''); return false" class="btn btn-default">お届け先を複数指定する</a>
                </div>
            <!--{/if}-->
        </div>
        <br />

        <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
            <p class="addbtn">
                <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="eccube.openWindow('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->','new_deiv','600','640'); return false;" class="btn btn-default">新しいお届け先を追加する</a>
            </p>
        <!--{/if}-->

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="customer_addr" />
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
            <input type="hidden" name="other_deliv_id" value="" />
            <!--{if $arrErr.deli != ""}-->
                <p class="attention"><!--{$arrErr.deli}--></p>
            <!--{/if}-->
            <table class="table table-bordered" summary="お届け先の指定">
                <col width="10%" />
                <col width="20%" />
                <col width="50%" />
                <col width="10%" />
                <col width="10%" />
                <tr>
                    <th class="alignC">選択</th>
                    <th class="alignC">住所種類</th>
                    <th class="alignC">お届け先</th>
                    <th class="alignC">変更</th>
                    <th class="alignC">削除</th>
                </tr>
                <!--{section name=cnt loop=$arrAddr}-->
                    <tr>
                        <td class="alignC">
                            <!--{if $smarty.section.cnt.first}-->
                                <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="-1" <!--{if $arrForm.deliv_check.value == "" || $arrForm.deliv_check.value == -1}--> checked="checked"<!--{/if}--> />
                            <!--{else}-->
                                <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="<!--{$arrAddr[cnt].other_deliv_id}-->"<!--{if $arrForm.deliv_check.value == $arrAddr[cnt].other_deliv_id}--> checked="checked"<!--{/if}--> />
                            <!--{/if}-->
                        </td>
                        <td class="alignC">
                            <label for="chk_id_<!--{$smarty.section.cnt.iteration}-->">
                                <!--{if $smarty.section.cnt.first}-->
                                    会員登録住所
                                <!--{else}-->
                                    追加登録住所
                                <!--{/if}-->
                            </label>
                        </td>
                        <td>
                            <!--{assign var=key1 value=$arrAddr[cnt].pref}-->
                            <!--{assign var=key2 value=$arrAddr[cnt].country_id}-->
                            <!--{if $smarty.const.FORM_COUNTRY_ENABLE}-->
                            <!--{$arrCountry[$key2]|h}--><br/>
                            <!--{/if}-->
                            <!--{$arrPref[$key1]|h}--><!--{$arrAddr[cnt].addr01|h}--><!--{$arrAddr[cnt].addr02|h}--><br />
                            <!--{$arrAddr[cnt].company_name|h}--> <!--{$arrAddr[cnt].name01|h}--> <!--{$arrAddr[cnt].name02|h}-->
                        </td>
                        <td class="alignC">
                            <!--{if !$smarty.section.cnt.first}-->
                                <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="eccube.openWindow('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.SCRIPT_NAME|h}-->&amp;other_deliv_id=<!--{$arrAddr[cnt].other_deliv_id}-->','new_deiv','600','640'); return false;">変更</a>
                                <!--{else}-->
                                    -
                                <!--{/if}-->
                        </td>
                        <td class="alignC">
                            <!--{if !$smarty.section.cnt.first}-->
                                <a href="?" onclick="eccube.setModeAndSubmit('delete', 'other_deliv_id', '<!--{$arrAddr[cnt].other_deliv_id}-->'); return false">削除</a>
                                <!--{else}-->
                                    -
                                <!--{/if}-->
                        </td>
                    </tr>
                <!--{/section}-->
            </table>

            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <a href="<!--{$smarty.const.CART_URL}-->" class="btn btn-default">戻る</a>
                    </li>
                    <li>
                        <input type="submit" class="btn btn-main" value="選択したお届け先に送る" name="send_button" id="send_button" />
                    </li>
                </ul>
            </div>

        </form>
    </div>
</div>
