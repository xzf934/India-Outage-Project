* 1214 regressions
* by firmsize

clear

cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 



log using "by_firmsize.smcl", replace

*******************
* gva
*******************

* micro firms	  
		 
ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(gva_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* small firms


ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ////
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(gva_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  
		  

*******************
* nr
*******************

* micro firms	  
		 
ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(nr_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* small firms


ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(nr_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  		  	  
		  
*******************
* tc
*******************

* micro firms	  
		 
ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(tc_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* small firms


ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(tc_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  		  	  
		  
*******************
* lc
*******************

* micro firms	  
		 
ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(lc_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* small firms


ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set by_firmsize.xls, sheet(lc_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  		  	  
		  		  	  


log close