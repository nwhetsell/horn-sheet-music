\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto"

  \key g \minor
  \time 4/4

  \repeat volta 2 {
    \tuplet 3/2 4 { d''8_\markup { \dynamic "mf" \italic "sempre legato" }( e-flat d c d c b-flat c b-flat \once \tupletDown a b-flat a) } |
    \tuplet 3/2 4 { g8( f-sharp g a g a) } b-flat4( g8) r |
    \tuplet 3/2 4 { c8( d c b-flat c b-flat) a( b-flat a g a g) } |
    \tuplet 3/2 4 { f-sharp8( e f-sharp g f-sharp g) } a4( f-sharp8) r |
    \tuplet 3/2 4 {
      g8( f-sharp g a g a) \once \tupletDown b-flat( a b-flat c b-flat c) |
      d8( c d e-flat d c) b-flat( a b-flat \stemUp c b-flat a) \stemNeutral |
      g8( f-sharp g
        <<
          {
            \voiceOne
            g,8) g'_(
          }
          \new Voice {
            \voiceTwo
            g,8 \tweak Y-offset #-4 r
          }
        >> \oneVoice
        a' b-flat a g) e-flat'( d c-sharp) |
    }
    d1~ \p \tweak minimum-length #8 \< |
    \tuplet 3/2 4 { d8 \f e-flat( d c! d c b-flat c b-flat \once \tupletDown a b-flat a) } |
    \tuplet 3/2 4 { g8( f-sharp g a g a) } b-flat4( g8) r |
    \tuplet 3/2 4 { e-flat'8( f e-flat d e-flat d c d c b-flat c b-flat) } |
    \tuplet 3/2 4 { a8( g a b-flat a b-flat) } c4( a8) r |
    \tuplet 3/2 4 {
      f'8( g f e-flat f e-flat d e-flat d c d c) |
      \once \tupletUp b-flat8( \> c b-flat a b-flat a g a g f g f) \! |
    }
    e4 \breathe \tuplet 3/2 4 { e8( \mf g b-flat) d-flat( c b-flat) } \acciaccatura c \tuplet 3/2 { b-flat( a b-flat) } |
    a4 \breathe \tuplet 3/2 4 { f8( \p e f) g( f g) a( \cresc g a) } |
    \tuplet 3/2 4 {
      \tupletUp b-flat8( a b-flat c b-flat c d c d
        e d e) % The 1st edition has e-flat d e-flat here.
        | \tupletNeutral
      <<
        \new Voice {
          \voiceOne
          f8 r
        }
        {
          \voiceTwo
          f8( \f e f g e-flat c f d b-flat e-flat c a) |
        }
      >> \oneVoice
    }
    b-flat4 r f^\markup{ \italic "meno mosso" }_\markup { \italic "dolce" }( d'8) r |
    c4( e-flat,8) r c4( a'8) r |
    b-flat8( d) f,4 g( e-flat'8) r |
    d4( b8) r \tuplet 3/2 4 { c8( \< d c) e-flat( f e-flat) } |
    g2.^\markup { \italic "accel." }( g-flat4) |
    \tempo "a tempo"
    \tuplet 3/2 4 {
      f8( \tweak X-offset #-1 \f g! f e-flat f e-flat d e-flat d c d c) |
      b-flat8( c b-flat d e-flat d g, a g c d c) |
      f,8( g f b-flat c b-flat a b-flat a c d c) |
    }
    \tuplet 3/2 4 { b-flat( c b-flat d e-flat d) } b-flat4 r |
  }

  \tuplet 3/2 4 {
    b8( \mf c b d e-flat d f g f e-flat f e-flat) |
    d8( e-flat d c d c b c b d e-flat d) |
  }
  c4( g8) r \tuplet 3/2 4 { d'( c d e-flat d e-flat) } |
  f4( b,8) r c4( \> f-sharp,8) r |
  g4 \breathe \tuplet 3/2 4 { \slurDown g8( \p a g a b a \once \tupletUp b \cresc c b) } |
  \tuplet 3/2 4 {
    c8( d c d e-flat! d e-flat f e-flat
      <<
        \new Voice {
          \voiceOne
          f8 r
        }
        {
          \voiceTwo
          f8 g
        }
      >> \oneVoice
      f) |
    \slurNeutral
    g8( \f a-flat g f g f e-flat f e-flat d e-flat d) |
  }
  \tuplet 3/2 4 { c8( b c d c d) } e-flat!4( c8) r |
  \tuplet 3/2 4 { a-flat8( g a-flat) b-flat( a b-flat) } c4( a-flat8) r |
  f-sharp4 \f \tuplet 3/2 4 { f-sharp8( a c) e-flat( d c) } \acciaccatura d \tuplet 3/2 { c( b-flat c) } |
  b4 \tuplet 3/2 4 { b8( \tweak X-offset #-1 \f d f) a-flat( g f) } \acciaccatura g \tuplet 3/2 { f( e f) } |
  e4 \tuplet 3/2 4 { e,8( g b-flat) d-flat( c b-flat) } \acciaccatura c \tuplet 3/2 { b-flat( a b-flat) } |
  a4^\markup { \italic "poco rit." }( e-flat'8) r d4( b-flat8) r |
  g4( e-flat'8) r g4( c-sharp,8) r |
  d1~^\markup { \italic "string." } \p \tweak minimum-length #8 \< |
  \tuplet 3/2 4 { d8 \f \tempo "a tempo" e-flat( d c! d c b-flat c b-flat \once \tupletDown a b-flat a) } |
  \tuplet 3/2 4 { g8( f-sharp g a g a) } b-flat4( g8) r |
  \tuplet 3/2 4 { c8( d c b-flat c b-flat \tupletDown a b-flat a g a g) \tupletNeutral } |
  \tuplet 3/2 4 { f-sharp8( e f-sharp g f-sharp g) } a4( f-sharp8) r |
  \tuplet 3/2 4 {
    g8_( f-sharp g a g a b-flat a b-flat \once \tupletUp c b-flat c) |
    d8( c d e-flat d c d c b-flat c b-flat a) |
    b-flat8( a b-flat \stemUp c b-flat a \stemNeutral b-flat a g a g f) | \bar "||"
  }

  \key g \major
  g4 r\fermata \tempo \markup { "Maggiore" \normal-text \italic "poco meno" } b!_\markup { \italic "dolce" }( g8) r |
  c,4( a'8) r c4( f-sharp,!8) r |
  g8( b) d,4 e( c'8) r |
  b4( g-sharp8) r \tuplet 3/2 4 { a8( \< b a) c( d c) \! } |
  e2.^\markup { \italic "accel." }( e-flat4) |
  \tempo "Tempo I"
  \tuplet 3/2 4 { d8( \> e! d c d c b c b \once \tupletDown a b a)\! } |
  g4 r \tuplet 3/2 4 { g8( \f f-sharp g) b( a-sharp b) } |
  \tuplet 3/2 4 { e,8( d-sharp e) g( f-sharp g) c,( b c) e( d-sharp e) } |
  d!4 \tuplet 3/2 4 { f-sharp8( \p e f-sharp) a( g a) c( b c) } |
  \tuplet 3/2 4 { b8( \cresc a g) e'( d c-sharp) d( e d) c( b a) } |
  g4 \breathe \tuplet 3/2 4 { g'8( \f f-sharp g e d-sharp e c b c) } |
  \tuplet 3/2 4 { a8( b a c d! c f-sharp, g f-sharp d' e d) } |
  g,4 \tuplet 3/2 4 { \once \tupletDown b8( a g e' d c-sharp e d c-sharp) } |
  \tuplet 3/2 4 { d8( e d c! d c b c b \once \tupletDown a b a) } |
  \tuplet 3/2 4 { \once \tupletDown g8( a g b c b } g4) r | \bar "|."
}
