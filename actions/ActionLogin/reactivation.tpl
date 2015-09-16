{assign var="noSidebar" value=true}
{include file='header.tpl'}

<script type="text/javascript">
	jQuery(document).ready(function($){
		$('#reactivation-form').bind('submit',function(){
			ls.user.reactivation('reactivation-form');
			return false;
		});
		$('#reactivation-form-submit').attr('disabled',false);
	});
</script>

<h2 class="page-header">{$aLang.reactivation}</h2>

<form action="{router page='login'}reactivation/" method="POST" id="reactivation-form">
	<p><label for="reactivation-mail">{$aLang.password_reminder_email}</label>
	<input type="text" name="mail" id="reactivation-mail" class="span3" />
	<small class="validate-error-hide validate-error-reactivation"></small></p>

	<button type="submit" name="submit_reactivation" class="btn btn-primary" id="reactivation-form-submit" disabled="disabled">{$aLang.reactivation_submit}</button>
</form>


{include file='footer.tpl'}
