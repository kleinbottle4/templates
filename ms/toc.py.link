#!/bin/env python3
# vim: set ft=python:

# If mark set,
#   Unless cur line begins with .[^ ],
#       Append cur line to hold space.
#   Else:
#       Print code for TC entry
# If mark not set:
#   Do nothing except print line.
#
# If cur line begins w/ ".NH" (not ". NH"):
#   set mark.

import re
import sys

BEGIN_HEADING = r"\.NH"
END_HEADING = r"\.[^ ]"

def _print(s):
    print(s, end = '')

def print_tc_entry(hold_space):
    print(\
r""".XS
.if '1'\n[nh*hl]' \{\
.  sp
.  ft B
.\}
\*[SN-DOT]""")
    _print(''.join(hold_space))
    print(".XE")

with open("/dev/stdin") as t:
    mark = 0
    hold = []
    for i, l in enumerate(t):
        if mark == 1:
            if not re.match(END_HEADING, l):
                hold.append(l)
            else:
                print_tc_entry(hold)
                hold = []
                mark = 0
        if re.match(BEGIN_HEADING, l):
            mark = 1
        _print(l)
