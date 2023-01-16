\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"

\book {
  \bookpart {
    \section "Mulier quæ erat"
    \addTocEntry
    \paper { indent = 3\cm }
    \score {
      <<
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = "Cornetto"
            \MulierCornetto
          }
          \new Staff {
            \set Staff.instrumentName = "Fagotto"
            \MulierFagotto
          }
        >>
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Trombone"
            \new Staff {
              \set Staff.instrumentName = "I"
              \MulierTromboneI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \MulierTromboneII
            }
          >>
        >>
        \new StaffGroup <<
          \new GrandStaff <<
            \set GrandStaff.instrumentName = "Violino"
            \new Staff {
              \set Staff.instrumentName = "I"
              \MulierViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \MulierViolinoII
            }
          >>
        >>
        \new ChoirStaff <<
          \new Staff {
            \incipitSoprano
            \new Voice = "Soprano" { \dynamicUp \MulierSoprano }
          }
          \new Lyrics \lyricsto Soprano \MulierSopranoLyrics

          \new Staff {
            \incipitAlto
            \new Voice = "Alto" { \dynamicUp \MulierAlto }
          }
          \new Lyrics \lyricsto Alto \MulierAltoLyrics

          \new Staff {
            \incipitTenore
            \new Voice = "Tenore" { \dynamicUp \MulierTenore }
          }
          \new Lyrics \lyricsto Tenore \MulierTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \MulierBasso }
          }
          \new Lyrics \lyricsto Basso \MulierBassoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \MulierOrgano
          }
        >>
        \new FiguredBass { \MulierBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 60 }
    }
  }
}
