<div id="undercolumn">
    <div id="undercolumn_shopping" class="ui-section">
        <p class="flow_area">
            <ol class="shopping-flow">
                <li>お届け先の指定</li>
                <li class="row2">お支払い方法・<br>お届け時間等の指定</li>
                <li>入力内容ご確認</li>
                <li class="current">ご注文完了</li>
            </ol>
        </p>

        <div class="entry-title">
            <h2 class="title"><!--{$tpl_title|h}--></h2>
        </div>

        <!-- ▼その他決済情報を表示する場合は表示 -->
        <!--{if $arrOther.title.value}-->
            <p><span class="attention">■<!--{$arrOther.title.name}-->情報</span><br />
                <!--{foreach key=key item=item from=$arrOther}-->
                    <!--{if $key != "title"}-->
                        <!--{if $item.name != ""}-->
                            <!--{$item.name}-->：
                        <!--{/if}-->
                            <!--{$item.value|nl2br}--><br />
                    <!--{/if}-->
                <!--{/foreach}-->
            </p>
        <!--{/if}-->
        <!-- ▲コンビに決済の場合には表示 -->

        <div id="complete_area">
            <p class="message"><!--{$arrInfo.shop_name|h}-->の商品をご購入いただき、ありがとうございました。</p>
            <p>ただいま、ご注文の確認メールをお送りさせていただきました。<br />
                万一、ご確認メールが届かない場合は、トラブルの可能性もありますので大変お手数ではございますがもう一度お問い合わせいただくか、お電話にてお問い合わせくださいませ。<br />
                今後ともご愛顧賜りますようよろしくお願い申し上げます。</p>

            <div class="shop_information well">
                <p class="name"><!--{$arrInfo.shop_name|h}--></p>
                <p>TEL：<!--{$arrInfo.tel01}-->-<!--{$arrInfo.tel02}-->-<!--{$arrInfo.tel03}--> <!--{if $arrInfo.business_hour != ""}-->（受付時間/<!--{$arrInfo.business_hour}-->）<!--{/if}--><br />
                E-mail：<a href="mailto:<!--{$arrInfo.email02|escape:'hex'}-->"><!--{$arrInfo.email02|escape:'hexentity'}--></a>
                </p>
            </div>
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
