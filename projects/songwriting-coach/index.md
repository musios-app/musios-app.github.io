---
layout: default
title: Songwriting Coach
description: A coach for song lyrics, from a first idea to a finished draft, for Claude.
sitemap: false
---

# Songwriting Coach

Author: Andrew Hunt (musios)

The Songwriting Coach helps you write song lyrics, from a first idea to a finished draft. Before you have lyrics, it helps you find and sharpen an idea. Once you have a draft, it reviews it the way a songwriting teacher would: eight assessments with over 40 checks, covering the emotional arc, story, clichés, rhyme and rhythm, singability, point of view, continuity and where your strongest lines sit. Pick a whole assessment or just the checks you want.

Feedback starts with what's working, marks each point as a strength, observation, concern or issue, and stays your song: the coach suggests what to look at, and only writes lines if you ask. Rhyme and syllable analysis runs in a small script inside your conversation, and it can draw an interactive rhyme map and a status board showing how far through the assessments your song is.

## Download

| Platform | Current version | Download |
|---|---|---|
| Claude (claude.ai, desktop app, Claude Code) | 2.5.1 | [songwriting-coach.skill](downloads/songwriting-coach.skill) |
| ChatGPT | 🗓️ planned | – |
| Gemini | 🗓️ planned | – |

## Availability

**Claude**
- ✅ claude.ai (web)
- ✅ Claude Code (macOS)
- ❓ Claude desktop app (macOS)
- ❓ Claude desktop app (Windows)
- ❓ Claude Code (Windows)
- ❓ Claude iOS app
- ❓ Claude Android app

**ChatGPT**
- 🗓️ ChatGPT (web, desktop, mobile)

**Gemini**
- 🗓️ Gemini app

Legend: ✅ works · ❓ not tested, should work · ❌ doesn't work · 🗓️ planned · – not supported

## Install, update, remove

### claude.ai and the Claude desktop app

- **Install:** download `songwriting-coach.skill` above, then Customize > Skills > + > Upload skill > select the file, and toggle it on
- **Update:** download the new `.skill` and upload it the same way, confirming "Upload and replace"
- **Remove:** Customize > Skills > "..." next to the toggle > Delete

The Code execution feature must be turned on in your Claude settings for the rhyme map and status board. Without it, the coach falls back to less accurate checks.

### Claude Code

- **Install:** unzip `songwriting-coach.skill` into `~/.claude/skills/songwriting-coach/` (the folder must contain `SKILL.md`). The rhyme and syllable script needs Node 22.6 or later.
- **Update:** replace the contents of `~/.claude/skills/songwriting-coach/` with the new version
- **Remove:** delete the `~/.claude/skills/songwriting-coach/` folder

### ChatGPT, Gemini

Not available yet.

### Notes

- Claude desktop app and claude.ai share one skill list: install once, it appears in both.
- A `.skill` file is a zip. Rename it to `.zip` if your unzip tool doesn't recognise it.
- Claude Code keeps its own skills. Install there separately.

## Limitations

- **Pronunciation.** The rhyme and syllable analysis uses the CMU Pronouncing Dictionary:
  - **English only.** It covers North American English pronunciation, so some rhymes that depend on accent may be judged differently.
  - **Words spelled the same but said differently** (read / read, live, lead, tear, wind, bow): the analysis may pick the wrong pronunciation.
  - **Dictionary gaps.** Slang, names, and invented words get estimated pronunciations.
- **Can't hear music.** Rhythm and singability are judged from the lyric text and whatever you describe about the melody.
- **AI has limits.** It can misread meaning, irony, or slang, and its judgments are informed opinion, not rules.
- **Can't check originality.** It can't confirm a line or title isn't close to an existing song.
- **Won't quote other songs' lyrics at length** (copyright).

## Acknowledgements

- **The CMU Pronouncing Dictionary** — Copyright (C) 1993-2015 Carnegie Mellon University. BSD-style licence: `scripts/cmudict-LICENSE.txt` in the skill. <https://github.com/cmusphinx/cmudict>
- **cmu-pronouncing-dictionary** (npm package, 3.0.0) — Zeke Sikelianos. ISC licence: `scripts/cmu-pronouncing-dictionary-LICENSE.txt` in the skill. The skill bundles its word list as `cmudict.json.gz`. <https://github.com/words/cmu-pronouncing-dictionary>
- **Fonts in the rhyme map page** — Playfair Display, Lora and JetBrains Mono, loaded from Google Fonts when the page is opened (not bundled). SIL Open Font License.

## Privacy

- Your conversation is with your AI assistant; your inputs, including lyrics, are processed by that assistant's provider to carry out the conversation.
- The skill's own analysis script runs inside that conversation and sends nothing anywhere else.
- Chat history works the same as in any other conversation with your AI assistant: saved, and subject to the same limits.

## Licence

Copyright (c) 2026 Andrew Hunt (musios). All rights reserved.

You may install and use the Songwriting Coach for your own songwriting. You may not copy, redistribute, sublicense or sell it, in original or modified form, without written permission. Full terms are in `LICENSE.txt`, included in the skill. Bundled third-party components keep their own licences, listed under Acknowledgements.
