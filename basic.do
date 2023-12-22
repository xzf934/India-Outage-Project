* 1214 regressions
* everything 


clear

cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 



log using "basic.smcl", replace

* gva

ivreghdfe lngva ///
		  ln_precip ln_temp ///
		  ln_nworth ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)


putexcel set basic.xls, sheet(gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

* nr

ivreghdfe lnnr ///
		  ln_precip ln_temp ///
		  ln_nworth ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)


putexcel set basic.xls, sheet(nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* tc

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
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set basic.xls, sheet(tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


* lc
 
ivreghdfe lnlc ///
		  precip temp ///
		  net_worth ///
		  i.year ///
		  year#industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set basic.xls, sheet(lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


log close