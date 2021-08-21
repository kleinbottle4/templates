.\" Global ms macros
.\" vim: set ft=groff:
.\"
.\" Formatting
.\" -------------------------------------------------------
.\" bullet point
.de BP
.IP \(bu
..
.\" listing
.nr cod 0
.de (C
.  nr cod +1
.  ds Cod "Listing \\n[H1].\\n[cod]
.  #C \\$1
.  SH
\\*[Cod]\&. \fI\\$2\fP
.  HL
.  nf
.  fam C
.  ft R
..
.de )C
.  fi
.  HL
.  fam
..
.de (Q
.  QS
.  ft I
..
.de )Q
.  QE
..
.\" draw a horizontal line (from -me)
.de HL
.  br
.  ie \n(.g .do nr _I \\n[.in]
.  el .nr _I \\n(.i
\l'\\n(.lu-\\n(_Iu'
..
