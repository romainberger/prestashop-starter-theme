{*
*
*
*}

		{if !$content_only}
				</div>

<!-- Right -->
				<div id="right_column">
					{$HOOK_RIGHT_COLUMN}
				</div>
			</div>

<!-- Footer -->
			<div id="footer">
				{$HOOK_FOOTER}
				{if $PS_ALLOW_MOBILE_DEVICE}
					<p><a href="{$link->getPageLink('index', true)}?mobile_theme_ok">{l s='Browse the mobile site'}</a></p>
				{/if}
			</div>
		</div>
	{/if}
	</body>
</html>
