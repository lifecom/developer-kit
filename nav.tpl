<nav class="nav navbar navbar-static-top">
	<div class="navbar-inner">
		<div class="container">
			{if $menu}
				{if in_array($menu,$aMenuContainers)}{$aMenuFetch.$menu}{else}{include file="menu.$menu.tpl"}{/if}
			{/if}

			{if $oUserCurrent}
				<a href="{router page='topic'}add/" class="button button-primary button-write pull-right" id="modal_write_show">{$aLang.block_create}</a>
			{/if}
		</div>
	</div>
</nav>
