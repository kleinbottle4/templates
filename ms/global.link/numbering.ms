.\" vim: set ft=groff:
.\"
.\" Time travelling labels and references (unsafe)
.\" + Need to compile twice
.open ref main.ref
.\" don't need to close because groff does so automatically at end?
.\"
.\" add label (general)
.de #A
.  ie '1'\\n[.$]' .ds s \\*[SN-NO-DOT]
.  el .ds s \\$2
.  write ref .ds ref.\\$1 \\*s
..
.\" equations
.de #E
.  #A e.\\$1 \\*[Eq]
..
.\" lemmae
.de #L
.  #A l.\\$1 "\\*[Lem]
..
.\" code listings
.de #C
.  #A c.\\$1 "\\*[Cod]
..
.\" figures
.de #F
.  #A f.\\$1 "\\*[Fig]
..
.\" reference a label
.de #R
.  ds s "\\*[ref.\\$1]
.  if ''\\*s' .ds s "???
\\$3\\*s\\$2
..