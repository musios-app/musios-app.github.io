---
layout: default
title: Songwriting Coach Skill
description: Beta. A songwriting coach for Claude where you write the lyrics and keep creative control. It includes over 40 checks on narrative arc, rhyme, rhythm, singability, tense, pronouns, and more. Start with a first idea, or from polished lyrics that you've written, or anywhere between.
tagline: "BETA: A coach for song lyrics, from a first idea to a finished draft."
icon: images/icon.svg
software:
  categories: [Music, Songwriting, Lyrics]
  version: "0.2.1"
  download: /projects/songwriting-coach/downloads/songwriting-coach.skill
---

## Songwriting Coach Skill  {#songwriting-coach-skill}


<span class="badge text-bg-warning ms-3">BETA</span> New features are still being added and tested. Send suggestions and feedback to [songwriting-coach@musios.app](mailto:songwriting-coach@musios.app).

The Songwriting Coach helps you write and improve song lyrics from a first idea to a finished draft. It assists you in the way that a songwriting teacher would: observations, critique, and probing questions. The songwriting coach pairs with the Lyrics & Chords skill which helps read and save a wide range of songwriting documents.

***With the Songwriting Coach, you are the songwriter and you hold creative control.  The coach is instructed not to write lyrics unless you request that.***


<style>
  .gs-start { position: relative; border: 1px solid #e8e6dc; border-radius: 24px; background: #f8f8fa; padding: 16px 20px 10px; margin: 1rem 0 1rem; clear: both; }
  .gs-note { color: #5d5a55; font-size: .85rem; margin-top: .6rem; padding-top: .5rem; border-top: 1px solid #e8e6dc; }
  .gs-steps { display: grid; grid-template-columns: repeat(3, 1fr); gap: 14px; margin: 10px 0 8px; padding: 0; list-style: none; }
  .gs-intro { margin-right: 80px; min-height: 67px; display: flex; flex-direction: column; justify-content: center; }
  .gs-intro > div { line-height: 1.25; }
  .gs-title { display: block; color: var(--gs-text, #b83eaa); font-weight: 700; font-size: 1.2em; line-height: 1.25; }
  .gs-dl-table th, .gs-dl-table td { padding: .35rem .75rem !important; }
  .gs-dl { color: var(--gs-text, #b83eaa) !important; font-weight: 700; text-decoration: none; overflow-wrap: anywhere; }
  .gs-dl:hover { color: var(--gs-hover, #9d3490) !important; text-decoration: underline; }
  .gs-steps li { background: #fff; border: 1px solid #e8e6dc; border-radius: 16px; padding: 12px 14px; }
  .gs-icon { position: absolute; top: 16px; right: 20px; width: 67px; height: 67px; }
  .gs-n { display: inline-flex; width: 26px; height: 26px; border-radius: 50%; background: var(--gs-accent, #b83eaa); color: #fff; font-weight: 700; font-size: .85rem; align-items: center; justify-content: center; margin-right: .5rem; }
  .gs-claude, .gs-chatgpt { border-color: var(--gs-accent); border-width: 2px; }
  .gs-claude .gs-steps li, .gs-chatgpt .gs-steps li { border-color: rgba(var(--gs-rgb), .75); border-width: 1px; }
  .gs-claude { --gs-accent: #d97757; --gs-rgb: 217, 119, 87; --gs-text: #b85c3e; --gs-hover: #9a4a30; }
  .gs-chatgpt { --gs-accent: #74aa9c; --gs-rgb: 116, 170, 156; --gs-text: #4f8b7b; --gs-hover: #3b6e60; }
  .gs-chatgpt code { color: var(--gs-text); }
  .gs-steps b { display: block; margin-bottom: .45rem; line-height: 1.25; }
  .gs-steps .gs-d { color: #5d5a55; font-size: .92rem; line-height: 1.25; }
  .gs-steps .gs-p { display: block; margin-top: .7rem; }
  .gs-steps .gs-p:first-child { margin-top: 0; }
  @media (max-width: 760px) { .gs-intro { display: block; margin-right: 0; min-height: 0; } .gs-start { padding: 18px 16px 14px; border-radius: 20px; } .gs-steps { grid-template-columns: 1fr; } .gs-icon { display: none; } }
</style>
<div class="gs-start gs-claude">
  <img class="gs-icon" src="images/claude-icon.svg" alt="Claude" width="67" height="67">
  <div class="gs-intro">
    <b class="gs-title">Installation for Claude</b>
  </div>
  <ol class="gs-steps">
    <li><b><span class="gs-n">1</span>Download the files</b>
    <span class="gs-d"><span class="gs-p"><a class="gs-dl" href="downloads/songwriting-coach.skill" download>
      Download songwriting-coach.skill</a></span><span class="gs-p"><a class="gs-dl" href="/projects/lyrics-and-chords/downloads/lyrics-and-chords.skill" download>
      Download lyrics-and-chords.skill</a></span></span></li>
    <li><b><span class="gs-n">2</span>Add the skills to Claude</b><span class="gs-d"><span class="gs-p">Open claude.ai<br/>Or open Claude Desktop app (Mac or Windows)</span><span class="gs-p">Customize &gt; Skills &gt; Add &gt; Upload skill</span><span class="gs-p">Drag and drop the files together then Upload</span></span></li>
    <li><b><span class="gs-n">3</span>Start a chat with the Songwriting Coach</b><span class="gs-d"><span class="gs-p">Open a new chat and say <i>&ldquo;I want to write a song&rdquo;</i>.</span></span><div class="gs-note">Works best with Opus or Sonnet 4.5 or later.</div></li>
  </ol>
</div>

<div class="gs-start gs-chatgpt" id="chatgpt-install">
  <img class="gs-icon" src="images/chatgpt-logo.svg" alt="ChatGPT" width="67" height="67">
  <div class="gs-intro">
    <b class="gs-title">Installation for ChatGPT</b>
  </div>
  <ol class="gs-steps">
    <li><b><span class="gs-n">1</span>Add the marketplace</b><span class="gs-d"><span class="gs-p">Open ChatGPT desktop app (Mac or Windows)</span><span class="gs-p">Plugins &gt; Add plugin marketplace</span><span class="gs-p">Source: <code>musios-app/musios-ai-plugins</code></span></span></li>
    <li><b><span class="gs-n">2</span>Install the plugins</b><span class="gs-d"><span class="gs-p">Under <i>musios AI</i>, install <i>Songwriting Coach</i> and <i>Lyrics &amp; Chords</i></span></span></li>
    <li><b><span class="gs-n">3</span>Start a chat with the Songwriting Coach</b><span class="gs-d"><span class="gs-p">Open a new chat in <b style="display:inline">Work</b> mode (it works only there)</span><span class="gs-p">Say <i>&ldquo;I want to write a song&rdquo;</i></span></span></li>
  </ol>
</div>

## Coaching notes

The Songwriting Coach can help you find and sharpen a song idea. Feedback starts with what's working, and marks each point as a strength, observation, concern or issue. If you have a draft, it can review with [over 40 coaching notes](conversations/assessments-checks.html) in these groups.

* Song Idea Development
* Song Idea Assessment / Sharpening
* Upload Lyrics
* Core Assessment
* Narrative
* Song dynamics
* Super-thesaurus
* Sound and rhythm
* Perspective shifts
* Audience Check
* Continuity
* Power Positions

## Examples

The coach lets you get going from wherever you are in the songwriting process. Examples:

* [Conversation starts with lyrics](conversations/first-session.html)
* [Conversation starts from an idea](conversations/idea-first.html): a memory, a title, a phrase, a feeling.
* [Conversation starts from a question](conversations/question-first.html)
* [Conversation starts from a rhyme map](conversations/rhyme-first.html)
* [Assessments & checks](conversations/assessments-checks.html)

## Coaching behaviours

**Help** is always available to guide you through the many coaching notes above. Just ask for "Help" or "What's next?" or anything like this.

**Song status:** ask for "status" at any time to see a board of the checks run so far, with a colour for each finding. It opens in your browser and updates as you work.

You can ask the coach to change coaching style:

* Change the level of detail in its responses to Concise, Moderate or Comprehensive
* Change the coach style between Directive, Guided, and Socratic (guide by questions)

**Disagree:** disagree with the coach when you have a different view. The coach will engage and can take on and apply your perspective.


**Replies vary:** an LLM may answer the same question differently each time it is asked. This may be an advantage or annoyance.

## Models

**Claude models Opus 4.5 or Sonnet 4.5 or later are strongly recommended.**

Songwriting is a specialised use of language and structure. Tests reveal this skill works best with capable Claude models. Haiku 4.5 (as an example) is not reliable. Whatever model you use, always check its reading of your song against your own.

<!--
## Availability

✅ Tested

- claude.ai online (Chrome, Safari and other Chromium browsers)
- Claude Desktop app (macOS)
- Claude Code (macOS console)
- Claude iOS app

❓ Untested

- Claude Desktop app (Windows)
- Claude Code (Windows console)
- Claude Android app
-->

<!-- Legend: ✅ works · ❓ not tested, should work · ❌ doesn't work · 🗓️ planned · – not supported -->

<a id="installation"></a>

## Claude: installation, update, removal

**Recommendation**: install the [Lyrics & Chords skill](/projects/lyrics-and-chords/) at the same time as this skill. It adds the ability to load a wide variety of document formats.

**Claude systems**

* claude.ai online (chat or code). Note: tested with Chrome, Safari and other Chromium browsers
* Claude Desktop app (chat or code) for macOS
* Claude Desktop app (chat or code) for Windows [not tested]
* Claude iOS app (chat or code) [not tested]
* Claude Android app (chat or code) [not tested]

**Installation procedure** 

1. Download [`songwriting-coach.skill`](downloads/songwriting-coach.skill) (v0.2.1)
2. Open Customize > Skills > Add > Upload skill
3. Drag the `.skill` file into the drop zone and press Upload
4. Check the skill's toggle is on

**Update:** upload the new file the same way and confirm "Upload and replace"

**Removal:** Customize > Skills > "..." next to the skill's toggle > Delete

**Code execution** must be turned on for some features to operate

### Claude Code (Mac terminal)

It needs **Node.js 22.6 or later** on your computer.

**Installation procedure:** with Claude Code running in a terminal

1. Download [`songwriting-coach.skill`](downloads/songwriting-coach.skill) (v0.2.1)
2. Drag the file into the terminal window where Claude Code is running
3. Ask Claude to install it ("install this skill") and follow its instructions
4. Start by typing `/songwriting-coach` to load the coach. Saying "songwriting coach" or "I want to write a song" usually works too, mostly on larger models.

**Update:** drag in the new file the same way

**Removal:** delete the `~/.claude/skills/songwriting-coach/` folder

Notes:

* To install by hand, unzip the file into `~/.claude/skills/songwriting-coach/` (the folder must contain `SKILL.md`).
* A `.skill` file is a zip. Rename it to `.zip` if your unzip tool doesn't recognise it.

## ChatGPT: installation, update, removal {#chatgpt}

It works only in the ChatGPT desktop app's **Work** mode (plain Chat cannot use skills). It needs no Node.js of your own: it uses the one inside the app. The rhyme map works; the song dynamics graph does not yet. Install the [Lyrics & Chords skill](/projects/lyrics-and-chords/) at the same time.

* **Install:** Plugins > Add plugin marketplace > source `musios-app/musios-ai-plugins`, then install *Songwriting Coach* (and *Lyrics & Chords*) under *musios AI*. Then open a new chat in Work mode and say "I want to write a song". Saying "songwriting coach" alone may not load it.
* **Update:** in a Work session type: *Update my musios AI plugins to the latest versions*
* **Remove:** Plugins > Songwriting Coach > Manage > Uninstall

<!-- 
Install:

```
claude plugin marketplace add musios-app/songwriting-coach
claude plugin install songwriting-coach@musios
```

Update:

```
claude plugin marketplace update musios
claude plugin update songwriting-coach@musios
```

Remove:

```
claude plugin uninstall songwriting-coach@musios
```

Start: in a Claude Code session, type `/songwriting-coach`. It always loads the coach. Saying "songwriting coach" or "I want to write a song" usually works too, mostly on larger models.

### Claude Code in a terminal (from the `.skill` file)

1. Download `songwriting-coach.skill`.
2. Drag the file into the terminal window where Claude Code is running.
3. Ask Claude to install it ("install this skill") and follow its instructions.

- **Update:** drag in the new file the same way.
- **Remove:** delete the `~/.claude/skills/songwriting-coach/` folder.
- **Start:** type `/songwriting-coach`. It always loads the coach. Saying "songwriting coach" or "I want to write a song" usually works too, mostly on larger models.
- To install by hand, unzip the file into `~/.claude/skills/songwriting-coach/` (the folder must contain `SKILL.md`).

### Notes

- A `.skill` file is a zip. Rename it to `.zip` if your unzip tool doesn't recognise it.
- The GitHub repo is private for now: the plugin install only works for people with access to it.
-->

<!--

## Syncing between Claude environments

Most people use one place and can skip this section.

![Where an installed skill appears](site/songwriting-coach/images/sharing.svg)

- **Uploaded in claude.ai:** the skill belongs to your account, so it appears wherever you sign in: claude.ai chat and code, the desktop app's chat, and desktop Code in cloud sessions. A few minutes later the desktop app also puts a copy where Claude Code on that Mac can read it. Windows isn't tested.
- **Installed in Claude Code:** the skill stays on that computer. It appears in Claude Code in the terminal and in the desktop app's Code tab in local sessions (the ones with a laptop icon), but not in claude.ai, the desktop chat or cloud sessions.
- **Don't do both on the same Mac.** Claude Code would see two copies of the coach.

-->

## Limitations

- **Pronunciation.** The rhyme and syllable analysis uses the CMU Pronouncing Dictionary:
  - **English only.** It covers North American English pronunciation, so some rhymes that depend on accent may be judged differently.
  - **Words spelled the same but said differently** (read / read, live, lead, tear, wind, bow): the analysis may pick the wrong pronunciation.
  - **Dictionary gaps.** Slang, names, and invented words get estimated pronunciations.
- **Can't hear music.** Rhythm and singability are judged from the lyric text and whatever you describe about the melody.
- **AI has limits.** It can misread meaning, irony, or slang, and its judgements are informed opinion, not rules.
- **Can't check originality.** It can't confirm a line or title isn't close to an existing song.
- **Won't quote other songs' lyrics at length** (copyright).

## Acknowledgements

- **The CMU Pronouncing Dictionary** — Copyright (C) 1993-2015 Carnegie Mellon University. BSD-style licence: `scripts/cmudict-LICENSE.txt` in the skill. https://github.com/cmusphinx/cmudict
- **cmu-pronouncing-dictionary** (npm package, 3.0.0) — Zeke Sikelianos. ISC licence: `scripts/cmu-pronouncing-dictionary-LICENSE.txt` in the skill. The skill bundles its word list as `cmudict.json.gz`. https://github.com/words/cmu-pronouncing-dictionary
- **Fonts in the rhyme map page** — Playfair Display, Lora and JetBrains Mono, loaded from Google Fonts when the page is opened (not bundled). SIL Open Font License.

## Privacy

- Your conversation is with your AI assistant; your inputs, including lyrics, are processed by that assistant's provider to carry out the conversation.
- The skill's own analysis script runs inside that conversation and sends nothing anywhere else.
- Chat history works the same as in any other conversation with your AI assistant: saved, and subject to the same limits.

## Licence

Copyright (c) 2026 Andrew Hunt (musios). All rights reserved.

You may install and use the Songwriting Coach for your own songwriting. You may not copy, redistribute, sublicense or sell it, in original or modified form, without written permission. Full terms: `LICENSE` (also included in the skill as `LICENSE.txt`). Bundled third-party components keep their own licences, listed under Acknowledgements.
