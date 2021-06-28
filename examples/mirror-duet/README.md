# Mirror duet

This example project contains the fourth piece in the “4 Spiegelkanons”
compilation of four mirror duets for two violins attributed to W. A. Mozart.
A mirror duet uses a special kind of retrograde inversion that reveals its second voice by rotating the sheet by 180 degrees.
So the two performers can read from the same sheet, standing face to face.

## Project goal

I wanted to know how this piece is referenced.
I learned the piece during my violin lessens, and I still know the music by heart, but I didn't know its title and bibliographic data.
Searching for digitalized text has become relatively easy,
but written music is still digitalized in a very non-semantic manner
which makes keyword-based research remarkably difficult.
So I created a pdf for image search from my memories using [Lilypond],
a music notation markup language that helps with writing down music concisely and generating beautiful sheet music.

## Content

The Lilypond source code in _mirror-duet.ly_ outputs a corresponding pdf and midi file when it is compiled.
The pdf contains two versions of the sheet music:

- The performance version resembles the original version and is made for playing.
- The analysis version contains both voices in separate staves and makes use of repeats to shorten the notation.
  The midi file plays the analysis version.

## Decoding inversion

In contrast to the twelve-tone technique, the kind of inversion used in this piece
produces different results depending on the clef that is used for the sheet music.
A piece in the g major key using the treble clef results in the following notes when it is rotated by 180 degrees.

| note    | inverted |
| ------- | -------- |
| g       | d        |
| a       | c        |
| b       | b        |
| c       | a        |
| d       | g        |
| e       | f sharp  |
| f sharp | e        |

[lilypond]: https://lilypond.org
