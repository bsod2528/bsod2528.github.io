---
layout: default
title: what if
order: 3
toc: true
anchor: true
sidenav: false
collection: unrequited_love
credits:
  produced: "imav"
  recorded: "imav"
  mixed: "imav"
  mastered: "imav"
  composed: "imav"
---

EP Home Page: [click here](/pages/projects/unrequited-love.html)
{:.info}


# Credits
{% if page.credits %}
  <div class="credits">
    <ul>
      {% for credit in page.credits %}
        <li>
          <strong>{{ credit[0] }}</strong>
          <span class="dash">—</span>
          <span class="value">{{ credit[1] }}</span>
        </li>
      {% endfor %}
    </ul>
  </div>
{% endif %}

# Lyrics
NA - this is an instrumental.

{%
	include paginate.html
	back="/unrequited-love/ad.html"
	next="/unrequited-love/you.html"
	_back="awkward distance"
	_next="you"
%}
