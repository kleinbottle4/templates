soelim $1 |\
	awk \
	'$1 == ".lf" && $3 != "./main.toc" && $3 != "./main.ref" {print $3};
	$1 == ".so" {print $2}' |\
	sort |\
	uniq
