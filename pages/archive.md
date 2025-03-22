---
layout: default
title: Archive
toc: true
anchor: false
sidenav: false
---

<ul>
    {% assign previous_year = "" %}
    {% assign previous_month = "" %}

    {% for post in site.posts %}
        {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
        {% capture current_month %}{{ post.date | date: "%B" }}{% endcapture %}
        {% assign words = post.content | number_of_words %}

        {% if current_year != previous_year %}
            {% unless forloop.first %}</ul>{% endunless %}

            <h2 id="{{ current_year }}"> {{ current_year }} </h2>
            <ul>
        {% endif %}

        {% if current_month != previous_month or current_year != previous_year %}
            {% unless forloop.first %}</ul>{% endunless %}
            <h3 id="{{ current_year }}-{{ current_month }}">{{ current_month }}</h3>
            <ul>
        {% endif %}

        <li><a href="{{ post.url }}">{{ post.title }}: [<span class="cb">{{ words }} words</span>]</a></li>

        {% assign previous_year = current_year %}
        {% assign previous_month = current_month %}
    {% endfor %}
</ul>
