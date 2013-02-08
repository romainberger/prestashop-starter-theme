{*
*
*
*}

{* The following lines allow translations in back-office and has to stay commented

	{l s='Monday'}
	{l s='Tuesday'}
	{l s='Wednesday'}
	{l s='Thursday'}
	{l s='Friday'}
	{l s='Saturday'}
	{l s='Sunday'}
*}

<span id="store_hours">{l s='Hours:'}</span>
<table>
	{foreach from=$days_datas  item=one_day}
		<tr>
			<td>{l s=$one_day.day}</td><td>{$one_day.hours}</td>
		</tr>
	{/foreach}
</table>
