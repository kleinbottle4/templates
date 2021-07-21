PYC    = python3
OBJ    = main.py
CMD    = $(PYC) $(OBJ)

run :
	$(CMD)

loop:
	echo $(OBJ) | entr -s "$(CMD)"
