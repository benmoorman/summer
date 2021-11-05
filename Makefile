.SUFFIXES:
.SUFFIXES: .c .o
CLNT = summer
SRVR = sum_svr
CFLAGS = -g -Wall

SRVR_OBJ = sum_svr_proc.o sum_xdr.o sum_svr.o
CLNT_OBJ = summer.o sum_xdr.o summer_clnt.o

.c.o:; gcc -c -o $@ $(CFLAGS) $<

default: $(CLNT) $(SRVR)

$(CLNT): $(CLNT_OBJ)
	gcc -o $(CLNT) $(CLNT_OBJ)

$(SRVR): $(SRVR_OBJ)
	gcc -o $(SRVR) $(SRVR_OBJ)
