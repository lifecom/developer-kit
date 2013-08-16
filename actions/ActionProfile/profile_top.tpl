<div class="profile">
	{hook run='profile_top_begin' oUserProfile=$oUserProfile}
	
	<a href="{$oUserProfile->getUserWebPath()}"><img src="{$oUserProfile->getProfileAvatarPath(64)}" alt="{$oUserProfile->getLogin()}" class="avatar" itemprop="photo" /></a>
	
	
	<div id="vote_area_user_{$oUserProfile->getId()}" class="pull-right vote {if $oUserProfile->getRating()>=0}vote-count-positive{else}vote-count-negative{/if} {if $oVote} voted {if $oVote->getDirection()>0}voted-up{elseif $oVote->getDirection()<0}voted-down{/if}{/if}">
		<small>
			<div class="text-muted vote-label">{$aLang.user_rating}</div>
			<a href="#" class="vote-down" onclick="return ls.vote.vote({$oUserProfile->getId()},this,-1,'user');"><span class="glyphicon glyphicon-thumbs-down"></span></a>
			<div id="vote_total_user_{$oUserProfile->getId()}" class="vote-count count" title="{$aLang.user_vote_count}: {$oUserProfile->getCountVote()}">{if $oUserProfile->getRating() > 0}+{/if}{$oUserProfile->getRating()}</div>
			<a href="#" class="vote-up" onclick="return ls.vote.vote({$oUserProfile->getId()},this,1,'user');"><span class="glyphicon glyphicon-thumbs-up"></span></a>
		</small>
	</div>
	
	
	<div class="pull-right strength">
		<small>
			<div class="text-muted vote-label">{$aLang.user_skill}</div>
			<div class="text-info count" id="user_skill_{$oUserProfile->getId()}">{$oUserProfile->getSkill()}</div>
		</small>
	</div>
	
	<h1 class="user-login word-wrap {if !$oUserProfile->getProfileName()}no-user-name{/if}" itemprop="nickname">{$oUserProfile->getLogin()}</h1>
	
	{if $oUserProfile->getProfileName()}
		<p class="text-muted user-name" itemprop="name">{$oUserProfile->getProfileName()|escape:'html'}</p>
	{/if}
	
	{hook run='profile_top_end' oUserProfile=$oUserProfile}
</div>
