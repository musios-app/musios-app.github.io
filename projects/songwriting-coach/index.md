---
layout: default
title: Songwriting Coach Skill
description: Beta. A songwriting coach for Claude where you write the lyrics and keep creative control. It includes over 40 checks on narrative arc, rhyme, rhythm, singability, tense, pronouns, and more. Start with a first idea, or from polished lyrics that you've written, or anywhere between.
tagline: "BETA: A coach for song lyrics, from a first idea to a finished draft."
icon: images/icon.svg
---

<img src="images/icon.svg" alt="" class="float-end ms-3 mb-3" width="96" height="96">

## Songwriting Coach Skill <span class="badge text-bg-warning ms-3">BETA</span> {#songwriting-coach-skill}

The Songwriting Coach helps you write song lyrics, from a first idea to a finished draft. Before you have lyrics, it helps you find and sharpen an idea. Once you have a draft, it reviews it the way a songwriting teacher would: [eight assessments with over 40 checks](conversations/assessments-checks.html), covering the emotional arc, story, clichés, rhyme and rhythm, singability, point of view, continuity and where your strongest lines sit. Pick a whole assessment or just the checks you want.

Send **Feedback** to [songwriting-coach@musios.app](mailto:songwriting-coach@musios.app)

**Important:** Works best on the most capable Claude models (Opus or Sonnet, 4.5 or later). Whatever the model, check its reading of your song against your own.
{: .alert .alert-warning}

### Examples

The coach lets you get going from wherever you are in the songwriting process. Examples:

* [Conversation starts with lyrics](conversations/first-session.html)
* [Conversation starts from an idea](conversations/idea-first.html): a memory, a title, a phrase, a feeling.
* [Conversation starts from a question](conversations/question-first.html)
* [Conversation starts from a rhyme map](conversations/rhyme-first.html)
* [Assessments & checks](conversations/assessments-checks.html)

## Download {#download}

| Platform | Download |
| --- | --- |
| Claude | [songwriting-coach.skill](downloads/songwriting-coach.skill) (v2.5.8) |
{: .table .table-bordered .w-auto}

**Recommended:** also install the [Lyrics & Chords skill](../lyrics-and-chords/). It reads lyric and chord files in many more layouts (chords above words, ChordPro, Word files) and checks that no word was lost, and the coach uses it when it is installed. The coach works without it, with fewer formats. Install order doesn't matter.

## Install, update, remove

### claude.ai and the Claude Desktop app

- **Install:** download `songwriting-coach.skill` above, then Customize > Skills > + > Upload skill > select the file, and toggle it on
- **Update:** download the new `.skill` and upload it the same way, confirming "Upload and replace"
- **Remove:** Customize > Skills > "..." next to the toggle > Delete

The Code execution feature must be turned on in your Claude settings for the rhyme map and status board. Without it, the coach falls back to less accurate checks.

### Claude Code

- **Install:** unzip `songwriting-coach.skill` into `~/.claude/skills/songwriting-coach/` (the folder must contain `SKILL.md`). The rhyme and syllable script needs Node 22.6 or later.
- **Update:** replace the contents of `~/.claude/skills/songwriting-coach/` with the new version
- **Remove:** delete the `~/.claude/skills/songwriting-coach/` folder
- **Start:** type `/songwriting-coach`. It always loads the coach. Saying "songwriting coach" or "I want to write a song" usually works too, mostly on larger models.

### Notes

- Claude Desktop app and claude.ai share one skill list: install once, it appears in both.
- A `.skill` file is a zip. Rename it to `.zip` if your unzip tool doesn't recognise it.
- Claude Code keeps its own skills. Install there separately.

## Limitations

- **Pronunciation.** The rhyme and syllable analysis uses the CMU Pronouncing Dictionary:
  - **English only.** It covers North American English pronunciation, so some rhymes that depend on accent may be judged differently.
  - **Words spelled the same but said differently** (read / read, live, lead, tear, wind, bow): the analysis may pick the wrong pronunciation.
  - **Dictionary gaps.** Slang, names, and invented words get estimated pronunciations.
- **Can't hear music.** Rhythm and singability are judged from the lyric text and whatever you describe about the melody.
- **AI has limits.** It can misread meaning, irony, or slang, and its judgments are informed opinion, not rules.
- **Replies vary.** Ask the same question twice and you may get different answers, and what gets flagged can change from run to run. Treat each assessment as one reader's view, not a measurement.
- **Disagree with it.** You can, and should, push back on the coach's findings. Telling it what you intended helps it understand your song.
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
