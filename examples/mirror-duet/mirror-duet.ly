\version "2.20.0"

\header {
  title = "Mirror duet"
  composer = "W. A. Mozart"
  instrument = "two violins"
}

\score {
  \new Staff {
    \key g \major
    \time 4/4
    \tempo "Allegro" 4 = 120
    \clef "treble"
    \set Staff.midiInstrument = "violin"
    \relative {
      %Takt 1—5
      d''1 | e1 | d4 c d2 | c4 b c2 | b4 a b2
      %Takt 6—13
      b4 b c8 b c b | a4 g g b | b4 b c8 b c b | a4 g g b
      b4 b a8 b a b | c4 d d b | b4 b a8 b a b | c4 d d b
    }
  }
  \midi {}
  \layout {}
}
