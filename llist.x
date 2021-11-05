struct sumvalues
{
	int val1;
	int val2;
};

program SUMMER {
	version SUMMER_V1 {
		int SUM_VALUES(sumvalues) = 1;
	} = 1;
} = 0x2fffffff;
