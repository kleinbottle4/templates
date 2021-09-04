( source-highlight -i $1 -o STDOUT -f esc \
	|| cat $1 )	|

	nsed '1i\
.(l
$a\
.)l' |

	list |

	tr '' '@' |

	nsed \
's!@\[m!\\m[black]\\f[R]!g
s!@\[31m!\\m[firebrick]!g
s!@\[32m!\\m[khakhi]!g
s!@\[35m!\\m[purple]!g
s!@\[01;30m!\\f[B]\\m[grey30]!g
s!@\[01;34m!\\f[B]\\m[darkslateblue]!g
s!\$!\\(Do!g
s!\^!\\(ha!g
s!\~!\\(ti!g' |

	Nawk '{printf "%2d: %s\n", NR, $0}'
