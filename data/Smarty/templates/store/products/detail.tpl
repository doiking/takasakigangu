<script type="text/javascript">//<![CDATA[
    // 規格2に選択肢を割り当てる。
    function fnSetClassCategories(form, classcat_id2_selected) {
        var $form = $(form);
        var product_id = $form.find('input[name=product_id]').val();
        var $sele1 = $form.find('select[name=classcategory_id1]');
        var $sele2 = $form.find('select[name=classcategory_id2]');
        eccube.setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
    }
//]]></script>

<div id="undercolumn">
    <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <div id="detailarea" class="ui-section clearfix">
            <div class="row">
                <div id="detailphotobloc" class="col-left col-sm-5">
                    <div class="photo">
                        <!--{assign var=key value="main_image"}-->
                        <!--★画像★-->
                        <!--{if $arrProduct.main_large_image|strlen >= 1}-->
                            <a
                                href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_large_image|h}-->"
                                class="expansion"
                                target="_blank"
                            >
                        <!--{/if}-->
                            <img src="<!--{$arrFile[$key].filepath|h}-->" width="<!--{$arrFile[$key].width}-->" height="<!--{$arrFile[$key].height}-->" alt="<!--{$arrProduct.name|h}-->" class="picture img-responsive" />
                        <!--{if $arrProduct.main_large_image|strlen >= 1}-->
                            </a>
                        <!--{/if}-->
                    </div>
                    <!--{if $arrProduct.main_large_image|strlen >= 1}-->
                        <span class="mini">
                                <!--★拡大する★-->
                                <a
                                    href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_large_image|h}-->"
                                    class="expansion"
                                    target="_blank"
                                >
                                    画像を拡大する</a>
                        </span>
                    <!--{/if}-->
                </div>

                <div id="detailrightbloc" class="col-right col-sm-7">
                    <!--▼商品ステータス-->
                    <!--{assign var=ps value=$productStatus[$tpl_product_id]}-->
                    <!--{if count($ps) > 0}-->
                        <ul class="status_icon list-inline clearfix">
                            <!--{foreach from=$ps item=status}-->
                            <li>
                                <img src="<!--{$TPL_URLPATH}--><!--{$arrSTATUS_IMAGE[$status]}-->" width="60" height="17" alt="<!--{$arrSTATUS[$status]}-->" id="icon<!--{$status}-->" />
                            </li>
                            <!--{/foreach}-->
                        </ul>
                    <!--{/if}-->
                    <!--▲商品ステータス-->

                    <!--★商品名★-->
                    <div class="product-title">
                        <h2 class="title"><!--{$arrProduct.name|h}--></h2>
                    </div>

                    <div class="price-area">
                        <!--★通常価格★-->
                        <!--{if $arrProduct.price01_min_inctax > 0}-->
                            <dl class="normal_price dl-horizontal">
                                <dt><!--{$smarty.const.NORMAL_PRICE_TITLE}-->(税込)：</dt>
                                <dd class="price">
                                    <span id="price01_default"><!--{strip}-->
                                        <!--{if $arrProduct.price01_min_inctax == $arrProduct.price01_max_inctax}-->
                                            <!--{$arrProduct.price01_min_inctax|n2s}-->
                                        <!--{else}-->
                                            <!--{$arrProduct.price01_min_inctax|n2s}-->～<!--{$arrProduct.price01_max_inctax|n2s}-->
                                        <!--{/if}-->
                                    <!--{/strip}--></span><span id="price01_dynamic"></span>
                                    円
                                </dd>
                            </dl>
                        <!--{/if}-->

                        <!--★販売価格★-->
                        <dl class="sale_price dl-horizontal">
                            <dt><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：</dt>
                            <dd class="price">
                                <span id="price02_default"><!--{strip}-->
                                    <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
                                        <!--{$arrProduct.price02_min_inctax|n2s}-->
                                    <!--{else}-->
                                        <!--{$arrProduct.price02_min_inctax|n2s}-->～<!--{$arrProduct.price02_max_inctax|n2s}-->
                                    <!--{/if}-->
                                <!--{/strip}--></span><span id="price02_dynamic"></span>
                                円
                            </dd>
                        </dl>
                    </div><!-- /price-area -->

                    <div class="spec-area">
                        <!--★商品コード★-->
                        <dl class="product_code dl-horizontal">
                            <dt>商品コード：</dt>
                            <dd>
                                <span id="product_code_default">
                                    <!--{if $arrProduct.product_code_min == $arrProduct.product_code_max}-->
                                        <!--{$arrProduct.product_code_min|h}-->
                                    <!--{else}-->
                                        <!--{$arrProduct.product_code_min|h}-->～<!--{$arrProduct.product_code_max|h}-->
                                    <!--{/if}-->
                                </span><span id="product_code_dynamic"></span>
                            </dd>
                        </dl>

                        <!--{* ▼メーカー *}-->
                        <!--{if $arrProduct.maker_name|strlen >= 1}-->
                            <dl class="maker dl-horizontal">
                                <dt>メーカー：</dt>
                                <dd><!--{$arrProduct.maker_name|h}--></dd>
                            </dl>
                        <!--{/if}-->
                        <!--{* ▲メーカー *}-->

                        <!--▼メーカーURL-->
                        <!--{if $arrProduct.comment1|strlen >= 1}-->
                            <dl class="comment1 dl-horizontal">
                                <dt>メーカーURL：</dt>
                                <dd><a href="<!--{$arrProduct.comment1|h}-->"><!--{$arrProduct.comment1|h}--></a></dd>
                            </dl>
                        <!--{/if}-->
                        <!--▼メーカーURL-->

                        <!--★関連カテゴリ★-->
                        <dl class="relative_cat dl-horizontal">
                            <dt>関連カテゴリ：</dt>
                            <!--{section name=r loop=$arrRelativeCat}-->
                                <dd>
                                    <!--{section name=s loop=$arrRelativeCat[r]}-->
                                        <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$arrRelativeCat[r][s].category_id}-->"><!--{$arrRelativeCat[r][s].category_name|h}--></a>
                                        <!--{if !$smarty.section.s.last}--><!--{$smarty.const.SEPA_CATNAVI}--><!--{/if}-->
                                    <!--{/section}-->
                                </dd>
                            <!--{/section}-->
                        </dl>

                        <!--★ポイント★-->
                        <!--{if $smarty.const.USE_POINT !== false}-->
                            <div class="point">ポイント：
                                <span id="point_default"><!--{strip}-->
                                    <!--{if $arrProduct.price02_min == $arrProduct.price02_max}-->
                                        <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|n2s}-->
                                    <!--{else}-->
                                        <!--{if $arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate == $arrProduct.price02_max|sfPrePoint:$arrProduct.point_rate}-->
                                            <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|n2s}-->
                                        <!--{else}-->
                                            <!--{$arrProduct.price02_min|sfPrePoint:$arrProduct.point_rate|n2s}-->～<!--{$arrProduct.price02_max|sfPrePoint:$arrProduct.point_rate|n2s}-->
                                        <!--{/if}-->
                                    <!--{/if}-->
                                <!--{/strip}--></span><span id="point_dynamic"></span>
                                Pt
                            </div>
                        <!--{/if}-->
                    </div><!-- /spec-area -->

                    <!--★詳細メインコメント★-->
                    <div class="main_comment"><!--{$arrProduct.main_comment|nl2br_html}--></div>

                    <!--▼買い物カゴ-->
                    <div class="cart_area clearfix">
                        <input type="hidden" name="mode" value="cart" />
                        <input type="hidden" name="product_id" value="<!--{$tpl_product_id}-->" />
                        <input type="hidden" name="product_class_id" value="<!--{$tpl_product_class_id}-->" id="product_class_id" />
                        <input type="hidden" name="favorite_product_id" value="" />

                        <!--{if $tpl_stock_find}-->
                            <!--{if $tpl_classcat_find1}-->
                                <div class="classlist">
                                    <!--▼規格1-->
                                    <ul class="clearfix list-inline">
                                        <li><!--{$tpl_class_name1|h}-->：</li>
                                        <li>
                                            <select name="classcategory_id1" style="<!--{$arrErr.classcategory_id1|sfGetErrorColor}-->" class="form-control input-sm">
                                            <!--{html_options options=$arrClassCat1 selected=$arrForm.classcategory_id1.value}-->
                                            </select>
                                            <!--{if $arrErr.classcategory_id1 != ""}-->
                                            <br /><span class="attention">※ <!--{$tpl_class_name1}-->を入力して下さい。</span>
                                            <!--{/if}-->
                                        </li>
                                    </ul>
                                    <!--▲規格1-->
                                    <!--{if $tpl_classcat_find2}-->
                                    <!--▼規格2-->
                                    <ul class="clearfix list-inline">
                                        <li><!--{$tpl_class_name2|h}-->：</li>
                                        <li>
                                            <select name="classcategory_id2" style="<!--{$arrErr.classcategory_id2|sfGetErrorColor}-->" class="form-control input-sm">
                                            </select>
                                            <!--{if $arrErr.classcategory_id2 != ""}-->
                                            <br /><span class="attention">※ <!--{$tpl_class_name2}-->を入力して下さい。</span>
                                            <!--{/if}-->
                                        </li>
                                    </ul>
                                    <!--▲規格2-->
                                    <!--{/if}-->
                                </div>
                            <!--{/if}-->

                            <div class="cartin">
                                <!--★数量★-->
                                <dl class="quantity dl-horizontal">
                                    <dt>数量：</dt>
                                    <dd><input type="text" class="box60" name="quantity" value="<!--{$arrForm.quantity.value|default:1|h}-->" maxlength="<!--{$smarty.const.INT_LEN}-->" style="<!--{$arrErr.quantity|sfGetErrorColor}-->" />
                                        <!--{if $arrErr.quantity != ""}-->
                                            <br /><span class="attention"><!--{$arrErr.quantity}--></span>
                                        <!--{/if}-->
                                    </dd>
                                </dl>
                                <div class="cartin_btn">
                                    <div id="cartbtn_default">
                                        <!--★カゴに入れる★-->
                                        <a href="javascript:void(document.form1.submit())" class="btn btn-key btn-long">カゴに入れる</a>
                                    </div>
                                </div>
                            </div>
                            <div class="attention" id="cartbtn_dynamic"></div>
                        <!--{else}-->
                            <div class="attention">申し訳ございませんが、只今品切れ中です。</div>
                        <!--{/if}-->

                        <!--★お気に入り登録★-->
                        <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1 && $tpl_login === true}-->
                            <div class="favorite_btn">
                                <!--{assign var=add_favorite value="add_favorite`$product_id`"}-->
                                <!--{if $arrErr[$add_favorite]}-->
                                    <div class="attention"><!--{$arrErr[$add_favorite]}--></div>
                                <!--{/if}-->
                                <!--{if !$is_favorite}-->
                                    <a href="javascript:eccube.changeAction('?product_id=<!--{$arrProduct.product_id|h}-->'); eccube.setModeAndSubmit('add_favorite','favorite_product_id','<!--{$arrProduct.product_id|h}-->');" class="btn btn-default btn-sm">お気に入りに追加</a>
                                <!--{else}-->
                                    <a class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="top" title="お気に入りに登録済み">お気に入りに追加</a>
                                    <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.ui/jquery.ui.core.min.js"></script>
                                    <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.ui/jquery.ui.widget.min.js"></script>
                                    <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.ui/jquery.ui.position.min.js"></script>
                                    <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.ui/jquery.ui.tooltip.min.js"></script>
                                    <script type="text/javascript">
                                        var favoriteButton = $("#add_favorite_product");
                                        favoriteButton.tooltip();

                                        <!--{if $just_added_favorite == true}-->
                                        favoriteButton.load(function(){ $(this).tooltip("open") });
                                        $(function(){
                                            var tid = setTimeout('favoriteButton.tooltip("close")',5000);
                                        });
                                        <!--{/if}-->
                                        $(function () {
                                          $('[data-toggle="tooltip"]').tooltip()
                                        })
                                    </script>
                                <!--{/if}-->
                            </div>
                        <!--{/if}-->
                    </div>
                    <!--▲買い物カゴ-->
                </div>
            </div><!-- /row -->
        </div><!-- /detailarea -->
    </form>

    <!--詳細ここまで-->

    <!--▼サブコメント-->
    <div class="subcomment-area ui-section">
        <div class="section-title">
            <h3 class="title">商品の特徴</h3>
        </div>
        <!--{section name=cnt loop=$smarty.const.PRODUCTSUB_MAX}-->
            <!--{assign var=key value="sub_title`$smarty.section.cnt.index+1`"}-->
            <!--{assign var=ikey value="sub_image`$smarty.section.cnt.index+1`"}-->
            <!--{if $arrProduct[$key] != "" or $arrProduct[$ikey]|strlen >= 1}-->
                <div class="sub_area ui-box-list clearfix">
                    <!--{assign var=ckey value="sub_comment`$smarty.section.cnt.index+1`"}-->
                    <div class="row">
                        <!--▼サブ画像-->
                        <!--{assign var=lkey value="sub_large_image`$smarty.section.cnt.index+1`"}-->
                        <!--{if $arrProduct[$ikey]|strlen >= 1}-->
                            <div class="col-left col-sm-4">
                                <div class="subphotoimg box-image">
                                    <!--{if $arrProduct[$lkey]|strlen >= 1}-->
                                        <a href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct[$lkey]|h}-->" class="expansion" target="_blank" >
                                    <!--{/if}-->
                                    <img src="<!--{$arrFile[$ikey].filepath}-->" alt="<!--{$arrProduct.name|h}-->" width="<!--{$arrFile[$ikey].width}-->" height="<!--{$arrFile[$ikey].height}-->" class="img-responsive" />
                                    <!--{if $arrProduct[$lkey]|strlen >= 1}-->
                                        </a>
                                        <span class="mini">
                                            <a href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct[$lkey]|h}-->" class="expansion" target="_blank">
                                                画像を拡大する</a>
                                        </span>
                                    <!--{/if}-->
                                </div>
                            </div><!-- /col-left -->
                            <div class="col-right col-sm-8">
                                <div class="content-title">
                                    <h4 class="title"><!--★サブタイトル★--><!--{$arrProduct[$key]|h}--></h4>
                                </div>
                                <div class="subtext"><!--★サブテキスト★--><!--{$arrProduct[$ckey]|nl2br_html}--></div>
                            </div><!-- /col-right -->
                        <!--{else}-->
                            <div class="col-xs-12">
                                <div class="content-title">
                                    <h4 class="title"><!--★サブタイトル★--><!--{$arrProduct[$key]|h}--></h4>
                                </div>
                                <p class="subtext"><!--★サブテキスト★--><!--{$arrProduct[$ckey]|nl2br_html}--></p>
                            </div>
                        <!--{/if}-->
                        <!--▲サブ画像-->
                    </div><!-- /row -->
                </div>
            <!--{/if}-->
        <!--{/section}-->
    </div>
    <!--▲サブコメント-->

    <!--この商品に対するお客様の声-->
    <div id="customervoice_area" class="ui-section">
        <div class="section-title">
            <h3 class="title">この商品に対するお客様の声</h3>
        </div>

        <div class="review_bloc clearfix">
            <p>この商品に対するご感想をぜひお寄せください。</p>
            <div class="review_btn">
                <!--{if count($arrReview) < $smarty.const.REVIEW_REGIST_MAX}-->
                    <!--★新規コメントを書き込む★-->
                    <a href="./review.php"
                        onclick="eccube.openWindow('./review.php?product_id=<!--{$arrProduct.product_id}-->','review','600','640'); return false;"
                        target="_blank" class="btn btn-main">新規コメントを書き込む</a>
                <!--{/if}-->
            </div>
        </div>

        <!--{if count($arrReview) > 0}-->
            <ul>
                <!--{section name=cnt loop=$arrReview}-->
                    <li>
                        <p class="voicetitle"><!--{$arrReview[cnt].title|h}--></p>
                        <p class="voicedate"><!--{$arrReview[cnt].create_date|sfDispDBDate:false}-->　投稿者：<!--{if $arrReview[cnt].reviewer_url}--><a href="<!--{$arrReview[cnt].reviewer_url}-->" target="_blank"><!--{$arrReview[cnt].reviewer_name|h}--></a><!--{else}--><!--{$arrReview[cnt].reviewer_name|h}--><!--{/if}-->　おすすめレベル：<span class="recommend_level"><!--{assign var=level value=$arrReview[cnt].recommend_level}--><!--{$arrRECOMMEND[$level]|h}--></span></p>
                        <p class="voicecomment"><!--{$arrReview[cnt].comment|h|nl2br}--></p>
                    </li>
                <!--{/section}-->
            </ul>
        <!--{/if}-->
    </div>
    <!--お客様の声ここまで-->

    <!--▼関連商品-->
    <!--{if $arrRecommend}-->
        <div id="whobought_area" class="ui-section">
            <div class="section-title">
                <h3 class="title">その他のオススメ商品</h3>
            </div>
            <div class="section-body">
                <div class="row">
                    <!--{foreach from=$arrRecommend item=arrItem name="arrRecommend"}-->
                        <div class="col-xs-6 col-sm-3">
                            <div class="product_item ui-box-item">
                                <div class="productImage box-image">
                                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrItem.product_id|u}-->">
                                        <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrItem.main_list_image|sfNoImageMainList|h}-->" alt="<!--{$arrItem.name|h}-->" class="img-responsive" /></a>
                                </div>
                                <!--{assign var=price02_min value=`$arrItem.price02_min_inctax`}-->
                                <!--{assign var=price02_max value=`$arrItem.price02_max_inctax`}-->
                                <div class="productContents box-body">
                                    <div class="ui-title-xs box-title">
                                        <h4 class="title"><a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrItem.product_id|u}-->"><!--{$arrItem.name|h}--></a></h4>
                                    </div>
                                    <p class="sale_price item-price"><span class="price">
                                        <!--{if $price02_min == $price02_max}-->
                                            <!--{$price02_min|n2s}-->
                                        <!--{else}-->
                                            <!--{$price02_min|n2s}-->～<!--{$price02_max|n2s}-->
                                        <!--{/if}-->円</span></p>
                                    <p class="mini"><!--{$arrItem.comment|h|nl2br}--></p>
                                </div>
                            </div><!-- /ui-box-item -->
                        </div>
                        <!--{* ２カラムで改行（mobileで有効） *}-->
                        <!--{if $smarty.foreach.arrRecommend.iteration % 2 === 0}-->
                            <div class="clearfix visible-xs"></div>
                        <!--{/if}-->
                        <!--{* ４カラムで改行（PC/tabletで有効） *}-->
                        <!--{if $smarty.foreach.arrRecommend.iteration % 4 === 0}-->
                            <div class="clearfix hidden-xs"></div>
                        <!--{/if}-->
                    <!--{/foreach}-->
                </div><!-- /row -->
            </div>
        </div>
    <!--{/if}-->
    <!--▲関連商品-->

</div>
