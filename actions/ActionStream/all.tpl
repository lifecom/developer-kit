{assign var="noSidebar" value=true}
{include file='header.tpl' menu="stream"}

<div class="page-header">
	<h1>{$aLang.stream_menu}</h1>
</div>

{if count($aStreamEvents)}
	<ul class="list-unstyled stream-list" id="stream-list">
		{include file='actions/ActionStream/events.tpl'}
	</ul>

    {if !$bDisableGetMoreButton}
        <input type="hidden" id="stream_last_id" value="{$iStreamLastId}" />
        <a class="btn btn-success btn-lg btn-block" id="stream_get_more" href="javascript:ls.stream.getMoreAll()">{$aLang.stream_get_more} &darr;</a>
    {/if}
{else}
    {$aLang.stream_no_events}
{/if}


{include file='footer.tpl'}
