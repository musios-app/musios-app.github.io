---
layout: default
title: musios.app Home
---

**musios.app** is a collection of tools, software, and documentations for music software and DAWs. The projects cover home studios and live performance.  It's all licensed as open source. Musios.app is maintained by <a href='https://github.com/andrewjhunt'>Andrew Hunt</a> with the source available through [musios-app](https://github.com/musios-app) on GitHub. Got bugs, feedback and contributions, then create an issue in the GitHub project [musios-app](https://github.com/musios-app).

<h3>
	<svg xmlns="http://www.w3.org/2000/svg" height="30px" viewBox="0 0 512 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="red" d="M156.6 384.9L125.7 354c-8.5-8.5-11.5-20.8-7.7-32.2c3-8.9 7-20.5 11.8-33.8L24 288c-8.6 0-16.6-4.6-20.9-12.1s-4.2-16.7 .2-24.1l52.5-88.5c13-21.9 36.5-35.3 61.9-35.3l82.3 0c2.4-4 4.8-7.7 7.2-11.3C289.1-4.1 411.1-8.1 483.9 5.3c11.6 2.1 20.6 11.2 22.8 22.8c13.4 72.9 9.3 194.8-111.4 276.7c-3.5 2.4-7.3 4.8-11.3 7.2l0 82.3c0 25.4-13.4 49-35.3 61.9l-88.5 52.5c-7.4 4.4-16.6 4.5-24.1 .2s-12.1-12.2-12.1-20.9l0-107.2c-14.1 4.9-26.4 8.9-35.7 11.9c-11.2 3.6-23.4 .5-31.8-7.8zM384 168a40 40 0 1 0 0-80 40 40 0 1 0 0 80z" /></svg>
	News
</h3>

2025-02-15: Coming soon... a web version of [Spotify Playlist to Gig Performer .gig file](/projects/spotify-playlist-to-gigperformer)

<h3>Tools & Doc</h3>

<div id="project-list" class="container align-middle">
	{% for project in site.projects_homes %}
		{% assign url = project.dir | append: "/" | append: project.home | replace: ".md", ".html" %}
		{% assign url2 = url | replace: "/index.html", "/" %}

		{% for page in site.pages %}
			{% if url == page.url or url2 == page.url %}

                <div class="row my-3 d-flex align-items-center border p-3 project-row">
					<div class="col-1 d-none d-sm-block align-items-center text-center" style="min-width: 120px">
						<a href="{{ page.url }}">
							{% if page.icon %}
								<img class="project-icon" src="{{ project.dir | append: "/" | append: page.icon }}"/>
							{% else %}
								{% include musios-logo-template.svg color="white" circle-color="rgb(26, 127, 55)" class="project-icon" %}
							{% endif %}
						</a>
					</div>
					<div class="col">
						<h3 class="h5"><a href="{{ page.url }}">{{ page.title }}</a></h3>
						{{ page.description }}
					</div>
					<div class="col-1 d-none d-md-block">
						<div class="project-github-icon-container">
							{% if page.gitrepo %}
								<a href="{{ page.gitrepo }}">
									<img class="project-github-icon" src="/assets/images/github-icon.svg" style="width: 32px; height: 32px;"/>
								</a>
							{% endif %}
						</div>
					</div>
					<div class="col-2 d-none">
						{% if page.tags %}
							<div class="project-tags">
								{% assign tags_array = page.tags | split: " " %}
								{% for tag in tags_array %}
									<span class="badge badge-pill badge-primary">#{{ tag }}</span><br/>
								{% endfor %}
							</div>
						{% endif %}
					</div>
				</div>

			{% endif %}
		{% endfor %}
	{% endfor %}
</div>
