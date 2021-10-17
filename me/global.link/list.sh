( source-highlight -i $1 -o STDOUT -f esc \
	|| cat $1 )	|

	nsed '1i\
.(l
$a\
.)l' |

	list |

	tr '' '@' |

	nsed \
's!@\[m!\\m[black]!g
s!@\[01;30m!@\[30m!g
s!@\[01;34m!@\[34m!g
s!@\[30m!\\m[grey30]!g
s!@\[31m!\\m[firebrick]!g
s!@\[32m!\\m[khakhi]!g
s!@\[34m!\\m[darkslateblue]!g
s!@\[35m!\\m[purple]!g
s!\$!\\(Do!g
s!\^!\\(ha!g' |

	Nawk '{printf "%2d: %s\n", NR, $0}'
