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
      %Takt 14—17
      \repeat unfold 2 {
        \tuplet 3/2 { a4 b a } \tuplet 3/2 { b c d } | \tuplet 3/2 { fis, g fis } \tuplet 3/2 { g a b }
      }
      %Takt 18—21
      c4 c g g | e' e b b | g' g d d | e e b b
      %Takt 22—29
      \repeat unfold 8 { b8 } | \repeat unfold 8 { c } | \repeat unfold 8 { d } | \repeat unfold 8 { e } | \repeat unfold 8 { fis } | \repeat unfold 8 { g } | \repeat unfold 8 { a } | \repeat unfold 8 { b }
    }
  }
  \midi {}
  \layout {}
}
