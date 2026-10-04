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

The Spotify playlist tool (`projects/spotify-playlist-to-gigperformer`) is a Vite project.
`_plugins/spotify-gp-vite-build.rb` rebuilds it before every local render, but only if `node_modules` exists in that folder.
Otherwise it prints "Skipping ... build" and the site uses whatever `tool/` is already on disk.
To rebuild it locally, run `npm install` in that folder first.
Production does not use this plugin (see Deployment).

Ref: [Running Jekyll locally with SSL](https://claytonerrington.com/blog/securing-jekyll-with-ssl-locally/)

Ref: [How to set up a GitHub pages website on a Mac](https://open-research.gemmadanks.com/tutorials/how-to-set-up-github-pages-website/)

## Deployment

GitHub pages deployment:

* Jekyll for rendering/publication
* Custom theme that uses Material UI and Bootstrap
* Submodules for including each project (one exception: see "Projects that are plain folders")

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
git add projects/<repo-name>
git commit -m 'add new submodule <repo-name>' .gitmodules projects/<repo-name>
git push
```


### Updating when the submodule changes

**Changes do not propagate automatically.** 

So, when the submodule changes...

```bash
cd projects/<module>
git submodule update
```


### Projects that are plain folders

`projects/songwriting-coach/` is a normal folder, not a submodule, because its source repo is private.
It holds the download page (`index.md`, with `sitemap: false`) and the `.skill` files in `downloads/`.
`python publish_site.py` in the songwriting-coach repo writes them on each release, so don't edit or delete them here.
It is deliberately unlisted: it is not in `projects_homes` in `_config.yml`, so it is not on the home page or in the navbar.
It is proprietary (all rights reserved), so the site's open-source licence statements don't apply to it.

### Projects hidden until they are ready

`web-sheet-music-midi` is not ready to go live (Oct 2026). It is not a submodule at the moment, and three things keep it out of the site:

* `.gitmodules`: its section was removed (the local clone stays in `projects/web-sheet-music-midi/`)
* `.gitignore`: a temporary `projects/web-sheet-music-midi/` line, so Git ignores the folder
* `_config.yml`: a temporary `"/projects/web-sheet-music-midi"` line in `exclude:`, so Jekyll doesn't build it

To bring it back:

1. Delete the temporary lines in `.gitignore` and `_config.yml` (each has a REINSTATE comment).
2. Run `git submodule add https://github.com/musios-app/web-sheet-music-midi.git projects/web-sheet-music-midi`, and check `git status` afterwards because the folder already exists.
3. Add `- dir: "/projects/web-sheet-music-midi"` with `home: "README.md"` to `projects_homes` in `_config.yml`.

## GitHub Action - Build & Deploy

A `git push` automatically triggers a GitHub Action (`.github/workflows/jekyll-gh-pages.yml`) to build the site with Jekyll then deploy to [https://musios.app](https://musios.app).  
Monitor progress on the [Actions page](https://github.com/musios-app/musios-app.github.io/actions).

How the build works:

1. Checks out the repo with submodules.
2. Sets up Node (pinned to a version in the workflow) and runs `npm install && npm run build` in `projects/spotify-playlist-to-gigperformer`. This is the only place the Vite project is built in production.
3. Builds with `actions/jekyll-build-pages`, which runs in Docker with the `github-pages` gem. Custom plugins in `_plugins/` do **not** run there.
4. Uploads and deploys the result.

Keep the action versions current. GitHub warns in the run log when an action's Node version is deprecated.

