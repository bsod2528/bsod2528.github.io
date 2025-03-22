---
layout: default
title: Meta Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Meta Cog

Bunch of commands which don't fit into any one particular cog, thus meta was born!

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Google
{%
    include command.html
    cmd=".ggoogle"
    req="query"
    cmd_alias="g | web"
    cmd_desc="Search Google for anything."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Help
{%
    include command.html
    cmd=".ghelp"
    op="command=None"
    cmd_alias="Nil"
    cmd_desc="Sends the main help menu."
    subcmd=false
%}

## Info
{%
    include command.html
    cmd=".ginfo"
    cmd_alias="about"
    cmd_desc="Receive full information regarding me."
    cooldown="Can be used 2 times every 10.0 seconds per user."
    subcmd=false
%}

## Invite
{%
    include command.html
    cmd=".ginvite"
    cmd_alias="inv"
    cmd_desc="Get various invite links for me."
    subcmd=false
%}

## Json
{%
    include command.html
    cmd=".gjson"
    op="message"
    cmd_alias="raw"
    cmd_desc="Get JSON data for a message."
    cooldown="Can be used 1 times every 5.0 seconds per user."
    subcmd=false
%}

## Report
{%
    include command.html
    cmd=".greport"
    cmd_alias="r"
    cmd_desc="Report a bug or request a feature."
    cooldown="Can be used 1 times every 20.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.report
%}

## Source
{%
    include command.html
    cmd=".gsource"
    op="command=None"
    cmd_alias="src"
    cmd_desc="Returns source for a command."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=false
%}

## Uptime
{%
    include command.html
    cmd=".guptime"
    cmd_alias="ut"
    cmd_desc="Sends my uptime - how long I've been online for."
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=false
%}

## Usage
{%
    include command.html
    cmd=".gusage"
    cmd_alias="cu"
    cmd_desc="Get a list of how many commands have been used here."
    subcmd=false
%}

{%
    include paginate.html
	back="/geralt-docs/listeners.html"
	next="/geralt-docs/moderation.html"
	_back="Listeners"
	_next="Moderation Cog"
%}
