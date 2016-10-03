<!--{printXMLDeclaration}--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/import.css" type="text/css" media="all" />
<link rel="stylesheet" href="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.colorbox/colorbox.css" type="text/css" media="all" />

<!-- theme-style -->
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/bootstrap.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/font-awesome.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/theme.css" type="text/css" media="all" />
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/style.css" type="text/css" media="all" />

<!--[if lt IE 9]>
<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.11.1.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-2.1.1.min.js"></script>
<!--<![endif]-->

<!-- theme-script -->
<script type="text/javascript" src="<!--{$TPL_URLPATH}-->js/bootstrap.min.js"></script>

<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.js"></script>
<!-- #2342 次期メジャーバージョン(2.14)にてeccube.legacy.jsは削除予定.モジュール、プラグインの互換性を考慮して2.13では残します. -->
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/eccube.legacy.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.colorbox/jquery.colorbox-min.js"></script>
<title><!--{$arrSiteInfo.shop_name}-->/<!--{$subtitle|h}--></title>
<link rel="shortcut icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
<link rel="icon" type="image/vnd.microsoft.icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
<script type="text/javascript">//<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
        <!--{$tpl_onload}-->
    });
//]]></script>
<!--[if lt IE 9]>
  <script type="text/javascript" src="<!--{$TPL_URLPATH}-->js/html5shiv.min.js"></script>
<![endif]-->
</head>

<body>
<noscript>
    <p><em>JavaScriptを有効にしてご利用下さい.</em></p>
</noscript>

<a name="top" id="top"></a>

<!--{if !$disable_wincol}--><div id="windowcolumn"><!--{/if}-->
