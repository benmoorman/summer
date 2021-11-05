/*
 * RPC Summer
 * 
 * This is the client file for an RPC call that
 * will sum two values provided in the args.
 *
 * 4 Nov 2021
 *
 * Ben Moorman
 */

#include "summer.h"

sumvalues *make_sv(int val1, int val2) {
	sumvalues *sv;
	sv = (sumvalues*)malloc(sizeof(sumvalues));
	if (sv == NULL) {
		return NULL;
	}

	sv->val1 = val1;
	sv->val2 = val2;

	return sv;
}

int main(int argc, char *argv[]) {
	CLIENT *cl;
	sumvalues *sv;
	int *result;

	if (argc != 4) {
		printf("Error: incorrect number of arguments passed\n");
		return 1;
	}

	int val1 = atoi(argv[2]);
	int val2 = atoi(argv[3]);

	sv = make_sv(val1, val2);

	cl = clnt_create(argv[1], SUMMER, SUMMER_V1, "tcp");
	if (cl == NULL) {
		printf("Error: could not connect to server\n");
		return 1;
	}

	result = sum_values_1(sv, cl);
	if (result == NULL) {
		printf("Error: RPC failed!\n");
		return 1;
	}

	printf("Client: sum sent back by server: %d\n", *result);

	return 0;
}
