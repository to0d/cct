CPPFLAGS=-I ../include/ctl -g
x.main.ctl.x: TC200824A.o
	gcc -o $@ $^
..c.o:
	gcc -c $<
clean:
	rm -f *.o
	rm -f *.x