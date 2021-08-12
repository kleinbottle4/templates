# templates

Requires `mk`

bash:

	template ()
	{
	    tpl_dir="$HOME/tp"
	    for f in $tpl_dir/$1/*.link; do
	        ln -si $f ./$(basename "${f%.link}")
	    done
	    for f in $tpl_dir/$1/*.copy; do
	        cp -ri $f ./$(basename "${f%.copy}")
	    done
	}
	
	alias tp="template"

