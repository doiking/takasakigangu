<!--{if !$tpl_login}-->
<script type="text/javascript">//<![CDATA[
    $(function(){
        var $login_email = $('#header_login_area input[name=login_email]');

        if (!$login_email.val()) {
            $login_email
                .val('メールアドレス')
                .css('color', '#AAA');
        }

        $login_email
            .focus(function() {
                if ($(this).val() == 'メールアドレス') {
                    $(this)
                        .val('')
                        .css('color', '#000');
                }
            })
            .blur(function() {
                if (!$(this).val()) {
                    $(this)
                        .val('メールアドレス')
                        .css('color', '#AAA');
                }
            });

        $('#header_login_form').submit(function() {
            if (!$login_email.val()
                || $login_email.val() == 'メールアドレス') {
                if ($('#header_login_area input[name=login_pass]').val()) {
                    alert('メールアドレス/パスワードを入力して下さい。');
                }
                return false;
            }
            return true;
        });
    });
//]]></script>
<!--{/if}-->
<!--{strip}-->
    <div class="block_outer ui-section">
        <div id="header_login_area" class="block-header-login clearfix">
            <div class="container">
                <div class="inner clearfix">
                    <p class="site-description pull-left">
                      ここにサイトの説明文を追加
                    </p>
                    <form name="header_login_form" id="header_login_form" class="pull-right" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if !$tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('header_login_form')"<!--{/if}-->>
                        <input type="hidden" name="mode" value="login" />
                        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                        <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
                        <div class="block_body section-body clearfix">
                            <!--{if $tpl_login}-->
                                <ul class="formlist list-inline">
                                    <li class="mypage">
                                        <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">MYページ</a>
                                    </li>
                                    <!--{if !$tpl_disable_logout}-->
                                        <li>
                                            <a href="#" onclick="eccube.fnFormModeSubmit('header_login_form', 'logout', '', ''); return false;">ログアウト</a>
                                        </li>
                                    <!--{/if}-->
                                    <li class="hidden-xs">
                                        <a href="<!--{$smarty.const.CART_URL}-->">カゴの中を見る</a>
                                    </li>
                                </ul>
                            <!--{else}-->
                                <ul class="formlist list-inline clearfix">
                                    <li class="entry">
                                        <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録</a>
                                    </li>
                                    <li class="mypage">
                                        <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">ログイン</a>
                                    </li>
                                    <li class="hidden-xs">
                                        <a href="<!--{$smarty.const.CART_URL}-->">カゴの中を見る</a>
                                    </li>
                                </ul>
                            <!--{/if}-->
                        </div>
                    </form>
                </div><!-- /inner -->
            </div>
        </div>
    </div>
<!--{/strip}-->
