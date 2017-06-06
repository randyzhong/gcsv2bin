
# geoip_cvs2bin

OPTION= -g
CC=	gcc
STD=	_GNU_SOURCE
OBJS= gcsv2bin.o

.c.o:
	$(CC) $(OPTION) -c -Wall $(CFLAGS) -D$(STD) $<

all:	gcsv2bin

csv2bin: $(OBJS)
	$(CC) $(OPTION) $(OBJS) -o gcsv2bin

clean:
	rm ./gcsv2bin

# END MAKEFILE #
