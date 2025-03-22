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
    {% for post in tag[1] %}
- [{{ post.title }}]({{ post.url }}): [<span class="cb">{{ post.content | number_of_words }} words</span>]
    {% endfor %}
{% endfor %}
