{*
*
*
*}

{capture name=path}{l s='Top sellers'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<h1>{l s='Top sellers'}</h1>

{if $products}
	<div class="content_sortPagiBar">
		{include file="$tpl_dir./pagination.tpl"}

		<div class="sortPagiBar clearfix">
			{include file="./product-sort.tpl"}
			{include file="./product-compare.tpl"}
			{include file="./nbr-product-page.tpl"}
		</div>
	</div>

	{include file="./product-list.tpl" products=$products}

	<div class="content_sortPagiBar">
		<div class="sortPagiBar clearfix">
			{include file="./product-sort.tpl"} {include file="./product-compare.tpl"} {include file="./nbr-product-page.tpl"}

		</div>
		{include file="./pagination.tpl"}
	</div>
	{else}
	<p class="warning">{l s='No top sellers.'}</p>
{/if}
