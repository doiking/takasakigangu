<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(入力ページ)"}-->

<div id="window_area" class="container">
    <div class="content-title">
        <h2 class="title">パスワードの再発行</h2>
    </div>
    <p class="information">ご登録時のメールアドレスと、ご登録されたお名前を入力して「次へ」ボタンをクリックしてください。<br />
    <span class="attention">※新しくパスワードを発行いたしますので、お忘れになったパスワードはご利用できなくなります。</span></p>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="mail_check" />

        <div id="forgot">
            <div class="contents">
                <div class="mailaddres">
                    <p class="attention"><!--{$arrErr.email}--></p>
                    <p>
                        メールアドレス：&nbsp;
                        <input type="text" name="email" value="<!--{$arrForm.email|default:$tpl_login_email|h}-->" class="box300 form-control input-sm" style="<!--{$arrErr.email|sfGetErrorColor}-->; ime-mode: disabled;" />
                    </p>
                </div>
                <div class="name">
                    <p class="attention">
                        <!--{$arrErr.name01}--><!--{$arrErr.name02}-->
                        <!--{$errmsg}-->
                    </p>
                    <p>
                        お名前：&nbsp;
                        姓&nbsp;<input type="text" class="box120 form-control input-sm" name="name01" value="<!--{$arrForm.name01|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name01|sfGetErrorColor}-->; ime-mode: active;" />
                        名&nbsp;<input type="text" class="box120 form-control input-sm" name="name02" value="<!--{$arrForm.name02|default:''|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.name02|sfGetErrorColor}-->; ime-mode: active;" />
                    </p>
                </div>
            </div>
        </div>
        <div class="btn_area">
            <ul class="list-inline">
                <li>
                    <input type="submit" class="btn btn-main" value="次へ" name="next" id="next" />
                </li>
            </ul>
        </div>
    </form>
</div>
<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
