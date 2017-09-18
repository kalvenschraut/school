# See Makefile-commented for explanation
CFLAGS = -Wall -g
CC     = gcc $(CFLAGS)

clock_sim : lcd_clock.o lcd_clock_main.o lcd_update.o
	$(CC) -o clock_sim lcd_clock.o lcd_clock_main.o lcd_update.o
	@echo clock_sim is ready

lcd_update.o : lcd_update.c
	$(CC) -c lcd_update.c

lcd_clock_main.o : lcd_clock_main.c lcd_clock.h
	$(CC) -c lcd_clock_main.c

lcd_clock.o : lcd_clock.c lcd_clock.h
	$(CC) -c $<

test : clock_tests
	./clock_tests

clock_tests : lcd_tests.c lcd_clock.o lcd_update.o lcd_clock.h
	$(CC) -o $@ $^

clean:
	@echo Cleaning up object files
	rm -f *.o

realclean:
	@echo Removing objects and programs
	rm -f *.o lcd_clock lcd_test

