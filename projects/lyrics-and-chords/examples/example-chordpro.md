---
layout: default
title: "Example: ChordPro"
sitemap: false
noindex: true
---

# Example: ChordPro

**Input Format:** ChordPro

ChordPro keeps the facts in {directives} and the chords inline, in square brackets before the word they sit on. The title and key are read as facts, so no title needs adding.

\[ [Input](#input) \]&emsp;\[ [Clean text output](#clean-text-output) \]&emsp;\[ [JSON output](#json-output) \]

## Input {#input}

{% raw %}
```text
{title: Ballad of Lorem Ipsum}
{key: Am}

{start_of_verse: Verse 1}
[Am]He sang of [F]Lorem Ipsum
[C]Driving her [G]Dolorem
[Am]She stood for [F]something wholesome
[C]When nothing [G]else would work
{end_of_verse}

{start_of_chorus: Chorus}
[F]This song is just [C]a placeholder
[G]Found it in some [Am]folder
[C]So just an [F]example
[G]You’re welcome to [C]scramble
{end_of_chorus}

{start_of_verse: Verse 2}
His song had a second verse
It could have been worse
If he forgot his chorus
He’d ruin something flawless
{end_of_verse}

{start_of_bridge: Bridge}
When Lorem filled the page
He’d start to engage
With words to take her place
But lose her pretty face
{end_of_bridge}

{start_of_chorus: Chorus}
{comment: repeat}
{end_of_chorus}

{start_of_part: Outro}
May Lorem Ipsum be your muse
{end_of_part}
```
{% endraw %}

## Output - Cleaned text {#clean-text-output}

The song written back out as readable text: section names, facts at the top, and chords above the words where there are any.

{% raw %}
```text
title: Ballad of Lorem Ipsum
key: Am

Verse 1
Am         F
He sang of Lorem Ipsum
C           G
Driving her Dolorem
Am            F
She stood for something wholesome
C            G
When nothing else would work

Chorus
F                 C
This song is just a placeholder
G                Am
Found it in some folder
C          F
So just an example
G                 C
You’re welcome to scramble

Verse 2
His song had a second verse
It could have been worse
If he forgot his chorus
He’d ruin something flawless

Bridge
When Lorem filled the page
He’d start to engage
With words to take her place
But lose her pretty face

Chorus
comment: repeat

Outro
May Lorem Ipsum be your muse
```
{% endraw %}

## Output - Formatted (JSON) {#json-output}

What the skill returns: one JSON object, with one line of the song on each row below.

{% raw %}
```json
{
  "status": "needs-info",
  "missing": ["credits", "date"],
  "questions": ["Who wrote or performs it (artist, lyricist or composer)?", "When was it written or published?"],
  "problems": [],
  "notes": ["format: chordpro"],
  "setAside": [],
  "song": {
    "type": "chordSheet",
    "lines": [
      {"type": "line", "items": [{"type": "tag", "name": "title", "value": "Ballad of Lorem Ipsum", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "key", "value": "Am", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_verse", "value": "Verse 1", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "Am", "chord": null, "lyrics": "He ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "sang of ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": "Lorem ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Ipsum", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "Driving ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "her ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G", "chord": null, "lyrics": "Dolorem", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "Am", "chord": null, "lyrics": "She ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "stood for ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": "something ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "wholesome", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "When ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "nothing ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G", "chord": null, "lyrics": "else ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "would work", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_verse", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_chorus", "value": "Chorus", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": "This ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "song is just ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "a ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "placeholder", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "G", "chord": null, "lyrics": "Found ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "it in some ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "Am", "chord": null, "lyrics": "folder", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "So ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "just an ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": "example", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "G", "chord": null, "lyrics": "You’re ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "welcome to ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "scramble", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_chorus", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_verse", "value": "Verse 2", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "His song had a second verse", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "It could have been worse", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "If he forgot his chorus", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "He’d ruin something flawless", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_verse", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_bridge", "value": "Bridge", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When Lorem filled the page", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "He’d start to engage", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "With words to take her place", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "But lose her pretty face", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_bridge", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_chorus", "value": "Chorus", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "comment", "value": "repeat", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_chorus", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_part", "value": "Outro", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "May Lorem Ipsum be your muse", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_part", "value": "", "attributes": {}}]},
      {"type": "line", "items": []}
    ]
  }
}
```
{% endraw %}

[All examples](../#lyrics--chords-skill) · [Next: Genius.com](example-genius.html)
