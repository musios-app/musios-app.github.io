---
layout: default
title: musios.app Home
---

**musios.app** is a collection of tools, software, and documentations for music software and DAWs. The projects cover home studios and live performance.  It's all licensed as open source. Musios.app is maintained by <a href='https://github.com/andrewjhunt'>Andrew Hunt</a> with the source available through [musios-app](https://github.com/musios-app) on GitHub. Got bugs, feedback and contributions... then create an issue in the GitHub project [musios-app](https://github.com/musios-app).


<h3>Projects</h3>

<div id="project-list" class="container align-middle">
	{% for project in site.projects_homes %}
		{% assign url = project.dir | append: "/" | append: project.home | replace: ".md", ".html" %}
		{% for page in site.pages %}
			{% if url == page.url %}

                <div class="row m-3 d-flex align-items-center border p-3 project-row">
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div class="project-icon-container">
							<a href="{{ page.url }}">
								{% if page.image %}
									<img class="display: block; margin: auto" class="project-icon" src="{{ project.dir | append: "/" | append: page.image }}"/>
								{% else %}
									{% include musios-logo-template.svg color="white" circle-color="rgb(26, 127, 55)" class="project-icon" %}
								{% endif %}
							</a>
						</div>
					</div>
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div class="project-github-icon-container">
							{% if page.gitrepo %}
								<a href="{{ page.gitrepo }}">
									<img class="project-github-icon" src="/assets/images/github-icon.svg" style="width: 50px; height: 50px;"/>
								</a>
							{% endif %}
						</div>
					</div>
					<div class="col-9">
						<h3 class="h5"><a href="{{ page.url }}">{{ page.title }}</a></h3>
						{{ page.description }}

						{% if page.tags %}
							<div class="project-tags">
								{% assign tags_array = page.tags | split: " " %}
								{% for tag in tags_array %}
									<span class="badge badge-pill badge-primary">#{{ tag }}</span>
								{% endfor %}
							</div>
						{% endif %}
					</div>
				</div>

			{% endif %}
		{% endfor %}
	{% endfor %}
</div>
