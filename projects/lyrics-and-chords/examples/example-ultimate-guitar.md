---
layout: default
title: "Example: Ultimate Guitar"
sitemap: false
noindex: true
---

# Example: Ultimate Guitar

**Input Format:** URL of an Ultimate Guitar chords page

A traditional song, which is out of copyright, read from its Ultimate Guitar chords page. This version has chords above the words and no section headers, so the skill finds no sections. The title, the tempo (145 bpm) and the artist (listed on the page as Misc Traditional) come from the page, not from the chord text.

\[ [Input](#input) \]&emsp;\[ [Clean text output](#clean-text-output) \]&emsp;\[ [JSON output](#json-output) \]

## Input {#input}

The page: <https://tabs.ultimate-guitar.com/tab/misc-traditional/when-the-saints-go-marching-in-chords-1764942>

The text on that page:

{% raw %}
```text
C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
  C                  F
I want to be, in that number.
         C         G7       C
When the saints go marching in.

C
And when the sun, refuse to shine.
                           G7
And when the sun refuse to shine.
        C                  F
I still want to be, in that number.
         C    G7       C
When the sun refuse to shine.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
    C                        F
I'm gonna to sing, as loud as thunder.
            C         G7       C
Oh when the saints go marching in.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
  C                  F
I want to be, in that number.
         C         G7       C
When the saints go marching in.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
        C                  F
I still want to be, in that number.
         C     G7      C
When the sun refuse to shine.
```
{% endraw %}

## Output - Cleaned text {#clean-text-output}

The song written back out as readable text: section names, facts at the top, and chords above the words where there are any.

{% raw %}
```text
title: When the Saints Go Marching In
artist: Traditional
tempo: 145 bpm

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
  C                  F
I want to be, in that  number.
         C         G7       C
When the saints go marching in.

C
And when the sun, refuse to shine.
                           G7
And when the sun refuse to shine.
        C                  F
I still want to be, in that  number.
         C    G7       C
When the sun refuse to shine.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
    C                        F
I'm gonna to sing, as loud as  thunder.
            C         G7       C
Oh when the saints go marching in.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
  C                  F
I want to be, in that  number.
         C         G7       C
When the saints go marching in.

C
Oh when the saints, go marching in.
                            G7
When the saints go marching in.
        C                  F
I still want to be, in that  number.
         C     G7      C
When the sun refuse to shine.
```
{% endraw %}

## Output - Formatted (JSON) {#json-output}

What the skill returns: one JSON object, with one line of the song on each row below.

{% raw %}
```json
{
  "status": "needs-info",
  "missing": ["date"],
  "questions": ["When was it written or published?"],
  "problems": [],
  "notes": ["format: chords-over-words"],
  "setAside": [],
  "song": {
    "type": "chordSheet",
    "lines": [
      {"type": "line", "items": [{"type": "tag", "name": "title", "value": "When the Saints Go Marching In", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "artist", "value": "Traditional", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "tempo", "value": "145 bpm", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "Oh ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "when the saints, go marching in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the saints go marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "want ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to be, in that", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": " ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "number.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "saints ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "go ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "And ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "when the sun, refuse to shine.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "And when the sun refuse to ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "shine.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I still ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "want ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to be, in that", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": " ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "number.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "sun ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "r", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "efuse ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "shine.", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "Oh ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "when the saints, go marching in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the saints go marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I'm ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "gonna ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to sing, as loud as", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": " ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "thunder.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Oh when the ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "saints ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "go ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "Oh ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "when the saints, go marching in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the saints go marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "want ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to be, in that", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": " ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "number.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "saints ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "go ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "Oh ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "when the saints, go marching in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the saints go marching ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "in.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I still ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "want ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to be, in that", "annotation": ""}, {"type": "chordLyricsPair", "chords": "F", "chord": null, "lyrics": " ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "number.", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "When the ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "sun ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "re", "annotation": ""}, {"type": "chordLyricsPair", "chords": "G7", "chord": null, "lyrics": "fuse ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "to ", "annotation": ""}, {"type": "chordLyricsPair", "chords": "C", "chord": null, "lyrics": "shine.", "annotation": ""}]},
      {"type": "line", "items": []}
    ]
  }
}
```
{% endraw %}

[Previous: Genius.com](example-genius.html) · [All examples](../#lyrics--chords-skill) · [Next: Bracket format](example-bracket-format.html)
