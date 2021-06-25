\version "2.20.0"

\header {
  title = "Scherzo-duetto (1787, postumo)"
  composer = "W. A. Mozart"
  instrument = "Per [2] violini (oboi o clarini)"
}

\score {
  \new Staff {
    \key g \major
    \time 2/4
    \tempo "Allegro moderato"
    \clef "treble"
    \set Staff.midiInstrument = "violin"
    \relative {
      %Takt 1—5
      d''2 | e | d8( c) d4 | c8( b) c4 | b8( a) b4
      %Takt 6—13
      \repeat unfold 2 { b8 b c16 b c b | a8( g) g( b) }
      \repeat unfold 2 { b8 b a16 b a b | c8( d) d( b) }
      %Takt 14—17
      \repeat unfold 2 {
        \tuplet 3/2 { a8( b a) } \tuplet 3/2 { b( c d) } | \tuplet 3/2 { fis,( g fis) } \tuplet 3/2 { g( a b) }
      }
      %Takt 18—21
      c8 c g g | e' e b b | g' g d d | e e b b
      %Takt 22—29
      \repeat unfold 8 { b16 } | \repeat unfold 8 { c } | \repeat unfold 8 { d } | \repeat unfold 8 { e }
      \repeat unfold 8 { fis } | \repeat unfold 8 { g } | \repeat unfold 8 { a } | \repeat unfold 8 { b }
      %Takt 30—37
      d,,8 d g g | e e a a | fis fis b b | g g c c | a a d d | b b e e | c c fis fis | d d g g
      %Takt 38—41
      \repeat unfold 2 { g g d d | e e b b }
      %Takt 42—45
      \repeat unfold 2 {
        \tuplet 3/2 { g8( a b) } \tuplet 3/2 { c( b c) } | \tuplet 3/2 { b( c d) } \tuplet 3/2 { e( d e) }
      }
      %Takt 46—53
      \repeat unfold 2 { d8( b) b( c) | d16 e d e d8 d }
      \repeat unfold 2 { g( b) b( a) | g16 fis g fis g8 g }
      %Takt 54—58
      d( g) e( d) | c( e) d( c) | b( d) c( b) | a2 | b
    }
  }
  \midi {}
  \layout {}
}
