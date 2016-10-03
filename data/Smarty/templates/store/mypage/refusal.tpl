<div id="mypagecolumn">
    <div class="entry-title">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
    </div>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area" class="ui-section">
        <div class="ui-title-md section-title">
            <h3 class="title"><!--{$tpl_subtitle|h}--></h3>
        </div>
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <div id="complete_area">
                <div class="message">会員を退会された場合には、現在保存されている購入履歴や、<br />
                お届け先などの情報は、全て削除されますがよろしいでしょうか？</div>
                <div class="message_area">
                    <p>退会手続きが完了した時点で、現在保存されている購入履歴や、<br />
                    お届け先等の情報は全てなくなりますのでご注意ください。</p>
                    <div class="btn_area">
                        <ul class="list-inline">
                            <li>
                                <input type="submit" class="btn btn-default" value="会員退会を行う" name="refusal" id="refusal" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
