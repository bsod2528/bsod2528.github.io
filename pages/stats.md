---
layout: default
title: Site Stats
toc: true
anchor: false
sidenav: false
---
# Stats

{% assign total_words = 0 %}
{% for post in site.posts %}
  {% assign post_words = post.content | number_of_words %}
  {% assign total_words = total_words | plus: post_words %}
{% endfor %}

{% if site.posts.size > 0 %}
  {% assign average_words = total_words | divided_by: site.posts.size %}
{% else %}
  {% assign average_words = 0 %}
{% endif %}

{% assign longest_post = site.posts.first %}
{% assign longest_word_count = 0 %}
{% assign shortest_post = site.posts.first %}
{% assign shortest_word_count = 9999999 %}

{% for post in site.posts %}
  {% assign word_count = post.content | number_of_words %}
  
  {% if word_count > longest_word_count %}
    {% assign longest_word_count = word_count %}
    {% assign longest_post = post %}
  {% endif %}
  
  {% if word_count < shortest_word_count %}
    {% assign shortest_word_count = word_count %}
    {% assign shortest_post = post %}
  {% endif %}
{% endfor %}

- Total posts: <span class="cb">{{ site.posts | size }}</span>
- Total tags: <span class="cb">{{ site.tags | size }}</span>
- Total words in posts: <span class="cb">{{ total_words }}</span>
- Average words per post: <span class="cb">{{ average_words }}</span>
- Longest post: [{{ longest_post.title }}]({{ longest_post.url }}) [<span class="cb">{{ longest_word_count }} words</span>]
- Shortest post: [{{ shortest_post.title }}]({{ shortest_post.url }}) [<span class="cb">{{ shortest_word_count }} words</span>]

{% include code_stats.html %}
