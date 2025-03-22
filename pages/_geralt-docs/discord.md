---
layout: default
title: Discord Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Discord Cog

Common commands present in each bot which allow us to view basic information on user and the particular guild.

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Avatar
{%
    include command.html
    cmd=".gavatar"
    op="user=None"
    cmd_alias="av | dp | pp | pfp"
    cmd_desc="See the user's profile picture in an enlarged manner."
    subcmd=false
%}

## Banner
{%
    include command.html
    cmd=".gbanner"
    op="user=None"
    cmd_alias="Nil"
    cmd_desc="See the user's banner in an enlarged manner."
    subcmd=false
%}

## Ping
{%
    include command.html
    cmd=".gping"
    cmd_alias="pong"
    cmd_desc="Get proper latency timings of the bot."
    subcmd=false
%}

## Server info
{%
    include command.html
    cmd=".gserverinfo"
    cmd_alias="si | gi"
    cmd_desc="Get entire details about the guild."
    subcmd=false
%}

## Snipe
{%
    include command.html
    cmd=".gsnipe"
    cmd_alias="s"
    cmd_desc="Get edited / deleted messages."
    cooldown="Can be used 3 times every 5.0 seconds per user."
    subcmd=true
    sub_commands_data=site.data.geralt.snipe
%}

## Spotify
{%
    include command.html
    cmd=".gspotify"
    op="user=None"
    cmd_alias="sp | spot"
    cmd_desc="Get information on what a user is listening on spotify."
    subcmd=false
%}

## Userinfo
{%
    include command.html
    cmd=".guserinfo"
    op="user=None"
    cmd_alias="ui | user"
    cmd_desc="Get information on what a user."
    subcmd=false
%}

{%
    include paginate.html
	back="/geralt-docs/developer.html"
	next="/geralt-docs/fun.html"
	_back="Developer Cog"
	_next="Fun Cog"
%}
