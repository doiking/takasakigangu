<!--{strip}-->
    <div class="block_outer ui-section">
        <div id="login_area" class="block-login">
            <div class="side-title">
                <h2 class="title">ログイン</h2>
            </div>
            <form name="login_form" id="login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if $tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('login_form')"<!--{/if}-->>
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <input type="hidden" name="mode" value="login" />
                <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
                <div class="block_body section-body">
                    <!--{if $tpl_login}-->
                        <p>ようこそ<br />
                            <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span><br />
                            <!--{if $smarty.const.USE_POINT !== false}-->
                                所持ポイント：<span class="point"> <!--{$tpl_user_point|n2s|default:0}--> pt</span>
                            <!--{/if}-->
                        </p>
                        <!--{if !$tpl_disable_logout}-->
                            <p class="btn">
                                <input type="submit" class="btn btn-main btn-sm" onclick="eccube.fnFormModeSubmit('login_form', 'logout', '', ''); return false;" value="ログアウト" />
                            </p>
                        <!--{/if}-->
                    <!--{else}-->
                        <dl class="formlist">
                            <dt>メールアドレス</dt>
                            <dd>
                                <input type="text" name="login_email" class="box140 form-control input-sm" value="<!--{$tpl_login_email|h}-->" style="ime-mode: disabled;" />
                            </dd>
                            <dd class="mini">
                                <input type="checkbox" name="login_memory" id="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> />
                                <label for="login_memory"><span>コンピューターに記憶する</span></label>
                            </dd>
                        </dl>
                        <dl class="formlist">
                            <dt class="password">パスワード</dt>
                            <dd><input type="password" name="login_pass" class="box140 form-control input-sm" /></dd>
                            <dd class="mini">
                                <a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">パスワードを忘れた方はこちら</a>
                            </dd>
                        </dl>
                        <p class="btn">
                            <input type="submit" class="btn btn-main btn-sm" value="ログイン" />
                        </p>
                    <!--{/if}-->
                </div>
            </form>
        </div>
    </div>
<!--{/strip}-->
