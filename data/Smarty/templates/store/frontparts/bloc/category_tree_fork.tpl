<!--{strip}-->
    <ul class="ui-list-menu" <!--{if $treeID != ""}-->id="<!--{$treeID}-->"<!--{/if}--> style="<!--{if !$display}-->display: none;<!--{/if}-->">
        <!--{foreach from=$children item=child}-->
            <li class="level<!--{$child.level}--><!--{if in_array($child.category_id, $tpl_category_id)}--> onmark<!--{/if}-->">
                <p>
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$child.category_id}-->"<!--{if in_array($child.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->>
                        <!--{$child.category_name|h}-->(<!--{$child.product_count|default:0}-->) <!--{if isset($child.children|smarty:nodefaults)}--><i class="fa fa-chevron-down fa-fw pull-right"></i><!--{/if}-->
                    </a>
                </p>
                <!--{if in_array($child.category_id, $arrParentID)}-->
                    <!--{assign var=disp_child value=1}-->
                <!--{else}-->
                    <!--{assign var=disp_child value=0}-->
                <!--{/if}-->
                <!--{if isset($child.children|smarty:nodefaults)}-->
                    <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$child.children display=$disp_child}-->
                <!--{/if}-->
            </li>
        <!--{/foreach}-->
    </ul>
<!--{/strip}-->
