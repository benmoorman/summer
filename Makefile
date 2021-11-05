.SUFFIXES:
.SUFFIXES: .c .o
CLNT = summer
SRVR = sum_svr
CFLAGS = -g -Wall

SRVR_OBJ = sum_svr_proc.o summer_xdr.o summer_svc.o
CLNT_OBJ = summer.o summer_xdr.o summer_clnt.o

.c.o:; gcc -c -o $@ $(CFLAGS) $<

default: $(CLNT) $(SRVR)

$(CLNT): $(CLNT_OBJ) summer.h
	gcc -o $(CLNT) $(CLNT_OBJ)

$(SRVR): $(SRVR_OBJ) summer.h
	gcc -o $(SRVR) $(SRVR_OBJ)

clean:
	rm *.o $(CLNT) $(SRVR)
