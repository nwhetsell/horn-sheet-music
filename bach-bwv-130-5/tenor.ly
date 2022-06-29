\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Tenor"
}

\include "tenor.ily"

\score {
  <<
    \new Voice=voice \relative d' {
      \clef "tenor"
      \tenor-measures-one-to-eighty-eight
      <<
        { \tenor-measures-eighty-nine-to-one-hundred-twenty-six }
        {
          s1*4 |
          s4 \repeat unfold 2 { s8( s) } s4 |
          s1*7 |
          s2 s8.( s16) s4 |
        }
      >>
      \bar "|."
    }

    \new Lyrics \lyricsto voice {
      \override LyricText.font-size = #0
      \lyricmode {
        Lass, o Fürst der _ Che -- _ ru -- bi -- nen, _
        lass, o Fürst der Che -- ru -- bi -- nen, _
        o Fürst der Che -- _ _ ru -- bi -- nen, _
        lass, _ o _ Fürst der Che -- ru -- bi -- nen, _
        die -- _ ser Hel -- den -- _ ho -- he
        Schaar __ \repeat unfold 24 { _ }
        im -- mer -- dar dei -- ne
        Gläu -- bi -- _ gen be -- _ die -- nen, im -- _ mer -- _ dar,
        lass, o Fürst der _ Che -- _ ru -- bi -- nen, _
        die -- _ ser _ Hel -- den -- _ ho -- he
        Schaar __ \repeat unfold 24 { _ }
        im -- mer -- dar dei -- ne
        Gläu -- _ bi -- _ gen _ be -- _ die -- \repeat unfold 10 { _ } nen,
        dei -- _ ne _ Gläu -- _ _ _ bi -- gen _ be -- _ die -- nen;

        dass sie auf E -- _ li -- as’ Wa -- gen _ sie _ zu _
        dir gen _ Him -- _ mel _ tra -- gen,
        dass _ sie _ auf E -- li -- as’ Wa -- gen _ sie _ zu _
        dir _ gen _ Him -- _ mel _ tra -- \repeat unfold 13 { _ } gen, _ sie zu
        dir gen _ Him -- _ mel _ tra -- gen,
        dass sie _ auf _ E -- _ li -- as’ _ Wa -- _ gen sie zu
        dir gen _ Him -- _ mel _ tra -- \repeat unfold 20 { _ } gen, _
        dass _ sie _ auf E -- li -- _ as’ _ Wa -- gen sie _ zu _
        dir gen _ Him -- mel tra -- \repeat unfold 16 { _ } gen, sie zu
        dir gen Him -- mel tra -- gen.

        Lass, o Fürst der Che -- ru -- bi -- nen, _
        lass, o Fürst der Che -- ru -- bi -- nen, _
        o Fürst der Che -- ru -- bi -- nen, _
        lass, _ o _ Fürst der Che -- ru -- bi -- nen, _
        die -- _ ser _ Hel -- den -- _ ho -- he
        Schaar __ \repeat unfold 24 { _ }
        \repeat unfold 2 { im -- mer -- _ dar, }
        lass, o _ Fürst _ der _ Che -- ru -- bi -- nen, _
        die -- ser Hel -- \repeat unfold 16 { _ } den -- _ ho -- _ he _ Schaar
        im -- mer -- dar dei -- _ _ ne _
        Gläu -- bi -- _ gen _ be -- _ die -- \repeat unfold 11 { _ } nen, _
        dei -- _ ne _ Gläu -- _ _ _ bi -- gen be -- _ die -- nen.
      }
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
