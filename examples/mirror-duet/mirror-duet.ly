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
  }
  \midi {}
  \layout {}
}
