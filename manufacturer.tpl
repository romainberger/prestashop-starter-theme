{*
*
*
*}

{include file="$tpl_dir./breadcrumb.tpl"}

{include file="$tpl_dir./errors.tpl"}

{if !isset($errors) OR !sizeof($errors)}
	<h1>{l s='List of products by manufacturer'}&nbsp;{$manufacturer->name|escape:'htmlall':'UTF-8'}</h1>
	{if !empty($manufacturer->description) || !empty($manufacturer->short_description)}
		<div class="description_box">
			{if !empty($manufacturer->short_description)}
				<p>{$manufacturer->short_description}</p>
				<p class="hide_desc">{$manufacturer->description}</p>
				<a href="#" class="lnk_more" onclick="$(this).prev().slideDown('slow'); $(this).hide(); return false;">{l s='More'}</a>
			{else}
				<p>{$manufacturer->description}</p>
			{/if}
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
