<div class="panel panel-default block" id="block_blogs">
	<div class="panel-body">
	
		<header class="block-header">
			<h3>{$aLang.block_blogs}</h3>
		</header>
	
		<div class="block-content">
			{if $oUserCurrent}
				<ul class="nav nav-pills js-block-blogs-nav">
					<li class="active js-block-blogs-item" data-type="top"><a href="#">{$aLang.block_blogs_top}</a></li>
					<li class="js-block-blogs-item" data-type="join"><a href="#">{$aLang.block_blogs_join}</a></li>
					<li class="js-block-blogs-item" data-type="self"><a href="#">{$aLang.block_blogs_self}</a></li>
				</ul>
			{/if}
			
			<div class="js-block-blogs-content">
				{$sBlogsTop}
			</div>

			<footer>
				<a href="{router page='blogs'}" class="small">{$aLang.block_blogs_all}</a>
			</footer>
		</div>
		
	</div>
</div>
