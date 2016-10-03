<div id="undercolumn">
    <div id="undercolumn_entry" class="ui-section">
        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>
        <div id="complete_area">
            <p class="message">会員登録の受付が完了いたしました。</p>
            <p>現在<span class="attention">仮会員</span>の状態です。<br />
                ご入力いただいたメールアドレス宛てに、ご連絡が届いておりますので、本会員登録になった上でお買い物をお楽しみください。<br />
                今後ともご愛顧賜りますようよろしくお願い申し上げます。
            </p>

            <div class="shop_information well">
                <p class="name"><!--{$arrSiteInfo.company_name|h}--></p>
                <p>TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}-->
                    <!--{if $arrSiteInfo.business_hour != ""}-->（受付時間/<!--{$arrSiteInfo.business_hour}-->）<!--{/if}--><br />
                    E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a>
                </p>
            </div>

            <div class="btn_area">
                <ul class="list-inline">
                    <li>
                        <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default">トップページへ</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
