{*
*
*
*}

{capture name=path}{l s='My account'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<h1>{l s='My account'}</h1>
{if isset($account_created)}
	<p class="success">
		{l s='Your account has been created.'}
	</p>
{/if}
<h4>{l s='Welcome to your account. Here, you can manage your addresses and orders.'}</h4>
<ul class="myaccount_lnk_list">
	{if $has_customer_an_address}
		<li>
			<a href="{$link->getPageLink('address', true)}" title="{l s='Add my first address'}">{l s='Add my first address'}</a>
		</li>
	{/if}
		<li>
			<a href="{$link->getPageLink('history', true)}" title="{l s='Orders'}">{l s='History and details of my orders'}</a>
		</li>
	{if $returnAllowed}
		<li>
			<a href="{$link->getPageLink('order-follow', true)}" title="{l s='Merchandise returns'}">{l s='My merchandise returns'}</a>
		</li>
	{/if}
	<li>
		<a href="{$link->getPageLink('order-slip', true)}" title="{l s='Credit slips'}">{l s='My credit slips'}</a>
	</li>
	<li>
		<a href="{$link->getPageLink('addresses', true)}" title="{l s='Addresses'}">{l s='My addresses'}</a>
	</li>
	<li>
		<a href="{$link->getPageLink('identity', true)}" title="{l s='Information'}">{l s='My personal information'}</a>
	</li>
	{if $voucherAllowed}
		<li>
			<a href="{$link->getPageLink('discount', true)}" title="{l s='Vouchers'}">{l s='My vouchers'}</a>
		</li>
	{/if}
	{$HOOK_CUSTOMER_ACCOUNT}
</ul>
<p><a href="{$base_dir}" title="{l s='Home'}">{l s='Home'}</a></p>
