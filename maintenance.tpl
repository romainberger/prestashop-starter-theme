{*
*
*
*}

<!DOCTYPE html>
<html lang="{$lang_iso}">
	<head>
		<meta charset="utf-8">
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		{if isset($meta_description)}
			<meta name="description" content="{$meta_description|escape:'htmlall':'UTF-8'}">
		{/if}
		{if isset($meta_keywords)}
			<meta name="keywords" content="{$meta_keywords|escape:'htmlall':'UTF-8'}">
		{/if}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow">
		<link rel="shortcut icon" href="{$favicon_url}">
		<link href="{$css_dir}maintenance.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="maintenance">
			<p>{l s='In order to perform site maintenance, our online shop has shut down temporarily.'}</p>
			<p>{l s='We apologize for the inconvenience and ask that you please try again later.'}</p>
		</div>
	</body>
</html>
