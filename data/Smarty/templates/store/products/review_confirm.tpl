<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="お客様の声書き込み（確認ページ）"}-->

<div id="window_area" class="container">
    <div class="content-title">
        <h2 class="title">お客様の声書き込み</h2>
    </div>
    <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="complete" />
        <!--{foreach from=$arrForm key=key item=item}-->
            <!--{if $key ne "mode"}-->
                <input type="hidden" name="<!--{$key|h}-->" value="<!--{$item|h}-->" />
            <!--{/if}-->
        <!--{/foreach}-->

        <table class="table table-bordered" summary="お客様の声書き込み">
            <col width="30%" />
            <col width="70%" />
            <tr>
                <th>商品名</th>
                <td><!--{$arrForm.name|h}--></td>
            </tr>
            <tr>
                <th>投稿者名</th>
                <td><!--{$arrForm.reviewer_name|h}--></td>
            </tr>
            <tr>
                <th>投稿者URL</th>
                <td><!--{$arrForm.reviewer_url|h}--></td>
            </tr>
            <tr>
                <th>性別</th>
                <td><!--{if $arrForm.sex eq 1}-->男性<!--{elseif $arrForm.sex eq 2}-->女性<!--{/if}--></td>
            </tr>
            <tr>
                <th>おすすめレベル</th>
                <td><span class="recommend_level"><!--{$arrRECOMMEND[$arrForm.recommend_level]}--></span></td>
            </tr>
            <tr>
                <th>タイトル</th>
                <td><!--{$arrForm.title|h}--></td>
            </tr>
            <tr>
                <th>コメント</th>
                <td><!--{$arrForm.comment|h|nl2br}--></td>
            </tr>
        </table>
        <div class="btn_area">
            <ul class="list-inline">
                <li>
                    <input type="submit" onclick="mode.value='return';" class="btn btn-default" value="戻る" name="back" id="back" />
                </li>
                <li>
                    <input type="submit" class="btn btn-main" value="送信" name="send" id="send" />
                </li>
            </ul>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
