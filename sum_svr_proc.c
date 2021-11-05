/*
 * RPC summer server file
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
