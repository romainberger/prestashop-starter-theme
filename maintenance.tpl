{*
*
*
*}

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}" lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		<meta charset="utf-8">
		{if isset($meta_description)}
			<meta name="description" content="{$meta_description|escape:'htmlall':'UTF-8'}">
		{/if}
		{if isset($meta_keywords)}
			<meta name="keywords" content="{$meta_keywords|escape:'htmlall':'UTF-8'}">
		{/if}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow">
		<link rel="shortcut icon" href="{$favicon_url}">
		<link rel="stylesheet" href="{$css_dir}maintenance.css">
	</head>
	<body>
		<div id="maintenance">
			<p><img src="{$logo_url}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}"{/if} alt="logo"></p>
			<p>{l s='In order to perform site maintenance, our online shop has shut down temporarily.'}</p>
			<p>{l s='We apologize for the inconvenience and ask that you please try again later.'}</p>
		</div>
	</body>
</html>
