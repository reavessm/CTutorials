GCC = g++ 

default:
	@echo "make cleanAll -> clean subdirectories"
	@echo "make readme   -> edit README.md"

cleanAll:
	@rm */thing */*.o

readme:
	@vim README.md; pandoc -V geometry:margin=1in -f markdown README.md -o README.pdf
