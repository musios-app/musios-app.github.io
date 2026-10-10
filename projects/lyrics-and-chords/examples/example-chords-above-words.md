---
layout: default
title: "Example: Chords above words"
sitemap: false
noindex: true
---

# Example: Chords above words

**Input Format:** Chords above words, with [Header] lines

Each chord line sits above the lyric line it belongs to. Each chord is attached to the word it sits over, by column. It was loaded with the title line set aside and the title given as a fact, which is what Claude does for you.

\[ [Input](#input) \]&emsp;\[ [Clean text output](#clean-text-output) \]&emsp;\[ [JSON output](#json-output) \]

## Input {#input}

{% raw %}
```text
Ballad of Lorem Ipsum

[Verse 1]
Am         F
He sang of Lorem Ipsum
C           G
Driving her Dolorem
Am            F
She stood for something wholesome
C            G
When nothing else would work

[Chorus]
F                 C
This song is just a placeholder
G                Am
Found it in some folder
C          F
So just an example
G                 C
You’re welcome to scramble

[Verse 2]
His song had a second verse
It could have been worse
If he forgot his chorus
He’d ruin something flawless

[Bridge]
When Lorem filled the page
He’d start to engage
With words to take her place
But lose her pretty face

[Chorus]
(repeat)

[Outro]
May Lorem Ipsum be your muse
```
{% endraw %}

## Output - Cleaned text {#clean-text-output}

The song written back out as readable text: section names, facts at the top, and chords above the words where there are any.

{% raw %}
```text
title: Ballad of Lorem Ipsum

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
  "notes": ["format: ultimate-guitar"],
  "setAside": ["line 1: Ballad of Lorem Ipsum"],
  "song": {
    "type": "chordSheet",
    "lines": [
      {"type": "line", "items": [{"type": "tag", "name": "title", "value": "Ballad of Lorem Ipsum", "attributes": {}}]},
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

[Previous: Plain text](example-plain-text.html) · [All examples](../#lyrics--chords-skill) · [Next: Word documents](example-word-documents.html)
