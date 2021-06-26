\version "2.20.0"

\header {
  title = "Vier Spiegelkanons"
  composer = "W. A. Mozart"
  instrument = "2 Violinen"
}

%Global parameters for both violin stavess
global= {
  \key g \major
  \time 2/4
  \clef "treble"
  \set Staff.midiInstrument = "violin"
}

%Music for 1st violin
violinOne = \new Voice \relative {
  \set Staff.instrumentName = #"Violin 1 "
  %Bar 1—5
  d''2 | e | d8( c) d4 | c8( b) c4 | b8( a) b4
  %Bar 6—13
  \repeat percent 2 { b8 b c16 b c b | a8( g) g( b) }
  \repeat percent 2 { b8 b a16 b a b | c8( d) d( b) }
  %Bar 14—17
  \repeat percent 2 {
    \tuplet 3/2 { a8( b a) } \tuplet 3/2 { b( c d) } | \tuplet 3/2 { fis,( g fis) } \tuplet 3/2 { g( a b) }
  }
  %Bar 18—21
  c8 c g g | e' e b b | g' g d d | e e b b
  %Bar 22—29
  \repeat tremolo 8 b16 | \repeat tremolo 8 c | \repeat tremolo 8 d | \repeat tremolo 8 e
  \repeat tremolo 8 fis | \repeat tremolo 8 g | \repeat tremolo 8 a | \repeat tremolo 8 b
  %Bar 30—37
  d,,8 d g g | e e a a | fis fis b b | g g c c | a a d d | b b e e | c c fis fis | d d g g
  %Bar 38—41
  \repeat percent 2 { d d a a | b b fis fis }
  %Bar 42—45
  \repeat percent 2 {
    \tuplet 3/2 { g8( a b) } \tuplet 3/2 { c( b c) } | \tuplet 3/2 { b( c d) } \tuplet 3/2 { e( d e) }
  }
  %Bar 46—53
  \repeat percent 2 { d8( b) b( c) | d16 e d e d8 d }
  g b b a | g16 fis g fis g8 g | g( b) b( a) | g16 fis g fis g8 g
  %Bar 54—58
  b,( g') e( d) | c( e) d( c) | b d c b | a2 | b
}

%Music for 2nd violin
violinTwo = \new Voice \relative {
  \set Staff.instrumentName = #"Violin 2 "
  %Bar 1—5
  b'2 | c | b8 a g b | a( g) fis( a) | g( fis) d( b')
  %Bar 6—13
  d, d e16 d e d | c8( b) b( d) | d d e16 d e d | c8 b b d
  \repeat percent 2 { g g fis16 g fis g | a8( b) b( g) }
  %Bar 14—17
  \repeat percent 2 {
    \tuplet 3/2 { fis8( g fis) } \tuplet 3/2 { g( a b) } | \tuplet 3/2 { a( b a) } \tuplet 3/2 { b( c d) }
  }
  %Bar 18—21
  \repeat percent 2 { e e b b | c c g g }
  %Bar 22—29
  d8 d g g | e e a a | fis fis b b | g g c c | a a d d b b e e | c c fis fis | d d g g
  %Bar 30—37
  \repeat tremolo 8 b,,16 | \repeat tremolo 8 c | \repeat tremolo 8 d | \repeat tremolo 8 e
  \repeat tremolo 8 fis | \repeat tremolo 8 g | \repeat tremolo 8 a | \repeat tremolo 8 b
  %Bar 38—41
  b8 b fis fis | g g d d | b' b fis fis | d' d a a
  %Bar 42—45
  \repeat percent 2 {
    \tuplet 3/2 { b( c d) } \tuplet 3/2 { e( d e) } | \tuplet 3/2 { g,( a b) } \tuplet 3/2 { c( b c) }
  }
  %Bar 46—53
  \repeat percent 2 { b8( g) g( a) | b16 c b c b8 b }
  \repeat percent 2 { b( d) d( c) | b16 a b a b8 b }
  %Bar 54—58
  b4 c8( b) | a4 b8( a) | g4 a8( g) | fis2 | g
}

%Configure output of performance version
\bookpart {
  \header {
    subtitle = "Performance version"
  }
  \score {
    %Unfold the repeats in the performance version in order to make it easier to play
    \unfoldRepeats {
      %Combine 1st violin with global params in a staff
      \new Staff << \global \violinOne >>
    }
    \layout { } % pdf output
    \header {
      piece = "Allegretto"
    }
  }
}

%Configure output of analysis version containing both voices in two staves
\bookpart {
  \header {
    subtitle ="Analysis version with both violins and repeats"
  }
  %pdf output with kept repeats
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

  %midi output
  \score {
    %Unfolded repeats are necessary for correct midi output
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
