* 1214 regressions
* by idustry

clear

tab major_active if firm_size != 3, sort

/*
      18105 |    267,483       11.30       11.30
      15311 |    108,189        4.57       15.87
      36101 |     98,887        4.18       20.04
      28920 |     97,939        4.14       24.18
      50200 |     85,119        3.59       27.77
      52605 |     69,118        2.92       30.69
      15312 |     53,304        2.25       32.94
      18101 |     48,671        2.06       35.00
      28111 |     43,104        1.82       36.82
      52603 |     37,628        1.59       38.41
*/



cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 



log using "by_industry.smcl", replace


***********************
* 1: 18105
***********************

* nr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18105_1.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18105_1.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18105_1.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18105_1.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 2: 15311
***********************

* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15311_2.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15311_2.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15311_2.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15311_2.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names





***********************
* 3: 36101
***********************


* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_36101_3.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_36101_3.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_36101_3.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_36101_3.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names





***********************
* 4: 28920
***********************


* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28920_4.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28920_4.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28920_4.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28920_4.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names








***********************
* 5: 50200
***********************



* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_50200_5.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_50200_5.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_50200_5.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_50200_5.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names








***********************
* 6: 52605
***********************



* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52605_6.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52605_6.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52605_6.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52605_6.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names









***********************
* 7: 15312
***********************



* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set ibyindustry_15312_7.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15312_7.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15312_7.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_15312_7.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names





***********************
* 8: 28111
***********************


* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28111_8.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28111_8.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28111_8.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_28111_8.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names







***********************
* 9: 18101
***********************



* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18101_9.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18101_9.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18101_9.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_18101_9.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names








***********************
* 10: 52603
***********************


* lnnr

ivreghdfe lnnr ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52603_10.xls, sheet(lnnr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* gva

ivreghdfe lngva ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52603_10.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* total cost

ivreghdfe lntc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52603_10.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
	
	
* labor cost

ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#sector ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set byindustry_52603_10.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close