---
layout: default
title: Managing GitHub Pages for this repo
---

# Managing GitHub Pages for this repo

The `musios-app.github.io` repo is the primary content for the [musios.app](https://musios.app) site with:

* Home page
* Site style
* Site navigation
* Acts as a container for project to be added

## Local development

Setup: see the reference to get `ruby`, `gem`, `bundler` etc installed

Run the local Jekyll development environment with all the config files included.

```bash
# HTTP server
bundle exec jekyll serve --config _config.yml

# with HTTPS/SSL
bundle exec jekyll serve --ssl-key .localhost-ssl/key.pem --ssl-cert .localhost-ssl/cert.pem
```

Ref: [Running Jekyll locally with SSL](https://claytonerrington.com/blog/securing-jekyll-with-ssl-locally/)

Ref: [How to set up a GitHub pages website on a Mac](https://open-research.gemmadanks.com/tutorials/how-to-set-up-github-pages-website/)

## Deployment

GitHub pages deployment:

* Jekyll for rendering/publication
* Custom theme that uses Material UI and Bootstrap
* Submodules for including each project

## Managing (sub-) Project

Ref: [How to Use the Git Submodule Init and Update Commands](https://www.geeksforgeeks.org/how-to-use-the-git-submodule-init-and-update-command/)

### Add the project to /projects

Copy the Git URL for the project/repo to be added.

```bash
cd projects
git submodule add <repository-url>
git submodule init
git submodule update --remote
```

Now add the content to this Git repo

```bash
# Return to the project root
cd ..
git add project/<repo-name>
git commit -m 'add new submodule <repo-name>' .gitmodules projects/<repo-name>
git push
```


### Updating when the submodule changes

**Changes do not propagate automatically.** So, when the submodule changes...

```bash
cd projects/<module>
git submodule update
```


## GitHub Action - Build & Deploy

A `git push` automatically triggers a GitHub Action to build the site with Jekyll then deploy to [https://musios.app](https://musios.app).  
Monitor progress on the [Actions page](https://github.com/musios-app/musios-app.github.io/actions).

