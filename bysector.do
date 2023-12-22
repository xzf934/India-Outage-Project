* 1214 regressions
* by sector

clear

cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 



log using "by_sector.smcl", replace


*******************
* gva
*******************

* urban	  
		 
ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 0 ///
		     & gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(gva_urban) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* rural


ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 1 ///
		     & gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)


putexcel set by_sector.xls, sheet(gva_rural) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  
		  

*******************
* nr
*******************

* urban	  
		 
ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 0 ///
		     & nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(nr_urban) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* rural


ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 1 ///
		     & nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(nr_rural) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  		  	  
		  
*******************
* tc
*******************

* urban	  
		 
ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 0 ///
		     & totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(tc_urban) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* rural


ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 1 ///
		     & totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(tc_rural) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names




*******************
* lc
*******************

* urban	  
		 
ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 0 ///
		     & labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(lc_urban) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


		  
* rural


ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip ln_temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if sector == 1 ///
		     & labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

putexcel set by_sector.xls, sheet(lc_rural) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names
		  		  	  
		  		  	  


log close