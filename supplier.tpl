{*
*
*
*}

{include file="$tpl_dir./breadcrumb.tpl"}

{include file="$tpl_dir./errors.tpl"}

{if !isset($errors) OR !sizeof($errors)}
	<h1>{l s='List of products by supplier:'}&nbsp;{$supplier->name|escape:'htmlall':'UTF-8'}</h1>
	{if !empty($supplier->description)}
		<div class="description_box">
			<p>{$supplier->description}</p>
		</div>
	{/if}

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
	<p class="warning">{l s='No products for this manufacturer.'}</p>
	{/if}
{/if}
