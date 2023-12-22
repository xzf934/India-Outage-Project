ivreghdfe lnnr_real_new ///
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
					  &  nr_0_okay == 1 ///
                          & power_source == 2 ///
                          & firm_size == 2, ///
						  absorb(firm_id)

ivreghdfe lnnr_real ///
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
                          & power_source == 2, ///
						  absorb(firm_id)

						  
										  
						  
						  
sort firm_id
gen nr=.
replace nr=nominal_revenue/5.6 if year == 2005
replace nr=nominal_revenue/8.4 if year == 2006
gen lnnr_real = ln(nr)

gen nr_new = nr+ 0.00001
gen lnnr_real_new = ln(nr_new)	
					  
gen nr_2005_0 = 0
replace nr_2005_0 = 1 if nr==0 & year == 2005
gen nr_2006_0 = 0
replace nr_2006_0 = 1 if nr==0 & year == 2006	
replace nr_2006_0 = 1 if firm_id == firm_id[_n+1] & nr_2006_0[_n+1] ==1	
replace nr_2005_0 = 1 if firm_id == firm_id[_n-1] & nr_2005_0[_n-1] ==1	
			  
gen nr_diff = .
replace nr_diff = nr-nr[_n-1] if firm_id == firm_id[_n-1]
replace nr_diff = nr_diff[_n+1] if firm_id == firm_id[_n+1]	

gen nr_diff_abs = abs(nr_diff)
 _pctile nr_diff_abs if ((nr_2005_0== 1 & nr_2006_0 == 0)|(nr_2005_0== 0 & nr_2006_0 == 1)), p(1,5,10,15,20,25,30,35,40,45,50) 
 return list

gen nr_0_okay= .
replace nr_0_okay= 1 if ((nr_2005_0== 1 & nr_2006_0 == 0)|(nr_2005_0== 0 & nr_2006_0 == 1)) & nr_diff_abs<r(r8)
replace nr_0_okay= 1 if nr_2005_0== 0 & nr_2006_0 == 0


