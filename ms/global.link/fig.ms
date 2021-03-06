.\" vim: set ft=groff:
.\" Figures.
.\" -------------------------------------------------------
.\" .(F [F = floating] label <arguments to PSPIC>
.\" Caption text
.\" .)F
.ds num-sep .\" - also used by eqn*num and Lem
.
.nr fig 0 1
.de (F
.  ie '\\$1'F' \{\
.    shift
.    KF
.  \}
.  el .KS
.  ds Fig "Figure \\n[H1]\\*[num-sep]\\n+[fig]
.  #F \\$1
.  shift
.  SH
\\*[Fig].
.  HL
.  QS
.  B1
.  PSPIC \\$*
.  B2
.  LP
.  ad c \" centre justified
.  ft I
..
.de )F
.  br
.  ad n \" normal justified
.  QE
.  HL
.  KE
..
