*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de



positive variables
  vm_dem_processing(i,kall)          		   		demand for processing use (mio. tDM)
  v20_dem_processing(i,processing_subst20,kpr) 		demand for processing use by process (mio. tDM)
  v20_secondary_substitutes(i,ksd,kpr) 				substitutes for inferior secondary products (mio. tDM)
  vm_secondary_overproduction(i,kall,kpr)			overproduction of secondary couple products (mio. tDM)
  vm_cost_processing(i)            					processing costs (mio. USD)
;

equations
     q20_processing(i,kpr,ksd)                			processing equation (mio. tDM)
     q20_processing_aggregation_nocereals(i,kpr) 		connecting processing activity to processing flows (mio. tDM)
     q20_processing_aggregation_cereals(i,kcereals20)   connecting processing activity to food use for milling (mio. tDM)
     q20_processing_aggregation_cotton(i)        		connecting processing activity to production for cotton ginning (mio. tDM)
     q20_processing_substitution_oils(i)                substitution of branoils by other oils (mio. tDM)
     q20_processing_substitution_brans(i)               substitution of brans by cereals (mio. tDM)
     q20_processing_costs(i)                            processing costs (mio. USD)
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_dem_processing(t,i,kall,type)                         demand for processing use (mio. tDM)
 ov20_dem_processing(t,i,processing_subst20,kpr,type)     demand for processing use by process (mio. tDM)
 ov20_secondary_substitutes(t,i,ksd,kpr,type)             substitutes for inferior secondary products (mio. tDM)
 ov_secondary_overproduction(t,i,kall,kpr,type)           overproduction of secondary couple products (mio. tDM)
 ov_cost_processing(t,i,type)                             processing costs (mio. USD)
 oq20_processing(t,i,kpr,ksd,type)                        processing equation (mio. tDM)
 oq20_processing_aggregation_nocereals(t,i,kpr,type)      connecting processing activity to processing flows (mio. tDM)
 oq20_processing_aggregation_cereals(t,i,kcereals20,type) connecting processing activity to food use for milling (mio. tDM)
 oq20_processing_aggregation_cotton(t,i,type)             connecting processing activity to production for cotton ginning (mio. tDM)
 oq20_processing_substitution_oils(t,i,type)              substitution of branoils by other oils (mio. tDM)
 oq20_processing_substitution_brans(t,i,type)             substitution of brans by cereals (mio. tDM)
 oq20_processing_costs(t,i,type)                          processing costs (mio. USD)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
