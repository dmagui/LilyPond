\version "2.18.2"
\language "english"

\header {
  title = "Hor ch‘el ciel e la terra"
  composer = "Cipriano de Rore"
  arranger = "1514/15 - 1565"
  poet = "Petrarch"
  tagline = "Fieri Consort"
}

global = {
  \key f \major
  \time 4/4
}

cantus = \relative c'' {
  \global
  % Music follows here.
  g4. g8 d'4
  
}

altus = \relative c' {
  \global
  % Music follows here.
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  
}

quintus = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c {
  \global
  % Music follows here.
  
}

cantusWords= \lyricmode {
  % Lyrics follow here.
  
}

altusWords = \lyricmode {
  % Lyrics follow here.
  
}

tenorWords = \lyricmode {
  % Lyrics follow here.
  
}

quintusWords = \lyricmode {
  % Lyrics follow here.
  
}

bassWords = \lyricmode {
  % Lyrics follow here.
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Cantus"
      \consists "Ambitus_engraver"
    } { \cantus }
    \addlyrics { \cantusWords }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Altus"
      \consists "Ambitus_engraver"
    } { \altus }
    \addlyrics { \altusWords }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorWords }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Quintus"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \quintus }
    \addlyrics { \quintusWords }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassWords }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
