---
layout: default
title: Managing GitHub Pages for this repo
published: false
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

The Spotify playlist tool (`projects/spotify-playlist-to-gigperformer`) is a Vite project that uses pnpm (the version is pinned in its `package.json`).
`_plugins/spotify-gp-vite-build.rb` rebuilds it before every local render, but only if `node_modules` exists in that folder.
Otherwise it prints "Skipping ... build" and the site uses whatever `tool/` is already on disk.
To rebuild it locally, run `pnpm install` in that folder first.
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

`projects/songwriting-coach/` and `projects/lyrics-and-chords/` are normal folders, not submodules. Each holds a download page (`index.md`), its sub-pages (`conversations/` or `examples/`), an `images/icon.svg` and the `.skill` files in `downloads/`. A `python publish_site.py` in the project's own repo writes them on each release, so don't edit or delete them here: edits are overwritten on the next run.

* **Songwriting Coach:** its source repo is private. It is proprietary (all rights reserved), so the site's open-source licence statements don't apply to it, and its front matter has no `gitrepo` (a GitHub link would lead to a 404).
* **Lyrics & Chords:** its source repo is `musios-app/lyrics-and-chords`, public since 18 Oct 2026 and licensed GPL-2.0-only (it bundles ChordSheetJS). The page names the source commit and offers a source zip for each version. The earlier private repo was renamed `lyrics-and-chords-old-delete-me` and is due to be deleted; the new repo's commit hashes differ from it, because the history was started afresh.

Both are listed on the home page and in the navbar, at the top of `projects_homes` in `_config.yml`, and both are marked Beta (see "Songwriting Coach and Lyrics & Chords releases" below).

### Projects hidden until they are ready

`web-sheet-music-midi` is not ready to go live (Oct 2026). It is not a submodule at the moment, and three things keep it out of the site:

* `.gitmodules`: its section was removed (the local clone stays in `projects/web-sheet-music-midi/`)
* `.gitignore`: a temporary `projects/web-sheet-music-midi/` line, so Git ignores the folder
* `_config.yml`: a temporary `"/projects/web-sheet-music-midi"` line in `exclude:`, so Jekyll doesn't build it

To bring it back:

1. Delete the temporary lines in `.gitignore` and `_config.yml` (each has a REINSTATE comment).
2. Run `git submodule add https://github.com/musios-app/web-sheet-music-midi.git projects/web-sheet-music-midi`, and check `git status` afterwards because the folder already exists.
3. Add `- dir: "/projects/web-sheet-music-midi"` with `home: "README.md"` to `projects_homes` in `_config.yml`.

`support-act` and `spotify-playlist-to-gigperformer` are hidden in a lighter way (Oct 2026). They stay submodules and their pages still work for anyone with the link, but they are not listed or indexed:

* `_config.yml`, `projects_homes`: both entries are commented out, so they are off the home page and the navbar
* `_config.yml`, `defaults`: two scopes set `noindex: true` and `sitemap: false` for their folders. That adds the `noindex` tag to the pages Jekyll processes (for example the spotify `README.html` and `Tool.html`) and removes all of their pages from `sitemap.xml`, plain static files included. It cannot add the `noindex` tag to plain static files, because they do not go through the layout
* `projects/spotify-playlist-to-gigperformer/index.html` (in the spotify repo): a `<meta name="robots" content="noindex" />` line, because the built tool at `/tool/` and the project root are static files. Vite copies the line into `tool/index.html` on every build
* `index.md`: the hidden Spotify announcement is wrapped in a Liquid comment, because crawlers follow links in `display:none` blocks
* There is no `robots.txt`, and don't add a `Disallow`: Google has to be able to fetch a page to see its `noindex`. Pages already in Google drop out only when it next crawls them

To bring them back:

1. Delete the two `defaults` scopes in `_config.yml`.
2. Uncomment the two `projects_homes` entries in `_config.yml`.
3. Remove the Liquid comment tags around the announcement in `index.md`.
4. For spotify, remove the `noindex` meta line (and its comment) from `index.html` in the spotify repo, commit and push it there, then bump the submodule pointer here.

## GitHub Action - Build & Deploy

A `git push` automatically triggers a GitHub Action (`.github/workflows/jekyll-gh-pages.yml`) to build the site with Jekyll then deploy to [https://musios.app](https://musios.app).  
Monitor progress on the [Actions page](https://github.com/musios-app/musios-app.github.io/actions).

How the build works:

1. Checks out the repo with submodules.
2. Sets up Node (pinned to a version in the workflow) and pnpm (the version comes from the submodule's `package.json`), then runs `pnpm install --frozen-lockfile && pnpm run build` in `projects/spotify-playlist-to-gigperformer`. This is the only place the Vite project is built in production.
3. Builds with `actions/jekyll-build-pages`, which runs in Docker with the `github-pages` gem. Custom plugins in `_plugins/` do **not** run there.
4. Uploads and deploys the result.

Keep the action versions current. GitHub warns in the run log when an action's Node version is deprecated.
The `ubuntu-latest` to Ubuntu 26 notice (from 19 Oct 2026) is informational: Node is pinned, so the Vite build should not change.

## Status and maintenance (parked Oct 2026)

Written when work on the site was parked, so a later session doesn't have to rediscover these.

### Gotchas on the development machine

* **Do not use `pnpm@latest`.** pnpm 12 fails under Node 22.12.0's Corepack (`MODULE_NOT_FOUND`). The spotify repo pins pnpm 10.17.1 in `packageManager`. If pnpm breaks, restore it with `corepack prepare pnpm@10.17.1 --activate`. `pnpm self-update` is refused because Corepack manages pnpm.
* **`~/.npmrc` has `legacy-peer-deps=true`.** It makes npm leave peer dependencies out of lockfiles. For npm lockfile work (`web-sheet-music-midi` still uses npm), add `--legacy-peer-deps=false`, or the lockfile loses its peer packages.
* **Dropbox Selective Sync ignores `node_modules`** (`**/node_modules/`). On another machine, run `pnpm install` (spotify) or `npm ci` before building.
* The shell used by Claude Code can't find the Ruby gems, so run `bundle` commands in your own terminal.

### web-sheet-music-midi

* Not ready to go live, so it is **not a submodule** at the moment (see "Projects hidden until they are ready" above).
* `projects/web-sheet-music-midi/` is a normal clone, and its `.git` is a pointer file to `.git/modules/projects/web-sheet-music-midi` in this repo. Moving the folder or losing this repo's `.git` breaks it.
* Local only, not in any repo: `tmp/` (UI experiments) and `test_files_IGNORE/` (test chart PDFs).
* A Dropbox sync-conflict copy of the old working tree is in `~/Dropbox/code-sync-conflict/musios-app` (about 600 MB). Nothing unique was left in it for this project, and it can be deleted.
* It uses `bootstrap-table` and `TableDnD` as vendored copies in `assets/`, so Dependabot can't track their versions.
* Its `package.json` probably has unused dependencies (`eslint-config-standard`, `@eslint/js`, `globals`), and `eslint-config-standard` sits under `dependencies`.

### Dependencies and security

* Dependabot alerts are on for all repos in the `musios-app` organisation. They only notify: no automatic update PRs are enabled. Check the Security tab of each repo, or use `gh api repos/musios-app/<repo>/dependabot/alerts?state=open`.
* This repo can't be scanned by Dependabot because `Gemfile.lock` is gitignored. Gems in the local lock had known advisories (Oct 2026). They affect only local `jekyll serve`, because production builds in GitHub's own image. `bundle update` in your own terminal refreshes them.
* Left alone on purpose in `spotify-playlist-to-gigperformer`: `eslint` 9 is flagged deprecated (the fix is a major bump), `pnpm run lint` also lints the built `tool/` output and reports many false errors (`src` alone has 15 pre-existing errors), and the README's Environment section is out of date.

### Decisions and local state

* The home page says nothing about licensing. Each project states its own licence.
* The home page says the source is available through musios-app on GitHub. That is not true of `songwriting-coach` (private source), and that project is now listed on the home page (Oct 2026), so the sentence still needs rewording.
* `assets/lightbox/lightbox-for-bootstrap5-MODIFIED.js` has an uncommitted `console.log` on purpose.
* `_plugins/spotify-gp-vite-build.rb` has an uncommitted change on purpose (Oct 2026): it only rebuilds the Vite tool when its sources are newer than `tool/index.html`, because Vite writes into `tool/`, which Jekyll watches, so each build triggered the next. It belongs to the spotify work, so don't commit it with other changes.
* `numaxpiano-midi-controller` and `support-act` show as modified (`?`) in `git status` because of untracked files inside them. They are not changes to this repo.

### Songwriting Coach and Lyrics & Chords releases

`projects/songwriting-coach/` and `projects/lyrics-and-chords/` are written by the `python publish_site.py` in each project's own repo (see "Projects that are plain folders" above). After a run:

* `git status` here should show changes only under that project's folder. Stage that folder only, never `git add -A`, and push only when asked. Home-list changes (`_config.yml`, `index.md`) are separate commits.
* Each release adds a versioned file (`songwriting-coach-<version>.skill`, about 1 MB, or `lyrics-and-chords-<version>.skill` with a `-source.zip`), updates the unversioned `.skill`, and leaves older versioned files in place. For Lyrics & Chords, keep one source zip per released version, because the zip is the GPL source offer.
* **Visibility (decided 18 Oct 2026):** both projects are listed on the home page and navbar, and their pages are public. The main page and its sub-pages (the Songwriting Coach conversations, the Lyrics & Chords examples) are all indexable, because the main page is public: they have no `noindex` or `sitemap: false`. The Lyrics & Chords example pages still carried both lines until that source change is republished, so check they are gone after the next Lyrics & Chords publish.
* **Beta:** each project's `description` starts with "Beta.", and the home list in `index.md` turns that into the yellow BETA badge. The page heading carries the same badge, and `tagline` (a front-matter field read by `_includes/header.html`, falling back to `description`) gives the banner a short "BETA: …" line. When a project leaves beta, remove "Beta." from the description, the badge from the heading, and "BETA:" from the tagline.
* Accepted on purpose, so don't review these again each release:
  * A saved page embedded in a conversation, such as `conversations/timeless-tonight-rhyme-map.html`, is a standalone file with no front matter. It doesn't go through the layout, so it has no `noindex` tag, and it is listed in `sitemap.xml`. It is linked from the iframe in its conversation page. It may also load Google Fonts, so a visitor's browser contacts Google.
  * The `.skill` files are public: the repo is public, so anyone can download them.

