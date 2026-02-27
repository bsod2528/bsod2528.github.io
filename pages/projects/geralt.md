---
layout: default
title: Geralt
toc: true
anchor: true
sidenav: true
collection: geralt-docs
---

# Geralt

06-02-2023
{:.date-added}

GitHub Repository: [link](https://github.com/bsod2528/geralt/)
{:.info}

Geralt is a Discord bot that I created to help manage servers and provide fun and useful features to users. Here you can find the documentation for Geralt, including how to set it up and use its commands.

Started off as a simple project to impress friends which later became a

<b>Development</b> and <b>deployment</b> has been stopped. Running the latest version of Geralt might yield in errors due to multiple updates being made to the discord.py library.
{:.warning}

## Setup

- Ensure you have <span class="cb">Python 3.8</span> or more, <span class="cb">PostgreSQL</span> and <span class="cb">Git</span> installed.
- Run <span class="cb">git clone https://github.com/bsod2528/Geralt.git</span>.
- Install required packages from <a href="/assets/geralt_requirements.txt">requirements.txt</a> in a <span class="cb">venv</span>.
- Setup all the tables in PostgreSQL database named <span class="cb">geralt</span> with any role from <a href="/assets/tables.sql">tables.sql</a>.
- Now simply open up the folder in your favourite IDE and run <span class="cb">geralt.py</span>.

Default prefix is <span class="cb">.g</span>.
{:.info}

## Cogs Present
<ul>
	{% for doc in site.geralt-docs %}
		<li><a href="{{ doc.url }}">{{ doc.title }}</a></li>
	{% endfor %}
</ul>

{%
	include paginate.html
	back="/pages/ventures.html"
	next="/geralt-docs/developer.html"
	_back="Go Back"
	_next="Developer Cog"
%}
