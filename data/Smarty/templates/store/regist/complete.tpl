<div id="undercolumn">
    <div id="undercolumn_entry" class="ui-section">
        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>
        <div id="complete_area">
            <p class="message">本登録が完了いたしました。<br />
                それではショッピングをお楽しみください。</p>

            <p>今後ともご愛顧賜りますようよろしくお願い申し上げます。</p>

            <div class="shop_information well">
                <p class="name"><!--{$arrSiteInfo.company_name|h}--></p>
                <p>TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}--> <!--{if $arrSiteInfo.business_hour != ""}-->（受付時間/<!--{$arrSiteInfo.business_hour}-->）<!--{/if}--><br />
                    E-mall：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a></p>
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
