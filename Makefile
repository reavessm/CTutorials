GCC = g++ -O3 -Wall 

default:
	@echo "Please type 'make cleanAll' to clean subdirectories"

cleanAll:
	rm */thing */*.o
