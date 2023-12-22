* models
lear

cd "C:\research\india_outage\1211"

use "india_panel_0507_new.dta" 



log using "models_tempnotlog.smcl", replace
				
* gva
				
* OLS				
				
	xtset firm_id			
	xtreg lngva ///
	      demeaned_shortage_percent ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  fe
			
* 	2sls				
				
ivreghdfe lngva ///
		  ln_precip temp ///
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

* 2sls no interactions

ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)				
				
* 2sls no fixed effects

ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip temp ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3

* 2sls nothing
ivreghdfe lngva ///
		  ln_nworth ///
		  ln_precip temp ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if gva_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3
			 
				
***************************************				
* nr
				
* OLS				
				
	xtset firm_id			
	xtreg lnnr ///
	      demeaned_shortage_percent ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  fe
			
* 	2sls				
				
ivreghdfe lnnr ///
		  ln_precip temp ///
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

* 2sls no interactions

ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)				
				
* 2sls no fixed effects

ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip temp ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3

* 2sls nothing
ivreghdfe lnnr ///
		  ln_nworth ///
		  ln_precip temp ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if nr_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3
			 				
				
				
				
***************************************				
* tc
				
* OLS				
				
	xtset firm_id			
	xtreg lntc ///
	      demeaned_shortage_percent ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  fe
			
* 	2sls				
				
ivreghdfe lntc ///
		  ln_precip temp ///
		  ln_nworth ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

* 2sls no interactions

ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)				
				
* 2sls no fixed effects

ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip temp ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3

* 2sls nothing
ivreghdfe lntc ///
		  ln_nworth ///
		  ln_precip temp ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if totcost_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3
			 								
				
***************************************				
* lc
				
* OLS				
				
	xtset firm_id			
	xtreg lnlc ///
	      demeaned_shortage_percent ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  fe
			
* 	2sls				
				
ivreghdfe lnlc ///
		  ln_precip temp ///
		  ln_nworth ///
		  i.year ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)

* 2sls no interactions

ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip temp ///
		  i.year ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3, ///
		  absorb(firm_id)				
				
* 2sls no fixed effects

ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip temp ///
		  year#industry ///
		  year#sector ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3

* 2sls nothing
ivreghdfe lnlc ///
		  ln_nworth ///
		  ln_precip temp ///
	      i.sector ///
		  i.industry ///
		  mkt_val_fa ///
		  (demeaned_shortage_percent ///
		  = hydro_ratio_IV_fisical) ///
		  if labor_no_change == 0 ///
			 & power_source == 2 ///
			 & firm_size != 3
			 									
				
				
				
log close			
				
				
				
				