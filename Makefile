.SUFFIXES:
.SUFFIXES: .c .o
CLNT = llist
SRVR = llist_svc
CFLAGS = -g -Wall

SRVR_OBJ = llist_svc_proc.o llist_xdr.o llist_svc.o
CLNT_OBJ = llist.o llist_xdr.o llist_clnt.o

.c.o:; gcc -c -o $@ $(CFLAGS) $<

default: $(CLNT) $(SRVR)

$(CLNT): $(CLNT_OBJ)
	gcc -o $(CLNT) $(CLNT_OBJ)

$(SRVR): $(SRVR_OBJ)
	gcc -o $(SRVR) $(SRVR_OBJ)
