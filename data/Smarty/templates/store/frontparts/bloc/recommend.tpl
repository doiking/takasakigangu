<!--{strip}-->
    <!--{if count($arrBestProducts) > 0}-->
        <div class="block_outer ui-section clearfix">
            <div id="recommend_area" class="block-recommend">
                <div class="section-title">
                    <h2 class="title">おすすめ商品</h2>
                </div>
                <div class="block_body section-body clearfix">
                    <div class="row">
                        <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->
                            <div class="col-xs-6 col-sm-3">
                                <div class="product_item ui-box-item clearfix">
                                    <div class="productImage box-image">
                                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
                                            <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_list_image|sfNoImageMainList|h}-->" style="max-width: 80px;max-height: 80px;" alt="<!--{$arrProduct.name|h}-->" />
                                        </a>
                                    </div>
                                    <div class="productContents box-body">
                                        <div class="box-title">
                                            <h3 class="title"><a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a></h3>
                                        </div>
                                        <p class="sale_price item-price">
                                            <span class="price"><!--{$arrProduct.price02_min_inctax|n2s}--> 円(税込)</span>
                                        </p>
                                        <p class="mini comment item-description"><!--{$arrProduct.comment|h|nl2br}--></p>
                                    </div>
                                </div>
                            </div>

                            <!--{* ２カラムで改行（mobileで有効） *}-->
                            <!--{if $smarty.foreach.recommend_products.iteration % 2 === 0}-->
                                <div class="clearfix visible-xs"></div>
                            <!--{/if}-->
                            <!--{* ４カラムで改行（PC/tabletで有効） *}-->
                            <!--{if $smarty.foreach.recommend_products.iteration % 4 === 0}-->
                                <div class="clearfix hidden-xs"></div>
                            <!--{/if}-->

                        <!--{/foreach}-->
                    </div><!-- /row -->
                </div>
            </div>
        </div>
    <!--{/if}-->
<!--{/strip}-->
