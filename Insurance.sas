ods noproctitle;
ods graphics / imagemap=on;

/* Test for normality */
proc univariate data=WORK.IMPORT normal mu0=0;
	ods select TestsForNormality;
	class Vehicle_Damage;
	var Annual_Premium;
run;

/* t test */
proc ttest data=WORK.IMPORT sides=2 h0=0 plots(showh0);
	class Vehicle_Damage;
	var Annual_Premium;
run;
