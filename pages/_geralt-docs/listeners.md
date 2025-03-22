---
layout: default
title: Listeners
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Listeners
Function decorators which ultimately act as listeners to certain events that occur on Discord on a regular basis. Now by default, the bots don't do this,
we have to give them that power, i.e., program them in such manner.

Geralt listens to 4 major types of events:
- Errors
- Messages
- User updation
- Guild joining / leaving

## Events
### Messages
Snipe, highlight all depend on this. Both <span class="cb">on_message_edit</span> and <span class="cb">on_message_delete</span> are very crucial for these commands.

Apart from this, Geralt converts emoji urls to actual emojis using webhooks. For this, these two events are crucial.

### User Updation
Events like <span class="cb">on_user_update</span> is very crucial to log the changes that the user makes to their profile. The entire user-history command depends on this.

### Guild Join / Leave
Geralt also sends a webhook to when it joins and leaves a guild. This is done using <span class="cb">on_guild_join</span> and <span class="cb">on_guild_leave</span>.

# Error Handler
To send logs when you screw up the development process of Geralt, discord.py has a listener called <span class="cb">on_command_error</span>. I've set it in such a way that a
webhook sends a file containing the traceback.

{%
	include paginate.html
	back="/geralt-docs/guild.html"
	next="/geralt-docs/meta.html"
	_back="Guild Cog"
	_next="Meta Cog"
%}
