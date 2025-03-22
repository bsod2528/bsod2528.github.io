---
layout: default
title: Guild Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Guild Cog

Tools for admins to manage the guild efficiently.

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Emote
{%
    include command.html
    cmd=".gemote"
    cmd_alias="em | emotes"
    cmd_desc="Group commands for emotes present in a guild."
    subcmd=true
    sub_commands_data=site.data.geralt.emote
%}

## Guild
{%
    include command.html
    cmd=".gguild"
    cmd_alias="server"
    cmd_desc="Sub-commands for basic guild settings."
    cooldown="Can be used 3 times every 20.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.guild
%}

## Prefix
{%
    include command.html
    cmd=".gprefix"
    cmd_alias="p"
    cmd_desc="Prefix related commands."
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.prefix
%}

## Stickers
{%
    include command.html
    cmd=".gstickers"
    cmd_alias="stcki | sticker"
    cmd_desc="Get information on each sticker present!"
    subcmd=false
%}

## Ticket
{%
    include command.html
    cmd=".gticket"
    cmd_alias="tt | tools"
    cmd_desc="Ticketing system for support in a guild."
    cooldown="Can be used 3 times every 5.0 seconds per user."
    concur="Can be used 1 time concurrently in a guild."
    subcmd=true
    sub_commands_data=site.data.geralt.ticket
%}

## Verification
{%
    include command.html
    cmd=".gverification"
    cmd_alias="vf | verify"
    cmd_desc="Group commands for securing your guild."
    cooldown="Can be used 3 times every 20.0 seconds per user."
    concur="Can be used 1 time concurrently in a guild."
    subcmd=true
    sub_commands_data=site.data.geralt.verification
%}

{%
    include paginate.html
	back="/geralt-docs/fun.html"
	next="/geralt-docs/listeners.html"
	_back="Fun Cog"
	_next="Listeners"
%}
