---
layout: default
title: musios.app Home
---

**musios.app** is a collection of tools, software, and documentations for music software and DAWs. The projects cover home studios and live performance.  It's all licensed as open source. Musios.app is maintained by <a href='https://github.com/andrewjhunt'>Andrew Hunt</a> with the source available through [musios-app](https://github.com/musios-app) on GitHub. Got bugs, feedback and contributions, then create an issue in the GitHub project [musios-app](https://github.com/musios-app).

<h3>Tools & Doc</h3>

<div id="project-list" class="container align-middle">
	{% for project in site.projects_homes %}
		{% assign url = project.dir | append: "/" | append: project.home | replace: ".md", ".html" %}
		{% assign url2 = url | replace: "/index.html", "/" %}

		{% for page in site.pages %}
			{% if url == page.url or url2 == page.url %}

                <div class="row my-3 d-flex align-items-center border p-3 project-row">
					<div class="col-1 d-none d-sm-block">
						<a href="{{ page.url }}">
							{% if page.image %}
								<img class="display: block; margin: auto" class="project-icon" src="{{ project.dir | append: "/" | append: page.image }}"/>
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
					<div class="col-2 d-none d-md-block">
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
