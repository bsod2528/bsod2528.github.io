---
layout: default
title: Archive
toc: true
anchor: true
sidenav: false
---
<ul>
{% assign previous_year = "" %}
{% assign previous_month = "" %}
{% assign year_opened = false %}
{% assign month_opened = false %}

{% for post in site.posts %}
    {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
    {% capture current_month %}{{ post.date | date: "%B" }}{% endcapture %}
    {% assign words = post.content | number_of_words %}
    
    {% comment %} Handle year change {% endcomment %}
    {% if current_year != previous_year %}
        {% comment %} Close previous month list if open {% endcomment %}
        {% if month_opened %}
            </ul>
            {% assign month_opened = false %}
        {% endif %}
        
        {% comment %} Close previous year if this isn't the first post {% endcomment %}
        {% unless forloop.first %}
        </div>
        {% endunless %}
        
        {% comment %} Start new year {% endcomment %}
        <div class="year-section">
            <h2 id="{{ current_year }}">{{ current_year }}</h2>
            {% assign year_opened = true %}
    {% endif %}
    
    {% comment %} Handle month change {% endcomment %}
    {% if current_month != previous_month or current_year != previous_year %}
        {% comment %} Close previous month list if open {% endcomment %}
        {% if month_opened %}
            </ul>
        {% endif %}
        
        {% comment %} Start new month {% endcomment %}
        <h3 id="{{ current_year }}-{{ current_month }}">{{ current_month }}</h3>
        <ul>
        {% assign month_opened = true %}
    {% endif %}
    
    {% comment %} Add the post {% endcomment %}
    <li><a href="{{ post.url }}">{{ post.title }}: [<span class="cb">{{ words }} words</span>]</a></li>
    
    {% assign previous_year = current_year %}
    {% assign previous_month = current_month %}
{% endfor %}

{% comment %} Close final lists {% endcomment %}
{% if month_opened %}
</ul>
{% endif %}
{% if year_opened %}
</div>
{% endif %}