<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(確認ページ)"}-->

<div id="window_area" class="container">
    <div class="content-title">
        <h2 class="title">パスワードの再発行 秘密の質問の確認</h2>
    </div>
    <p class="information">
        ご登録時に入力した下記質問の答えを入力して「次へ」ボタンをクリックしてください。<br />
        ※下記質問の答えをお忘れになられた場合は、<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentitiy'}--></a>までご連絡ください。<br />
    </p>
    <p class="message">
        【重要】新しくパスワードを発行いたしますので、お忘れになったパスワードはご利用できなくなります。</p>
    </p>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="secret_check" />

        <!--{foreach key=key item=item from=$arrForm}-->
            <!--{if $key ne 'reminder_answer'}-->
                <input type="hidden" name="<!--{$key}-->" value="<!--{$item|h}-->" />
            <!--{/if}-->
        <!--{/foreach}-->

        <div id="completebox">
        <p>
            <span class="attention"><!--{$arrErr.reminder}--><!--{$arrErr.reminder_answer}--></span>
            <!--{$arrReminder[$arrForm.reminder]}-->：&nbsp;<!--★答え入力★--><input type="text" name="reminder_answer" value="" class="box300 form-control input-sm" style="<!--{$arrErr.reminder_answer|sfGetErrorColor}-->" /></p>
            <span class="attention"><!--{$errmsg}--></span>
        </div>
        <div class="btn_area">
            <ul class="list-inline">
                <li>
                    <input type="submit" class="btn btn-default" value="次へ" name="next" id="next" />
                </li>
            </ul>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
