.\" vim: set ft=groff:
.\" Lemmae
.nr lem 0 1
.de (L
.  KS
.  ds Lem "\\$1 \\n[H1]\\*[num-sep]\\n+[lem]
.  if !'\\$2'' .#L \\$2
.  fp 1 \\*[FAM]I
.  SH
\\*[Lem].
.  ft I
\\$3
..
.de )L
.  KE
.  fp 1 \\*[FAM]R
.  sp
..
