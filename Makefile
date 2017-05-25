FLAGS = -std=gnu11 -O2 -Wall -Wextra
ID = 304575323
ARCHIVE = lab3a-$(ID).tar.gz
sources = Makefile lab3a.c README* test.sh

default: lab3a.c
	@gcc $(FLAGS) -o lab3a lab3a.c
dist:
	@tar -czf $(ARCHIVE) $(sources)
check: test.sh
	@chmod +x test.sh
	@./test.sh
clean:
	@rm -f lab3a *.o *.csv