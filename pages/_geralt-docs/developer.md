---
layout: default
title: Developer Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---

# Developer Cog

These commands are only accessible by the developer.

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Blacklist
{%
    include command.html
    cmd=".gblacklist"
    cmd_alias="bl"
    cmd_desc="Group of commands to black objects from using Geralt."
    cooldown=""
    subcmd=true
    sub_commands_data=site.data.geralt.blacklist
%}

## Dev
{%
    include command.html
    cmd=".gdev"
    cmd_alias="devmode"
    cmd_desc="Simple commands for the dev to run."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.dev
%}

## Die
{%
    include command.html
    cmd=".gdie"
    cmd_alias="sleep | snap"
    cmd_desc="Sends the bot to eternal sleep"
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## DM
{%
    include command.html
    cmd=".gdm"
    req="user,message"
    cmd_alias="Nil"
    cmd_desc="DM a user"
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Eval
{%
    include command.html
    cmd=".geval"
    req="body"
    cmd_alias="e"
    cmd_desc="Run both asynchronous and synchronous code."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Guild-fetch
{%
    include command.html
    cmd=".gguildfetch"
    req="guild"
    cmd_alias="fg"
    cmd_desc="Get entire details about the guild."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Load
{%
    include command.html
    cmd=".gload"
    req="cog"
    cmd_alias="l"
    cmd_desc="Loads the extension / cog mentioned."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Unload
{%
    include command.html
    cmd=".gunload"
    req="cog"
    cmd_alias="unl"
    cmd_desc="Unloads the extension / cog mentioned."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Reload
{%
    include command.html
    cmd=".greload"
    req="cog"
    cmd_alias="rl"
    cmd_desc="Reloads the extension / cog mentioned."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Self-Purge
{%
    include command.html
    cmd=".gload"
    req="cog"
    cmd_alias="l"
    cmd_desc="Loads the extension / cog mentioned."
    cooldown=""
    subcmd=false
%}

## SQL
{%
    include command.html
    cmd=".gsql"
    req="query"
    cmd_alias="Nil"
    cmd_desc="Run SQL queries."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

{%
    include paginate.html
	back="/pages/projects/geralt.html"
	next="/geralt-docs/discord.html"
	_back="Geralt"
	_next="Discord Cog"
%}
