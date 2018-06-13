GCC = g++ 

default:
	@echo "make cleanAll -> clean subdirectories"
	@echo "make readme   -> edit README.md"

cleanAll:
	rm */thing */*.o

readme:
	vim README.md
