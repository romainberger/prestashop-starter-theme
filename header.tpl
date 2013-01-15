{*
*
*
*}

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="{$lang_iso}"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="{$lang_iso}"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="{$lang_iso}"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="{$lang_iso}"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}">
	{/if}
	{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}">
	{/if}
		<meta http-equiv="content-language" content="{$meta_language}">
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow">
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}">
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}">
		<script >
			var baseDir = '{$content_dir}',
				baseUri = '{$base_uri}',
				static_token = '{$static_token}',
				token = '{$token}',
				priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals},
				priceDisplayMethod = {$priceDisplay},
				roundMode = {$roundMode}
		</script>
	{if isset($css_files)}
		{foreach from=$css_files key=css_uri item=media}
			<link href="{$css_uri}" rel="stylesheet" media="{$media}">
		{/foreach}
	{/if}
	{if isset($js_files)}
		{foreach from=$js_files item=js_uri}
			<script src="{$js_uri}"></script>
		{/foreach}
	{/if}
		{$HOOK_HEADER}
	</head>

	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if}">
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="page">

			<!-- Header -->
			<div id="header">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>
				<div id="header_right">
					{$HOOK_TOP}
				</div>
			</div>

			<div id="columns">
				<!-- Left -->
				<div id="left_column">
					{$HOOK_LEFT_COLUMN}
				</div>

				<!-- Center -->
				<div id="center_column">
	{/if}
