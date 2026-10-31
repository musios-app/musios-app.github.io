---
layout: default
title: musios.app Home
description: Musios is a collection of LLM skills, tools and guides for musicians with Claude Songwriting Coach skill, Logic Pro X scripting and speaker calibration.
tagline: A collection of tools for music creators and performers
---

**musios.app** is a collection of tools, software, and documentations for music software and DAWs. The projects cover home studios and live performance. Musios.app is maintained by <a href='https://github.com/andrewjhunt'>Andrew Hunt</a>. Open source projects are available on GitHub.

{% comment %}
TEMPORARY (Oct 2026): the Spotify project is hidden, and this announcement (already display:none) links to it.
REINSTATE: remove the comment tags around the block below.
<div class="row" style="display: none; background-color: #f8e8e8; padding: 12px 24px; border: 2px solid red; border-radius: 5px">
	<div class="col-1 text-start">
		<img class="project-icon" src="/assets/images/new-badge.svg" style="height: 50px" />
	</div>
	<div class="col-8 text-start">
		<Badge pill bg="success">
        	2025-02-17
      	</Badge>: A web version of <a href="/projects/spotify-playlist-to-gigperformer/tool">Spotify Playlist to Gig Performer .gig file</a> that aumatically creates a .Gig file.
		See the <a href="/projects/spotify-playlist-to-gigperformer/README.html">Project</a> for more information and documentation.
	</div>
</div>
{% endcomment %}


{%- comment -%} Two sections. A project is listed under "For Songwriters" when its projects_homes entry in _config.yml has group: songwriters; the rest go under "For Live and Studio Music". {%- endcomment -%}
{% assign sections = "songwriters|For Songwriters with Claude and ChatGPT,other|For Live and Studio Music" | split: "," %}
{% for section in sections %}
{% assign parts = section | split: "|" %}
<h2>{{ parts[1] }}</h2>

<div class="project-list container align-middle">
	{% for project in site.projects_homes %}
		{% assign group = project.group | default: "other" %}
		{% if group == parts[0] %}
		{% assign url = project.dir | append: "/" | append: project.home | replace: ".md", ".html" %}
		{% assign url2 = url | replace: "/index.html", "/" %}

		{% for page in site.pages %}
			{% if url == page.url or url2 == page.url %}

                {%- assign repo = page.gitrepo | remove: "https://github.com/" -%}
                {%- capture icon_html -%}
					{%- if page.icon -%}
						<img class="project-icon" src="{{ project.dir | append: "/" | append: page.icon }}" alt="{{ page.title | escape }} icon"/>
					{%- else -%}
						{% include musios-logo-template.svg color="white" circle-color="rgb(26, 127, 55)" class="project-icon" %}
					{%- endif -%}
				{%- endcapture -%}
                <div class="row my-3 d-flex align-items-center border p-3 project-row">
					{%- comment -%} Wide screens (992px and up): the icon sits in its own column on the left. {%- endcomment %}
					<div class="col-auto project-icon-col text-center d-none d-lg-block">
						<a href="{{ page.url }}">{{ icon_html }}</a>
					</div>
					<div class="col">
						{%- comment -%} A description that starts "Beta." gets the same warning badge as the project page heading, placed after the title. {%- endcomment -%}
						{%- assign desc = page.description | default: "" -%}
						{%- assign desc_start = desc | slice: 0, 5 -%}
						<h3 class="h5"><a href="{{ page.url }}">{{ page.title }}</a>{% if desc_start == "Beta." %} <span class="badge text-bg-warning ms-1">BETA</span>{% endif %}</h3>
						<div class="project-desc">
							{%- comment -%} Below 992px: the title comes first, then the icon sits at the left with the text wrapping around it, and the GitHub icon (if the project has a repo) is directly under it. {%- endcomment %}
							<div class="project-icon-inline float-start me-3 mb-1 d-lg-none text-center">
								<a href="{{ page.url }}">{{ icon_html }}</a>
								{%- if page.gitrepo %}
								<a href="{{ page.gitrepo }}" class="d-block mt-2"><img class="project-github-icon" src="/assets/images/github-icon.svg" alt="GitHub repository for {{ page.title | escape }} ({{ repo }})" style="width: 32px; height: 32px;"/></a>
								{%- endif %}
							</div>
							{%- if desc_start == "Beta." -%}
								{{ desc | remove_first: "Beta." | strip | markdownify }}
							{%- else -%}
								{{ desc | markdownify }}
							{%- endif %}
						</div>
					</div>
					<div class="col-1 d-none d-lg-block">
						<div class="project-github-icon-container">
							{% if page.gitrepo %}
								<a href="{{ page.gitrepo }}">
									<img class="project-github-icon" src="/assets/images/github-icon.svg" alt="GitHub repository for {{ page.title | escape }} ({{ repo }})" style="width: 32px; height: 32px;"/>
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
		{% endif %}
	{% endfor %}
</div>
{% endfor %}
