---
layout: default
title: musios.app Home
---


<!--
<ul>
  {% for page in site.pages %}
    <li>{{ page.url }}</li>
    {% if page.url contains '/projects/' %}
      <li {% if page.url == page.url %}class="active"{% endif %}>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>
-->


**musios.app** is a collection of tools, software, and documentations for music software and DAWs. The projects focus on home recording, music production and live performance.  It's all licensed as open source. Musios.app is maintained <a href='https://github.com/andrewjhunt'>Andrew Hunt</a> with the source shared through [musios-app](https://github.com/musios-app) on GitHub. GitHub [musios-app](https://github.com/musios-app) is the place for reporting bugs, feedback and contributions.


<h3>Projects</h3>

<div class="container align-middle">
	{% for home in site.projects_homes %}
		{% assign url = home.src | replace: ".md", ".html" %}
		{% for page in site.pages %}
			{% if url == page.url %}

				<div class="row m-3 d-flex align-items-center border p-3">
					<div class="col-1">
						{% if page.image %}
							<img src="{{ page.image }}" style="max-height: 60px"/>
						{% else %}
							<img src="/assets/images/Musios logo - black.svg" style="max-height: 60px"/>
						{% endif %}
					</div>
					<div class="col-3">
						<b><a href="{{ page.url }}">{{ page.title }}</a></b>
					</div>
					<div class="col-8">
						{{ page.description }}
					</div>
				</div>
			{% endif %}
		{% endfor %}
	{% endfor %}
</div>
