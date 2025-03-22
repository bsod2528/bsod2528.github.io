---
layout: default
title: Tags Cog
toc: true
anchor: true
sidenav: true
collection: geralt_docs
---
# Tags Cog

A simple way to send a particular content upon being requested multiple times or to send content for trolling to. Either way, it is very useful

<span class="cb">&lt;arg&gt;</span> = required argument.<br>
<span class="cb">[arg]</span> = optional argument.<br>
No need to type out <> and [].
{:.info}

## Tag Delete
{%
    include command.html
    cmd=".gtag delete"
    req="tag_name"
    cmd_alias="remove"
    cmd_desc="Delete a tag you own in a guild."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag Import
{%
    include command.html
    cmd=".gtag import"
    op="flag"
    cmd_alias="Nil"
    cmd_desc="Import tags from other guilds."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    flags="--tag | --guild"
    flags_desc="Tag ID and then Guild ID"
    example=".gtag import [--tag &lt;int&gt; --guild &lt;int&gt;]"
    subcmd=false
%}

## Tag Make
{%
    include command.html
    cmd=".gtag make"
    cmd_alias="add"
    cmd_desc="Make a tag."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag List
{%
    include command.html
    cmd=".gtag list"
    op="user"
    cmd_alias="l"
    cmd_desc="Get a list of all tags owned by a user in a guild. Defaults user to you."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag Raw
{%
    include command.html
    cmd=".gtag raw"
    req="tag_name"
    cmd_alias="r"
    cmd_desc="See the tag without any markdown present."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag Transfer
{%
    include command.html
    cmd=".gtag transfer"
    req="tag_id,user"
    cmd_alias="Nil"
    cmd_desc="Transfer a tag you own to another user in a guild."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag All
{%
    include command.html
    cmd=".gtag all"
    cmd_alias="Nil"
    cmd_desc="Get a list of all tags present in a guild."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag Edit
{%
    include command.html
    cmd=".gtag edit"
    req="tag_id,edited_content"
    cmd_alias="Nil"
    cmd_desc="Edit a tags content which you own in a guild."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

## Tag Info
{%
    include command.html
    cmd=".gtag info"
    req="tag_name"
    cmd_alias="Nil"
    cmd_desc="Get entire details of a tag in a guild."
    cooldown="Can be used 5 times every 5.0 seconds per user."
    subcmd=false
%}

{%
    include paginate.html
	back="/geralt-docs/moderation.html"
	next="/geralt-docs/utility.html"
	_back="Moderation Cog"
	_next="Utility
     Cog"
%}
