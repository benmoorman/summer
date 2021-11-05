/*
 * RPC Summer
 *
 * This is the server file for an RPC call
 * that will sum two values provided in the args.
 *
 * 4 Nov 2021
 *
 * Ben Moorman
 */

#include <stdlib.h>
#include "summer.h"

int result;

int *sum_values_1_svc(sumvalues *sv, struct svc_req *req)
{
	result = 0;
	result += sv->val1;
	result += sv->val2;

	return &result;
}
