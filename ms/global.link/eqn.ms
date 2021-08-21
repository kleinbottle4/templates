.\" Equations
.\" -------------------------------------------------------
.de QED
.  tl '''\\[sq]'
..
.nr eq 0 1
.de @EQ
.  br
.  ds eqn*num "\\$2
.  ie '\\$1'L' .nr eqn*type 0
.  el \{\
.    ie '\\$1'I' .nr eqn*type 1
.    el \{\
.      nr eqn*type 2
.      if !'\\$1'C' .ds eqn*num "\\$1
.    \}
.  \}
.\" additions (provins)
.  ie '\\*[eqn*num]'' \{\
.    nr eq +1
.    ds Eq (\\n[H1]\\*[num-sep]\\n[eq])
.    ds eqn*num \\*[Eq]
.  \}
.  el .if '\\*[eqn*num]'N' .ds eqn*num
.\" end provins
.  di eqn*div
.  in 0
.  if '\*(.T'html' \{\
.         nr eqn*ll \\n[.l]
.         ll 1000n
.  \}
.  if \\n[eqn*type]=0 .EQN-HTML-IMAGE-LEFT
.  if \\n[eqn*type]=1 \{\
.     if '\*(.T'html' .RS
.  EQN-HTML-IMAGE-INLINE
.  \}
.  if \\n[eqn*type]=2 .EQN-HTML-IMAGE
.  nf
..
.EQ
grfont "\*[FAM]R"
define CN 'special CANCEL'
define BOX 'special "BOX"'
.EN
.\" diagnol strike through terms
.de CANCEL
.  ds 0s \
\Z'\\*(0s'\
\v'\\n(0du'\
\D'l \\n(0wu -\\n(0hu-\\n(0du'\
\v'\\n(0hu'
..
.de BOX
.  ds 0s \
\Z'\h'1n'\\*(0s'\
\Z'\
\v'\\n(0du+1n'\
\D'l \\n(0wu+2n 0'\
\D'l 0 -\\n(0hu-\\n(0du-2n'\
\D'l -\\n(0wu-2n 0'\
\D'l 0 \\n(0hu+\\n(0du+2n'\
'\
\h'\\n(0wu+2n'
.  nr 0w +2n
.  nr 0d +1n
.  nr 0h +1n
..
