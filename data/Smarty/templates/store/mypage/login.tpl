<div id="undercolumn">
    <div class="entry-title">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
    </div>
    <div id="undercolumn_login">
        <form name="login_mypage" id="login_mypage" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return eccube.checkLoginFormInputted('login_mypage')">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />

            <div class="login_area" class="ui-section">
                <div class="ui-title-md section-title">
                    <h3 class="title">会員登録がお済みのお客様</h3>
                </div>
                <p class="inputtext">会員の方は、登録時に入力されたメールアドレスとパスワードでログインしてください。</p>
                <div class="inputbox">
                    <dl class="formlist dl-horizontal">
                        <!--{assign var=key value="login_email"}-->
                        <dt>メールアドレス&nbsp;：</dt>
                        <dd>
                            <span class="attention"><!--{$arrErr[$key]}--></span>
                            <input type="text" name="<!--{$key}-->" value="<!--{$tpl_login_email|h}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->; ime-mode: disabled;" class="box300" />
                            <p class="login_memory">
                                <!--{assign var=key value="login_memory"}-->
                                <input type="checkbox" name="<!--{$key}-->" value="1"<!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory" />
                                <label for="login_memory">メールアドレスをコンピューターに記憶させる</label>
                            </p>
                        </dd>
                    </dl>
                    <dl class="formlist dl-horizontal">
                        <!--{assign var=key value="login_pass"}-->
                        <dt>
                            パスワード&nbsp;：
                        </dt>
                        <dd>
                            <span class="attention"><!--{$arrErr[$key]}--></span>
                            <input type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box300" />
                        </dd>
                    </dl>
                    <div class="btn_area">
                        <ul class="list-unstyled">
                            <li>
                                <input type="submit" class="btn btn-main" value="ログイン" name="log" id="log" />
                            </li>
                        </ul>
                    </div>
                </div>
                <p>
                    ※パスワードを忘れた方は<a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','460',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">こちら</a>からパスワードの再発行を行ってください。<br />
                    ※メールアドレスを忘れた方は、お手数ですが、<a href="<!--{$smarty.const.ROOT_URLPATH}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせページ</a>からお問い合わせください。
                </p>
            </div>

            <div class="login_area">
                <div class="ui-title-md section-title">
                    <h3 class="title">まだ会員登録されていないお客様</h3>
                </div>
                <p class="inputtext">会員登録をすると便利なMyページをご利用いただけます。<br />
                    また、ログインするだけで、毎回お名前や住所などを入力することなくスムーズにお買い物をお楽しみいただけます。
                </p>
                <div class="inputbox">
                    <div class="btn_area">
                        <ul class="list-inline">
                            <li>
                                <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php" class="btn btn-main">会員登録をする</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
