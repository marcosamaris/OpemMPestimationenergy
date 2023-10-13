# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
myocyte.out:	main.o
	icx	main.o \
			-lm -qopenmp \
	-o myocyte.out

# compile main function file into object (binary)
main.o: 	main.c \
				define.c \
				ecc.c \
				cam.c \
				fin.c \
				master.c \
				embedded_fehlberg_7_8.c \
				solver.c \
				file.c \
				timer.c
	icx	main.c \
			-c -O3 -qopenmp

# delete all object files
clean:
	rm *.o myocyte.out output.txt
