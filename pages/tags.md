---
layout: default
title: Tags
toc: true
anchor: true
sidenav: false
---

{% assign sorted_tags = site.tags | sort %}
    {% for tag in sorted_tags %}
# {{ tag[0] }}
{% if tag[1].size > 1 %}
  {{ tag[1].size }} blogs
  {:.info}
{% else %}
  {{ tag[1].size }} blog
  {:.info}
{% endif %}
    {% for post in tag[1] %}
- [{{ post.title }}]({{ post.url }}): [<span class="cb">{{ post.content | number_of_words }} words</span>] - {{ post.date | date: "%B %d, %Y" }}
    {% endfor %}
{% endfor %}
