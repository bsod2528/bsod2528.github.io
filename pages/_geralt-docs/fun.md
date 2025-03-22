---
layout: default
title: Fun Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Fun Cog

Consists of commands which help you reduce your stress and try to induce joy!

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## As
{%
    include command.html
    cmd=".gas"
    req="user,message"
    op="attachment (upload a file)"
    cmd_alias="Nil"
    cmd_desc="Send a webhook message as the user you mentioned."
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=false
%}

## Click
{%
    include command.html
    cmd=".gclick"
    cmd_alias="cl | clock"
    cmd_desc="Just click the button."
    cooldown="Can be used 2 times every 5.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.click
%}

## Nitro
{%
    include command.html
    cmd=".gnitro"
    op="user=None"
    cmd_alias="Nil"
    cmd_desc="Gift a user free nitro!"
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=false
%}

## Pop
{%
    include command.html
    cmd=".gpop"
    cmd_alias="Nil"
    cmd_desc="Fidget with the buttons by popping them!"
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=false
    flags="--size"
    flags_desc="Sends that many number of buttons to pop -- limited to 25."
    example=".gpop [--size 25]"
%}

## Urban
{%
    include command.html
    cmd=".gurban"
    req="term"
    cmd_alias="Nil"
    cmd_desc="Search the Urban Dictionary."
    subcmd=false
%}

{%
    include paginate.html
	back="/geralt-docs/discord.html"
	next="/geralt-docs/guild.html"
	_back="Discord Cog"
	_next="Guild Cog"
%}
