---
layout: default
title: "Example: Unbracketed format"
sitemap: false
noindex: true
---

# Example: Unbracketed format

**Input Format:** Unbracketed format: plain text with section labels, no brackets

The labels are written plainly, as people often type them (Verse 1, Chorus, V1, CHORUS). The skill reads them as section headers. It was loaded with the title line set aside and the title given as a fact, which is what Claude does for you.

\[ [Input](#input) \]&emsp;\[ [Clean text output](#clean-text-output) \]&emsp;\[ [JSON output](#json-output) \]

## Input {#input}

{% raw %}
```text
Ballad of Lorem Ipsum

Verse 1
He sang of Lorem Ipsum
Driving her Dolorem
She stood for something wholesome
When nothing else would work

Chorus
This song is just a placeholder
Found it in some folder
So just an example
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
(repeat)

Outro
May Lorem Ipsum be your muse
```
{% endraw %}

## Output - Cleaned text {#clean-text-output}

The song written back out as readable text: section names, facts at the top, and chords above the words where there are any.

{% raw %}
```text
title: Ballad of Lorem Ipsum

Verse 1
He sang of Lorem Ipsum
Driving her Dolorem
She stood for something wholesome
When nothing else would work

Chorus
This song is just a placeholder
Found it in some folder
So just an example
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
(repeat)

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
  "notes": ["note: 6 section label(s) written without brackets were read as headers", "format: chords-over-words"],
  "setAside": ["line 1: Ballad of Lorem Ipsum"],
  "song": {
    "type": "chordSheet",
    "lines": [
      {"type": "line", "items": [{"type": "tag", "name": "title", "value": "Ballad of Lorem Ipsum", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_verse", "value": "Verse 1", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "He sang of Lorem Ipsum", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Driving her Dolorem", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "She stood for something wholesome", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When nothing else would work", "annotation": ""}]},
      {"type": "line", "items": [{"type": "tag", "name": "end_of_verse", "value": "", "attributes": {}}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "tag", "name": "start_of_chorus", "value": "Chorus", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "This song is just a placeholder", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Found it in some folder", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "So just an example", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "You’re welcome to scramble", "annotation": ""}]},
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
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "(repeat)", "annotation": ""}]},
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

[Previous: Bracket format](example-bracket-format.html) · [All examples](../#lyrics--chords-skill) · [Next: Plain text](example-plain-text.html)
