\version "2.18.2"



\header {
  title = "Say, Love, If Ever Thou Didst Find"
  composer = "John Dowland"
  tagline = "Fieri Consort"
}

global = {
    \key g \major
    \time 4/4
    \partial 4
}

sopranoMusic = \relative c'' {
  \clef treble
  d4
  c b a g 
  a a g g 
  fis g a d 
  d cis d2 
  a4 b c2
  r r4 r8 b 
  a4 g fis g 
  a b a c
  b a gis a
  b c b2 
  r4 c r a 
  r b r g
  g g g g~ 
  g fis g g 
  g g g g
  g g g2
  g1 \bar "||"
}

altoMusic =  \relative c'' {
  \clef treble
  g4
  g g fis g
  g fis g d
  d  c8( b) a4 a'
  a4. g8 fis2
  f4 d c2
  r r4 r8 d
  d4 d d d
  d d d e
  e e e e
  e e e2
  e4 r d r
  d r d r 
  c d e d 
  c4. c8 b4 d
  e d c b 
  c d e2
  d1 \bar "||"
}

tenorMusic =  \relative c' {
  \clef "G_8"
  b4
  e d d b8\noBeam c8(
  c[ a]) d([ c]) b4 b
  a e d fis
  e e d2
  r1
  g4 a b4. g8
  fis4 g a b
  a g fis a
  gis a b c
  b a gis2
  a4 r  fis r
  g r g r
  e' d c b
  a2 g4 b
  c b e d
  e( d d8) g, c4
  b1 \bar "||"
}

bassMusic =  \relative c {
  \clef bass
  g4
  c g d' e 
  d d g, g'
  d e fis d
  a' a, d2
  r1
  e4 d g4. g,8
  d'4 g, d' g
  fis g d a
  e' a, e' a 
  gis a e2
  a,4 r d r
  g, r c r
  c b c g
  d'2 g,4 g'
  e g c, g 
  c b c2
  g1 \bar "||"
}
  
stanzaOne = \lyricmode {
  \set stanza = #"1. "
  Say, Love if e -- ver thou didst find,
A wo -- man with a con -- stant mind,
None but one,
And what should that rare mir -- ror be,
Some god -- dess or some queen is she,
She, she, she, she, she, she and on -- ly she,
She on -- ly queen of love and beau -- ty.
}

stanzaTwo =\lyricmode {
\set stanza = #"2. "
But could thy fie -- ry poi -- son'd dart
At no time touch her spot -- less heart
Nor come near?
She is not sub -- ject to Love's bow,
Her eye com -- mands, her heart saith 'No',
No, no, no, no, no, no, no and on -- ly no
One no a -- no -- ther still doth fol -- low.
}

stanzaThree = \lyricmode {
  \set stanza = #"3. "
How might I that fair won -- der know
That mocks de -- sire with end -- less no
See the moon
That ev -- er in one change doth grow
Yet still the same and she is so
So, so, so, so, so, so, so and only so
From Heav'n her vir -- tues she doth bor -- row
}

stanzaFour = \lyricmode {
  \set stanza = #"4. "
To her then yield thy shafts and bow,
That can com -- mand af -- fe -- ctions so:
Love is free,
So are her thoughts that van -- quish thee,
There is no queen of love but she,
She, she, she, she, she, she and on -- ly she,
She on -- ly queen of love and beau -- ty.
}


\score {
  \new ChoirStaff <<
    \new Staff \with {
       instrumentName = "Soprano" } <<
      \new Voice = "soprano" <<
        \global
        \sopranoMusic
      >>
      \lyricsto "soprano" \new Lyrics \stanzaOne
    >>
     \new Staff \with {
       instrumentName = "Alto" } <<
      \new Voice = "alto" <<
        \global
        \altoMusic
      >>
           \lyricsto "alto" \new Lyrics \stanzaTwo
    >>
     \new Staff \with {
       instrumentName = "Tenor"}  <<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
           \lyricsto "tenor" \new Lyrics \stanzaThree
    >>
     \new Staff \with {
       instrumentName = "Bass" } <<
      \new Voice = "bass" <<
        \global
        \bassMusic
      >>
           \lyricsto "bass" \new Lyrics \stanzaFour
    >>
  >>
}

