{*?template charset=latin1?*}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">

<head>
    <link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/admin.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/debug.css"|ezdesign} />

{include uri="design:page_head.tpl"}

</head>

<body>

{* Top box START *}


<table cellspacing="0" cellpadding="0" border="0">
<tr>
    <td class="headlogo">
    {* Admin logo area *}
    <img src={"logo.gif"|ezimage} alt="" />&nbsp;&nbsp;<img src={"admin.gif"|ezimage} alt="" /></td>
    <td class="headlink">

    {* Content menu *}
    {include uri="design:page_menuheadgray.tpl" menu_text="Content" menu_url="/content/view/full/2/"}

    </td>

    <td class="menuheadspacer">
    <img src={"1x1.gif"|ezimage} alt="" width="3" height="1" /></td>
    <td class="headlink">

    {* Shop menu *}
    {include uri="design:page_menuheadselected.tpl" menu_text="Shop" menu_url="/shop/orderlist/"}

    </td>

    <td class="menuheadspacer">
    <img src={"1x1.gif"|ezimage} alt="" width="3" height="1" /></td>

    <td class="headlink">

    {* Users menu *}
    {include uri="design:page_menuheadgray.tpl" menu_text="Users" menu_url="/content/view/full/5/"}
    
    </td>

    <td class="menuheadspacer">
    <img src={"1x1.gif"|ezimage} alt="" width="3" height="1" /></td>

    <td class="headlink">

    {* Set up menu *}
    {include uri="design:page_menuheadgray.tpl" menu_text="Set up" menu_url="/class/grouplist/"}

    </td>

    <td class="menuheadspacer">
    <img src={"1x1.gif"|ezimage} alt="" width="3" height="1" /></td>

    <td class="headlink">

    {* My *}
    {include uri="design:page_menuheadgray.tpl" menu_text="My" menu_url="/content/draft/"}

    </td>
   <td class="headlogo" width="100%">
   &nbsp;</td>
</tr>
<tr>
    <td colspan="11" class="menuheadtoolbar">

<form action={"/content/search/"|ezurl} method="get" style="margin-top: 0px; margin-bottom: 0px; padding: 0px;">

<table width="100%" cellpadding="0" cellspacing="2" border="0">
<tr>
    <td align="left">
	<input class="searchbox" type="text" size="20" name="SearchText" id="Search" value="" />&nbsp;
	<input class="searchbutton" name="SearchButton" type="submit" value="{'Search'|i18n('design/standard/layout')}" />
    </td>
    <td align="right">
      <p class="menuitem">
      {section show=eq($current_user.contentobject_id,$anonymous_user_id)}
      <a class="menuheadlink" href={"/user/login/"|ezurl}>{"Login"|i18n("design/standard/layout")}</a>
      {section-else}
      <a class="menuheadlink" href={"/user/logout/"|ezurl}>{"Logout"|i18n("design/standard/layout")}</a> ({$current_user.contentobject.name})
      {/section}
      </p>
    </td>
</tr>
</table>

</form>
    </td>
</tr>
</table>

{* Top box END *}

<table class="layout" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td colspan="2">

    </td>
</tr>
<tr>
{*    <td>

<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>*}
    <td  class="pathline"  colspan="2">
{* Path START *}

{include uri="design:page_toppath.tpl"}

{* Path END *}
    
    </td>
</tr>
<tr>
    <td width="120" valign="top" style="padding-right: 4px; padding-left: 15px; padding-top: 15px;">
    <table>
<tr>
{switch match=fetch('content', 'can_instantiate_classes')}
{case match=1}
    <td>

<form method="post" action={"content/action"|ezurl}>
         <select name="ClassID" class="classcreate">
	      {section name=Classes loop=fetch('content', 'can_instantiate_class_list')}
	      <option value="{$Classes:item.id}">{$Classes:item.name}</option>
	      {/section}
         </select>
	 <br />
         <input class="classbutton" type="submit" name="NewButton" value="{'New'|i18n('design/standard/node/view')}" />
</form>
    </td>

{/case}
{case match=0}

{/case}
{/switch}

    </table>

{* Left menu START *}

{include uri="design:left_menu.tpl"}

{* Left menu END *}

    </td>
    <td class="mainarea" width="99%" valign="top">

{* Main area START *}

{include uri="design:page_mainarea.tpl"}

{* Main area END *}

    </td>
</tr>
</table>

{include uri="design:page_copyright.tpl"}

<!--DEBUG_REPORT-->

</body>
</html>
