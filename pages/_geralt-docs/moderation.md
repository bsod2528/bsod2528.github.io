---
layout: default
title: Moderation Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Moderation Cog

A set of tools which allows moderating the server something very easy.

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Ban
{%
    include command.html
    cmd=".gban"
    req="user"
    op="reason=Not Provided"
    cmd_alias="Nil"
    cmd_desc="Teach them a lesson by banning them out."
    subcmd=false
%}

## Channel
{%
    include command.html
    cmd=".gchannel"
    cmd_alias="ch"
    cmd_desc="Manage who has access to which channels."
    subcmd=true
    sub_commands_data=site.data.geralt.channel
%}

## Ban
{%
    include command.html
    cmd=".gkick"
    req="user"
    op="reason=Not Provided"
    cmd_alias="Nil"
    cmd_desc="Teach them a lesson by kicking them out."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

## Mute
{%
    include command.html
    cmd=".gmute"
    req="user"
    op="reason=Not Provided"
    cmd_alias="Nil"
    cmd_desc="Mute toxic users."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

## Purge
{%
    include command.html
    cmd=".gpurge"
    op="limit"
    cmd_alias="cls"
    cmd_desc="Purge messages. Defaults limit to 5."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

## Setnick
{%
    include command.html
    cmd=".gsetnick"
    req="user,nick"
    cmd_alias="nick"
    cmd_desc="Change the nickname of a member."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

## Unban
{%
    include command.html
    cmd=".gunban"
    req="user"
    op="reason=Not Provided"
    cmd_alias="Nil"
    cmd_desc="Unban a user from your guild."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

## Unmute
{%
    include command.html
    cmd=".gunmute"
    req="user"
    op="reason=Not Provided"
    cmd_alias="Nil"
    cmd_desc="Unmute users."
    cooldown="Can be used 5 times every 3.0 seconds per user."
    subcmd=false
%}

{%
    include paginate.html
	back="/geralt-docs/meta.html"
	next="/geralt-docs/tags.html"
	_back="Meta Cog"
	_next="Tags Cog"
%}
