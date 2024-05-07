function [deriv] = AA_function(time,statevar,constant_molecules,mRNA_initial_concentration,ka,kb)
[deriv_Bmdm_kdo_lipida_atp] = Bmdm_kdo_lipida_atp_AA_function(time,statevar(1:126),constant_molecules(1:6),mRNA_initial_concentration(1:20),ka,kb);

deriv = [deriv_Bmdm_kdo_lipida_atp];

