CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O0 -fsanitize=address
PROGRAMS := yaz0 makeromfs

all: $(PROGRAMS)

yaz0: yaz0tool.c yaz0.c util.c
	$(CC) $(CFLAGS) $^ -o $@

makeromfs: makeromfs.c n64chksum.c util.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	$(RM) $(PROGRAMS)
