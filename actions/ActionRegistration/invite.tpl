{assign var="noSidebar" value=true}
{include file='header.tpl'}


<h2 class="page-header">{$aLang.registration_invite}</h2>

<form action="{router page='registration'}invite/" method="POST">
	<p><label>{$aLang.registration_invite_code}:</label>
	<input type="text" name="invite_code" class="span4" /></p>

	<input type="submit" name="submit_invite" value="{$aLang.registration_invite_check}" class="btn" />
</form>


{include file='footer.tpl'}
