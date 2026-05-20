---
layout: default
title: you
toc: true
anchor: true
sidenav: false
collection: unrequited_love
---
# unrequited love
{% include blog_cover.html src="/assets/images/music/unrequited_love.png" %}

Bandcamp is still being setup!
{:.info}

I'm glad to announce the release of my debut ep named <span class="cb">unrequited love</span>.

Released on 20-05-2026 (dd-mm-yyyy) on all streaming platforms! Heheh.

## Songs
<ol>
    {% assign sorted_songs = site.unrequited-love | sort: "order" %}
    {% for song in sorted_songs %}
        <li><a href="{{ song.url }}">{{ song.title }}</a></li>
    {% endfor %}
</ol>

## Streaming Links
Links will be updated asap!

- [Spotify](https://open.spotify.com/album/45alOs7RNrRLIcg5GJ6Ab7)
- [YouTube Music](https://www.youtube.com/watch?v=gF1kaRTX3ZM&list=OLAK5uy_lLh5QLenn64E4AYxq0nReedtJHcuNEb2Y)
- [Apple Music](https://music.apple.com/in/album/unrequited-love-ep/1895156810)
