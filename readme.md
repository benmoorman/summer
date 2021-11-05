# Summer - RPC Demo

Ben Moorman

This is a demo of Remote Call Procedures for CS 490.


## Usage
First, call:
`rpcgen summer.x`

This generates files needed based on the `summer.x` specification file for `rpcgen`.

Then, to compile the code, run `make` in the project directory.

There will be two files compiled: `sum_svr` and `summer`.

In one terminal session, run `./sum_svr`. This will start the server and it will be listening for requests from the client.

In another terminal session, we will start the client. The syntax to do this is:

`./summer <address_of_server> val1 val2`

For example, `./summer localhost 25 75` will connect to the server on localhost, and print:

`Client: sum sent back by server: 100`

**References**
- `https://users.cs.cf.ac.uk/Dave.Marshall/C/node33.html`
- `https://www.cprogramming.com/tutorial/rpc/remote_procedure_call_start.html`
