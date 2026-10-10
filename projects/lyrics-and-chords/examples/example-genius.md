---
layout: default
title: "Example: Genius.com"
sitemap: false
noindex: true
---

# Example: Genius.com

**Input Format:** URL of a Genius.com lyrics page

The lyrics of an old song that is out of copyright, read from its Genius.com page. The page adds its own text above the lyrics (the first two lines of the page text below), which is set aside; the title and credits come from the page. The last line holds a look-alike letter (a Cyrillic e in Because) which Genius is thought to use to mark its text; it is kept exactly as found. It was loaded with the page text set aside and the title and credits given as facts, which is what Claude does for you.

\[ [Input](#input) \]&emsp;\[ [Clean text output](#clean-text-output) \]&emsp;\[ [JSON output](#json-output) \]

## Input {#input}

The page: <https://genius.com/Guy-dhardelot-because-lyrics>

The text on that page:

{% raw %}
```text
1 Contributor
Because Lyrics
Because you come to me with naught but love
And hold my hand and lift mine eyes above
A wider world of hope and joy I see
Because you come to me

Because you speak to me in accents sweet
I find the roses waking 'round my feet
And I am led through tears and joy to thee
Because you speak to me

Because God made thee mine
I'll cherish thee through light and darkness all the time
To be and pray His love they make our love divine
Bеcause God made thee mine
```
{% endraw %}

## Output - Cleaned text {#clean-text-output}

The song written back out as readable text: section names, facts at the top, and chords above the words where there are any.

{% raw %}
```text
title: Because
artist: Guy d'Hardelot
composer: Guy d'Hardelot
lyricist: Edward Teschemacher

Because you come to me with naught but love
And hold my hand and lift mine eyes above
A wider world of hope and joy I see
Because you come to me

Because you speak to me in accents sweet
I find the roses waking 'round my feet
And I am led through tears and joy to thee
Because you speak to me

Because God made thee mine
I'll cherish thee through light and darkness all the time
To be and pray His love they make our love divine
Bеcause God made thee mine
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
  "setAside": ["line 1: 1 Contributor", "line 2: Because Lyrics"],
  "song": {
    "type": "chordSheet",
    "lines": [
      {"type": "line", "items": [{"type": "tag", "name": "title", "value": "Because", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "artist", "value": "Guy d'Hardelot", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "composer", "value": "Guy d'Hardelot", "attributes": {}}]},
      {"type": "line", "items": [{"type": "tag", "name": "lyricist", "value": "Edward Teschemacher", "attributes": {}}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Because you come to me with naught but love", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "And hold my hand and lift mine eyes above", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "A wider world of hope and joy I see", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Because you come to me", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Because you speak to me in accents sweet", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I find the roses waking 'round my feet", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "And I am led through tears and joy to thee", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Because you speak to me", "annotation": ""}]},
      {"type": "line", "items": []},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Because God made thee mine", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "I'll cherish thee through light and darkness all the time", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "To be and pray His love they make our love divine", "annotation": ""}]},
      {"type": "line", "items": [{"type": "chordLyricsPair", "chords": "", "chord": null, "lyrics": "Bеcause God made thee mine", "annotation": ""}]},
      {"type": "line", "items": []}
    ]
  }
}
```
{% endraw %}

[Previous: ChordPro](example-chordpro.html) · [All examples](../#lyrics--chords-skill) · [Next: Ultimate Guitar](example-ultimate-guitar.html)
