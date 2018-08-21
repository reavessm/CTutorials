GCC = g++ 
DIR = new

.PHONY: default cleanAll readme new contents

default:
	@echo "make cleanAll -> clean subdirectories"
	@echo "make readme   -> edit README.md"

cleanAll:
	@rm */thing */*.o

readme:
	@vim README.md; pandoc -V geometry:margin=1in -f markdown README.md -o README.pdf

new:
	@cp -r ./.Blank/ $(DIR)

contents:
	contents.sh
