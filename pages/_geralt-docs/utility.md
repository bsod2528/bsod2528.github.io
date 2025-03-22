---
layout: default
title: Utility Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Utility Cog

These commands enhance the experience of being able to control your life on discord (very weird I know).

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Afk
{%
    include command.html
    cmd=".gafk"
    op="reason"
    cmd_alias="Nil"
    cmd_desc="Sets you afk globally"
    subcmd=false
%}

## Avatarhistory
{%
    include command.html
    cmd=".gavatarhistory"
    op="user=None"
    cmd_alias="avhy"
    cmd_desc="Get paginated view of all pfps of a user."
    subcmd=false
%}

## Highlight
{%
    include command.html
    cmd=".ghighlight"
    cmd_alias="hl"
    cmd_desc="Get notified by triggered words!"
    subcmd=true
    sub_commands_data=site.data.geralt.highlight
%}

## Todo
{%
    include command.html
    cmd=".gtodo"
    cmd_alias="td"
    cmd_desc="Sends todo sub-commands."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.todo
%}

## Userhistory
{%
    include command.html
    cmd=".guserhistory"
    op="user=None"
    cmd_alias="uhy"
    cmd_desc="Get entire history of a user."
    cooldown="Can be used 3 times every 15.0 seconds per user."
    subcmd=false
%}

## Userlog

Discord changed the username system from using <span class="cb">discriminators</span> to direct <span class="cb">unique</span> usernames. Hence discriminator logging won't work.
{:.deprecated}

{%
    include command.html
    cmd=".guserlog"
    cmd_alias="tg | toggle | settings"
    cmd_desc="Opt in or out for global user update logging."
    cooldown="Can be used 2 times every 15.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.userlog
%}

{%
    include paginate.html
	back="/geralt-docs/tags.html"
	next="/pages/projects/geralt.html"
	_back="Tags Cog"
	_next="Geralt"
%}
