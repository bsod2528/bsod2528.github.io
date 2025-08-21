---
layout: default
title: Blog
toc: false
anchor: false
sidenav: false
---
# Blogs

The listed blogs are the latest 3, check out [Archives](/pages/archive.html) to check out all the blogs I've written.
{:.info}

If you want to see the tags and stuff, click here: [Tags](/pages/tags.html)
{:.info}

I don't check grammer here (hehe). I just type whatever I feel that's the whole point of a blog. 

If you want to subscribe to when I publish a new blog, signup below! Don't worry, all your data is safe as I use MailChimp for this! (Scroll to the bottom)

Or you could subscribe using my RSS page if you feel like that's a better way!

<div class="blog-wrapper">
    {% for post in site.posts limit:3 %}
        <div class="card">
            <div class="b-media-wrapper">
                <img class="b-media" src="{{ post.media }}">
            </div>
            <h1><a href="{{ post.url }}">{{ post.title }}</a></h1>
            <div class="b-metadata">
                <b>On:</b> {{ post.date | date_to_string }}
                <br>
                {% if post.tags.size > 1 %}
                    <b>Tags:</b>
                    {% for tag in post.tags %}
                        <a href="/pages/tags.html#{{tag}}"><span class="b-tag">{{ tag }}</span></a>
                        {% unless forloop.last %}|{% endunless %}
                    {% endfor %}
                {% else %}
                    <b>Tag:</b>
                    <a href="/pages/tags.html#{{post.tags}}"><span class="b-tag">{{ post.tags | join: ' | ' }}</span></a>
                {% endif %}
                <br>
                <b>Reading Time:</b>
                {% assign words = post.content | number_of_words %}
                {% assign reading_time = words | divided_by:200 %}
                {% if reading_time == 1 %}
                    <span class="cb">{{ reading_time }} min</span> [<span class="gta">{{ words }} words</span>]
                {% elsif reading_time < 1 %}
                    Less than a minute
                {% else %}
                    <span class="cb">{{ reading_time }} mins</span> [<span class="gta">{{ words }} words</span>]
                {% endif %}
            </div>
            <br>
            <div class="b-excerpt">
                <div class="b-excerpt-content">
                    {{ post.excerpt }}
                </div>
            </div>
        </div>
    {% endfor %}

    {% include signup_to_newsletter.html %}
</div>
