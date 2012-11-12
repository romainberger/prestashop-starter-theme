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
		<link href="{$css_dir}restricted-country.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="restricted-country">
			 <p><img src="{$content_dir}img/logo.jpg" alt="logo" /></p>
			 <p id="message">
				<img src="{$content_dir}img/admin/tab-tools.gif" style="margin-right:10px; float:left;" alt="" />{l s='You cannot access our store from your country. We apologize for the inconvenience.'}
			 </p>
		</div>
	</body>
</html>