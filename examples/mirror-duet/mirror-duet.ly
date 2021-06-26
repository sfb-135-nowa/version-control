\version "2.20.0"

\header {
  title = "Vier Spiegelkanons"
  composer = "W. A. Mozart"
  instrument = "2 Violinen"
}

global= {
  \key g \major
  \time 2/4
  \clef "treble"
  \set Staff.midiInstrument = "violin"
}

violinOne = \new Voice \relative {
  \set Staff.instrumentName = #"Violin 1 "
  \relative {
    %Takt 1—5
    d''2 | e | d8( c) d4 | c8( b) c4 | b8( a) b4
    %Takt 6—13
    \repeat percent 2 { b8 b c16 b c b | a8( g) g( b) }
    \repeat percent 2 { b8 b a16 b a b | c8( d) d( b) }
    %Takt 14—17
    \repeat percent 2 {
      \tuplet 3/2 { a8( b a) } \tuplet 3/2 { b( c d) } | \tuplet 3/2 { fis,( g fis) } \tuplet 3/2 { g( a b) }
    }
    %Takt 18—21
    c8 c g g | e' e b b | g' g d d | e e b b
    %Takt 22—29
    \repeat tremolo 8 b16 | \repeat tremolo 8 c | \repeat tremolo 8 d | \repeat tremolo 8 e
    \repeat tremolo 8 fis | \repeat tremolo 8 g | \repeat tremolo 8 a | \repeat tremolo 8 b
    %Takt 30—37
    d,,8 d g g | e e a a | fis fis b b | g g c c | a a d d | b b e e | c c fis fis | d d g g
    %Takt 38—41
    \repeat percent 2 { d d a a | b b fis fis }
    %Takt 42—45
    \repeat percent 2 {
      \tuplet 3/2 { g8( a b) } \tuplet 3/2 { c( b c) } | \tuplet 3/2 { b( c d) } \tuplet 3/2 { e( d e) }
    }
    %Takt 46—53
    \repeat percent 2 { d8( b) b( c) | d16 e d e d8 d }
    g b b a | g16 fis g fis g8 g | g( b) b( a) | g16 fis g fis g8 g
    %Takt 54—58
    b,( g') e( d) | c( e) d( c) | b d c b | a2 | b
  }
}

violinTwo = \new Voice \relative {
  \set Staff.instrumentName = #"Violin 2 "
  %Takt 1—5
  b'2 | c | b8 a g b | a( g) fis( a) | g( fis) d( b')
  %Takt 6—13
  d, d e16 d e d | c8( b) b( d) | d d e16 d e d | c8 b b d
  \repeat percent 2 { g g fis16 g fis g | a8( b) b( g) }
  %Takt 14—17
  \repeat percent 2 {
    \tuplet 3/2 { fis8( g fis) } \tuplet 3/2 { g( a b) } | \tuplet 3/2 { a( b a) } \tuplet 3/2 { b( c d) }
  }
  %Takt 18—21
  \repeat percent 2 { e e b b | c c g g }
  %Takt 22—29
  d8 d g g | e e a a | fis fis b b | g g c c | a a d d b b e e | c c fis fis | d d g g
  %Takt 30—37
  \repeat tremolo 8 b,,16 | \repeat tremolo 8 c | \repeat tremolo 8 d | \repeat tremolo 8 e
  \repeat tremolo 8 fis | \repeat tremolo 8 g | \repeat tremolo 8 a | \repeat tremolo 8 b
  %Takt 38—41
  b8 b fis fis | g g d d | b' b fis fis | d' d a a
  %Takt 42—45
  \repeat percent 2 {
    \tuplet 3/2 { b( c d) } \tuplet 3/2 { e( d e) } | \tuplet 3/2 { g,( a b) } \tuplet 3/2 { c( b c) }
  }
  %Takt 46—53
  \repeat percent 2 { b8( g) g( a) | b16 c b c b8 b }
  \repeat percent 2 { b( d) d( c) | b16 a b a b8 b }
  %Takt 54—58
  b4 c8( b) | a4 b8( a) | g4 a8( g) | fis2 | g
}

\bookpart {
  \header {
    subtitle = "Performance version"
  }
  \score {
    \unfoldRepeats {
      \new Staff << \global \violinOne >>
    }
    \layout { }
    \header {
      piece = "Allegretto"
    }
  }
}

\bookpart {
  \header {
    subtitle ="Analysis version with both violins and repeats"
  }
  \score {
    \new StaffGroup <<
      \new Staff << \global \violinOne >>
      \new Staff << \global \violinTwo >>
    >>
    \layout { }
    \header {
      piece = "Allegretto"
    }
  }

  \score {
    \unfoldRepeats {
      \new StaffGroup <<
        \new Staff << \global \violinOne >>
        \new Staff << \global \violinTwo >>
      >>
    }
    \midi { }
    \header {
      piece = "Allegretto"
    }
  }
}
