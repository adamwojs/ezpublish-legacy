{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{*?template charset=latin1?*}

<form method="post" action="{$script}">

  <div align="center">
    <h1>{"Site type"|i18n("design/standard/setup/init")}</h1>
  </div>

  <p>
    {"Please choose one demo site you would like to test or base your sites on. Use Plain if you wish to start from scratch."i18n("design/standard/setup/init")}
  </p>

{section show=$error}
<div class="error">
<p>
{$error|wash}
</p>
</div>
{/section}

  <table border="0" cellspacing="0" cellpadding="0">

    <tr>

    {section var=site loop=$site_types}

      <td class="setup_site_templates">
            <label for="{$site.identifier|wash}">
            {section show=$site.thumbnail}
              <img class="site-type" src={concat( "design/standard/images/setup/thumbnails/", $site.thumbnail )|ezroot} alt="{$site.name|wash}" title="{$site.summary|wash}" />
            {section-else}
              <img class="site-type" src={"design/standard/images/setup/eZ_setup_template_default.png"|ezroot} alt="{$site.name|wash}" title="{$site.summary|wash}"  />
            {/section}
            </label>
      </td>
    {delimiter modulo=4}
      </tr>
      <tr>
      </tr>
	  <td colspan="4">
	    &nbsp;
	  </td>
      <tr>
      {section var=site2 loop=$site_types max=4}
	  <td align="bottom" class="normal">
	    <input id="{$site2.identifier|wash}" type="radio" name="eZSetup_site_type" value="{$site2.identifier}" /><label for="{$site2.identifier|wash}">{$site2.name}</label>
{*             <input type="hidden" name="eZSetup_site_templates[{$site2.index}][identifier]" value="{$site2.identifier}" /> *}
{*             <input type="hidden" name="eZSetup_site_templates[{$site2.index}][name]" value="{$site2.name}" /> *}
	  </td>
      {/section}
      </tr>
      <tr>
    {/delimiter}
    {/section}
    </tr>

    {section show=count( $site_types )|gt( 4 )}
    <tr>
        {section var=site loop=$site_types offset=4 max=4}
	  <td align="bottom" class="normal">
	    <input id="{$site.identifier|wash}" type="radio" name="eZSetup_site_type" value="{$site.identifier|wash}" /><label for="{$site.identifier|wash}">{$site.name|wash}</label>
{*             <input type="hidden" name="eZSetup_site_templates[{sum(4, $site.index)}][identifier]" value="{$:item.identifier}" /> *}
{*             <input type="hidden" name="eZSetup_site_templates[{sum(4, $site.index)}][name]" value="{$site.name}" /> *}
	  </td>
        {/section}
    </tr>
    {/section}

    {section show=count( $site_types )|le( 4 )}
    <tr>
        {section var=site loop=$site_types max=4}
	  <td align="bottom" class="normal">
	    <input id="{$site.identifier|wash}" type="radio" name="eZSetup_site_type" value="{$site.identifier}" /><label for="{$site.identifier|wash}">{$site.name}</label>
{*             <input type="hidden" name="eZSetup_site_templates[{$site.index}][identifier]" value="{$site.identifier}" /> *}
{*             <input type="hidden" name="eZSetup_site_templates[{$site.index}][name]" value="{$site.name}" /> *}
	  </td>
        {/section}
    </tr>
    {/section}

  </table>

  {include uri="design:setup/persistence.tpl"}

  {include uri='design:setup/init/navigation.tpl'}

</form>
