<script type="text/javascript">//<![CDATA[
    $(function(){
        $('#category_area li.level1:last').css('border-bottom', 'none');
    });
//]]></script>

<!--{strip}-->
    <div class="block_outer ui-section">
        <div id="category_area" class="block-category">
            <div class="side-title">
                <h2 class="title">商品カテゴリ</h2>
            </div>
            <div class="block_body section-body">
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$arrTree treeID="" display=1}-->
            </div>
        </div>
    </div>
<!--{/strip}-->
