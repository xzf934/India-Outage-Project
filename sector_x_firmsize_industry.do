* 1214 regressions
* sector x firmsize x industry

clear

cd "C:\research\india_outage\1214"

use "india_panel_0507_new.dta" 





* micro
	* rural
		*gva
log using "sector_x_firmsize_x_industry_micro_gva.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 1 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 1 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 1 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 1 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 1 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 1 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 1 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


log close
	
	
	
	
	
	
	
	
	
	
	
	
	
		*nr
log using "sector_x_firmsize_x_industry_micro_lnnr.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 1 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 1 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 1 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 1 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 1 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 1 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 1 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close		
		
		
		
		
		
		
		
		
		
		
		
		
		
		*tc
log using "sector_x_firmsize_x_industry_micro_tc.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 1 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 1 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 1 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 1 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 1 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 1 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 1 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
		
		
		
		
		
		
		
		
		
		
		
		*lc
log using "sector_x_firmsize_x_industry_micro_lc.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 1 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 1 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 1 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 1 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 1 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 1 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 1 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	* urban
		*gva
log using "sector_x_firmsize_x_industry_micro_gva_urban.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


log close
	
	
	
	
	
	
	
	
	
	
	
	
	
		*nr
log using "sector_x_firmsize_x_industry_micro_lnnr_urban.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close		
		
		
		
		
		
		
		
		
		
		
		
		
		
		*tc
log using "sector_x_firmsize_x_industry_micro_tc_urban.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
		
		
		
		
		
		
		
		
		
		
		
		*lc
log using "sector_x_firmsize_x_industry_micro_lc_urban.smcl", replace		
		
***********************
* 1: 18105
***********************
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
		     & sector == 0 ///
		     & major_active == 18105 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18105_1.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 15311
***********************
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
		     & sector == 0 ///
		     & major_active == 15311 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15311_2.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 36101
***********************
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
		     & sector == 0 ///
		     & major_active == 36101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set micro_36101_3.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28920_4.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 50200
***********************
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
		     & sector == 0 ///
		     & major_active == 50200 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_50200_5.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 52605
***********************

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
		     & sector == 0 ///
		     & major_active == 52605 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52605_6.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_15312_7.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 28111
***********************
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
		     & sector == 0 ///
		     & major_active == 28111 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_28111_8.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 18101
***********************

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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_18101_9.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 52603
***********************
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
		     & sector == 0 ///
		     & major_active == 52603 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)

putexcel set micro_52603_10.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
			



		
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************
********************************************************************************


* small
	* rural
		*gva
log using "sector_x_firmsize_x_industry_small_gva_rural.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 1 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 1 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 1 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 1 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 1 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 1 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 1 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(rural_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


log close
	
	
	
	
	
	
	
	
	
	
	
	
	
		*nr
log using "sector_x_firmsize_x_industry_small_lnnr_rural.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 1 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 1 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 1 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 1 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 1 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 1 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 1 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(rural_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close		
		
		
		
		
		
		
		
		
		
		
		
		
		
		*tc
log using "sector_x_firmsize_x_industry_small_tc_rural.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 1 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 1 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 1 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 1 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 1 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 1 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 1 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(rural_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
		
		
		
		
		
		
		
		
		
		
		
		*lc
log using "sector_x_firmsize_x_industry_small_lc_rural.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 1 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 1 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 1 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 1, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 1 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 1 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 1 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 1 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 1 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 1 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 1 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(rural_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	* urban
		*gva
log using "sector_x_firmsize_x_industry_small_gva_urban.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 0 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 0 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 0 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 0 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 0 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 0 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 0 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(urban_gva) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


log close
	
	
	
	
	
	
	
	
	
	
	
	
	
		*nr
log using "sector_x_firmsize_x_industry_small_lnnr_urban.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 0 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 0 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 0 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 0 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 0 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 0 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 0 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(urban_nr) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close		
		
		
		
		
		
		
		
		
		
		
		
		
		
		*tc
log using "sector_x_firmsize_x_industry_small_tc_urban.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 0 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 0 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 0 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 0 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 0 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 0 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 0 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(urban_tc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
		
		
		
		
		
		
		
		
		
		
		
		*lc
log using "sector_x_firmsize_x_industry_small_lc_urban.smcl", replace		
		
***********************
* 1: 15312
***********************
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
		     & sector == 0 ///
		     & major_active == 15312 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_15312_1.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 2: 28920
***********************
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
		     & sector == 0 ///
		     & major_active == 28920 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_28920_2.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names		  
		  

***********************
* 3: 18101
***********************
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
		     & sector == 0 ///
		     & major_active == 18101 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)
		  
putexcel set small_18101_3.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 4: 26921
***********************
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
		     & sector == 0 ///
		     & major_active == 26921 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26921_4.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 5: 26931
***********************
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
		     & sector == 0 ///
		     & major_active == 26931 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26931_5.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	

***********************
* 6: 17121
***********************

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
		     & sector == 0 ///
		     & major_active == 17121 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17121_6.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names	


***********************
* 7: 14106
***********************
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
		     & sector == 0 ///
		     & major_active == 14106 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_14106_7.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

***********************
* 8: 26960
***********************
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
		     & sector == 0 ///
		     & major_active == 26960 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_26960_8.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names



***********************
* 9: 17111
***********************

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
		     & sector == 0 ///
		     & major_active == 17111 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_17111_9.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names


***********************
* 10: 25209
***********************
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
		     & sector == 0 ///
		     & major_active == 25209 ///
			 & power_source == 2 ///
			 & firm_size == 2, ///
		  absorb(firm_id)

putexcel set small_25209_10.xls, sheet(urban_lc) modify
matrix A = r(table)'
putexcel A1 = matrix(A), names

log close			
			
		
