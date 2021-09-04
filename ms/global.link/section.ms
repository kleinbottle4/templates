.\" Sections
.\" -------------------------------------------------------
.\" Amend NH to reset eq, fig and lem numbering
.nr PSINCR 2p
.nr GROWPS 3
.am @NH
.  if \\n[nh*hl]=1 \{\
.    nr eq 0
.    nr lem 0
.    nr fig 0
.    nr cod 0
.  \}
..
.\" Headings and footers
.ds CH
.EF !\fB%\fP!!\E*[Ch@s]!
.OF !\E*[SN-DOT] \E*[Nh@s]!!\fB%\fP!
.de +c
.  ds Ch@s "\\$1
.  bp
.  +h 1 "\\$1
.  HL
..
.open toc main.toc
.de +h
.  NH \\$1
.  ds Nh@s "\\$2
\\*[Nh@s]
.  write toc .XS \\n[%]
.  nr i 1
.  while (\\ni < \\n[nh*hl]) \{\
.    nr i +1
.    writec toc \\t
.\}
.  ie '1'\\n[nh*hl]' \{\
.    write toc .sp
.    write toc .ft B
.    write toc "\\*[SN-DOT]	\\*[Nh@s]
.  \}
.  el .write toc "\\*[SN-DOT]	\\*[Nh@s]
.  write toc .XE
..
