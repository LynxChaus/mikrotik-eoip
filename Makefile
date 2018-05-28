CFLAGS	:=-O2 -Wall -DPACKAGE_VERSION=\"0.5-1\"
INISRC	:= minIni.c
LDFLAGS	:= -lpthread

all: eoip vip

eoip: eoip.c
	$(CC) $(CFLAGS) eoip.c $(INISRC) $(LDFLAGS) -o eoip

vip: vip.c
	$(CC) $(CFLAGS) vip.c $(INISRC) $(LDFLAGS) -o vip

clean:
	rm -f eoip vip
