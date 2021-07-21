main = "main.py"
cmd = python3 $(main)

run:
	$(cmd)

loop:
	echo $(main) | entr -s "$(cmd)"

.PHONY: run loop
