*** (C) 2008-2016 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


*fix bioenergy demand to given values
vm_dem_bioen.fx(i,kall) = 0;
* fix 1stgen bioenergy demand to be equal to the corresponding demand of processing products
vm_dem_processing.fx(i,subbioen1st60) = i60_bioenergy1stgen_dem(ct,i,subbioen1st60);
*relax boundaries for all crops which belong to kbe60 as their demand is
*calculated separately (see equations)
vm_dem_bioen.up(i,kbe60) = Inf;
vm_dem_bioen.lo(i,kbe60) = 0;

* relax the 1st bioenergy demand
vm_dem_bioen.up(i,kcr) = inf;
vm_dem_bioen.lo(i,kcr)= 0;

*fix bioenergy revenue to 0
vm_cost_bioen.fx(i) = 0;