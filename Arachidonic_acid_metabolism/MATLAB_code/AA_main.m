% Main


close all;
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialize statevar and constant concentration vector and call other files - START

constant_molecules = zeros(6,1);
statevar_input = zeros(123,1);
mRNA_initial_concentration = zeros(20,1);

AA_parameter;
Bmdm_kdo_lipida_atp_AA_vector_assignment;
Bmdm_kdo_lipida_atp_AA_initial_concentration;

% Initialize statevar and constant concentration vector and call other files - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set total simulation time - START

tlast = 1200;

% Set total simulation time - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run single analysis, calculate goodness of fit and plot results - START

options = odeset('RelTol',1e-5,'AbsTol',1e-15); options = odeset(options, 'AbsTol', 1e-15);
[time,statevar] = ode15s(@(time,statevar) AA_function(time,statevar,constant_molecules,mRNA_initial_concentration,ka,kb), [0 tlast], statevar_input, options);
[squared_residuals_matrix,Gof_mean_vector,Gof_sampleSD_vector,Gof_eachMoleculeCellType_completeName_vector,Gof_eachMoleculeCellType_mean_vector,Gof_eachMoleculeCellType_sampleSD_vector,Gof_eachCellType_name_vector,Gof_eachCellType_mean_vector,Gof_eachCellType_sampleSD_vector] = AA_calculate_single_goodness_of_fit(statevar,time,statevar_cellType);
AA_plot_experimental_and_predicted_values(statevar,time,mRNA_initial_concentration);
AA_plot_predictedValues_boxplots(statevar);
AA_plot_goodness_of_fit_values(Gof_eachMoleculeCellType_completeName_vector,Gof_eachMoleculeCellType_mean_vector,Gof_eachMoleculeCellType_sampleSD_vector,Gof_eachCellType_name_vector,Gof_eachCellType_mean_vector,Gof_eachCellType_sampleSD_vector);

% Run single analysis, calculate goodness of fit and plot results - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

