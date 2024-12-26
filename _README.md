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

## Deployment

GitHub pages deployment:

* Jekyll for rendering/publication
* `Plain-Webcomic` theme by [Plain-Webcomic theme](https://peahatlanding.github.io/Plain-Webcomic) by [Nico](https://peahatlanding.github.io/).
* Submodules for including each project

## Add a Project

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

When the submodule changes

```bash
git submodule update
```

Ref: [How to Use the Git Submodule Init and Update Commands](https://www.geeksforgeeks.org/how-to-use-the-git-submodule-init-and-update-command/)


## GitHub Action - Build & Deploy

A `git push` automatically triggers a GitHub Action to build the site with Jekyll then deploy to [https://musios.app](https://musios.app).  
Monitor progress on the [Actions page](https://github.com/musios-app/musios-app.github.io/actions).


