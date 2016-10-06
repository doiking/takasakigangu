<?php
/*
 * CustomMenu
 * Copyright (C) 2014 Reaps-Fatory. CO.,LTD. All Rights Reserved.
 * http://www.reaps-factory.com/
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// {{{ requires
require_once realpath(dirname(__FILE__)) . '/../../require.php';
require_once PLUGIN_UPLOAD_REALDIR . 'CustomMenu/plg_CustomMenu_LC_Page_Admin_Design_MenuEdit.php';
// }}}
// {{{ generate page

$objPage = new LC_Page_Admin_Design_MenuEdit();
$objPage->init();
$objPage->process();
?>