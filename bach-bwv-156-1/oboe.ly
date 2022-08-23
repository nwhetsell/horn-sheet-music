\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Oboe"
}

\include "oboe.ily"

\score {
  <<
    \new Voice \relative a' {
      <<
        {
          \oboe-measures-one-to-two
          \oboe-measure-three
          \oboe-measures-four-to-six
          \oboe-measure-seven
          \oboe-measures-eight-to-nine
          \oboe-measures-ten-to-eleven
          \oboe-measures-twelve-to-eighteen
          \oboe-measures-nineteen-to-twenty
        }
        {
          s1 |
          s2. s8\trill s |
          s1*9 |
          s2. s8 s~ |
          s1*5 |
          s2. s8. s16~ |
        }
      >>
      \bar "|."
    }
  >>
}

\bookpart {
  \paper {
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = \evenHeaderMarkup
  }
  \colophon
}
