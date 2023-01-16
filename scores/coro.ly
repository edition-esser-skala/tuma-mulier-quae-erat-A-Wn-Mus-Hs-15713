\version "2.24.0"

\include "../definitions.ly"
\include "score_settings/coro.ly"

\book {
  \bookpart {
    \section "Mulier quæ erat"
    \addTocEntry
    \paper { indent = 2\cm }
    \score {
      <<
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "Soprano"
            \new Voice = "Soprano" { \dynamicUp \MulierSoprano }
          }
          \new Lyrics \lyricsto Soprano \MulierSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "Alto"
            \new Voice = "Alto" { \dynamicUp \MulierAlto }
          }
          \new Lyrics \lyricsto Alto \MulierAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "Tenore"
            \new Voice = "Tenore" { \dynamicUp \MulierTenore }
          }
          \new Lyrics \lyricsto Tenore \MulierTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \MulierBasso }
          }
          \new Lyrics \lyricsto Basso \MulierBassoLyrics
        >>
        \new Staff {
          \set Staff.instrumentName = "Organo"
          \MulierOrgano
        }
        \new FiguredBass { \MulierBassFigures }
      >>
    }
  }
}
