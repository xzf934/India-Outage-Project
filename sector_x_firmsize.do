* 1214 regressions
* sector x firmsize

clear

cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 



log using "sector_x_firmsize.smcl", replace

*******************************
* gva
*******************************

	* micro firms
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
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(gva_rural_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

									

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
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(gva_urban_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  



* small firms

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
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(gva_rural_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  
		

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
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(gva_urban_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	 	  
		  


*******************************
* nr
*******************************

	* micro firms
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
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(nr_rural_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

									

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
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(nr_urban_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  



* small firms

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
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(nr_rural_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  
		

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
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(nr_urban_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	 	  
		  
		 
		 
		 
*******************************
* tc
*******************************

	* micro firms
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
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(tc_rural_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

									

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
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(tc_urban_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  



* small firms

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
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(tc_rural_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  
		

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
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(tc_urban_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	 
		  

		  
		  
		  
		 
*******************************
* lc
*******************************

	* micro firms
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
			 & firm_size == 1, ///
		  absorb(firm_id)


putexcel set sector_x_firmsize.xls, sheet(lc_rural_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

									

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
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(lc_urban_micro) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  



* small firms

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
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set sector_x_firmsize.xls, sheet(lc_rural_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	  
		

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
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set sector_x_firmsize.xls, sheet(lc_urban_small) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


log close