/*
 * summer.x
 *
 * rpcgen specification file for summer
 *
 * 4 Nov 2021
 *
 * Ben Moorman
 */

struct sumvalues
{
	int val1;
	int val2;
};

program SUMMER {
	version SUMMER_V1 {
		int SUM_VALUES(sumvalues) = 1;
	} = 1;
} = 0x00000000;
