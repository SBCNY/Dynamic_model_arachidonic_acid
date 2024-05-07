function [squared_residuals_matrix,Gof_mean_vector,Gof_sampleSD_vector,Gof_eachMoleculeCellType_completeName_vector,Gof_eachMoleculeCellType_mean_vector,Gof_eachMoleculeCellType_sampleSD_vector,Gof_eachCellType_name_vector,Gof_eachCellType_mean_vector,Gof_eachCellType_sampleSD_vector] = AA_calculate_single_goodness_of_fit(statevar,time,statevar_cellType)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Call ODE function - START


% Call ODE function - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialize vector and matrixes for molecules with experimental data - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exp_statevarIndex = [ 103;   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      105;   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      109;   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      110;   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      112;   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      114;   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      117;   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      118;   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      120;   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                      123;   % 10: TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    ];

exp_name = [ "11-HETE";   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "13,14-DIHYDRO-15-KETO-PGD2";   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "15-HETE";   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "5-HETE";   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "AA";   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "LTB4";   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "PGD2";   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "PGE2";   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "PGJ2";   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
             "TXB2";   % 10: TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
           ];

exp_compartment = [ "Ecs";   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                    "Ecs";   % 10: TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                  ];

exp_cellType = [ "Bmdm_kdo_lipida_atp";   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 "Bmdm_kdo_lipida_atp";   % 10: TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
               ];

exp_odeName = [ "Ecs_11_HETE";  % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_13_14_DIHYDRO_15_KETO_PGD2";  % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_15_HETE";  % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_5_HETE";  % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_AA";  % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_LTB4";  % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_PGD2";  % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_PGE2";  % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_PGJ2";  % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                "Ecs_TXB2";  % 10: TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
              ];


exp_timepoints = [0;15;30;60;120;240;480;1200];
unique_exp_cellTypes = unique(exp_cellType);
isExpTimeInSimulatedTime = (exp_timepoints <= max(time)) & (exp_timepoints >= min(time));
exp_timepoints_in_simTime = exp_timepoints(isExpTimeInSimulatedTime,1);
exp_molecules_length = 10;
exp_timepoints_in_simTime_length = length(exp_timepoints_in_simTime);
exp_meanValues = zeros(exp_timepoints_in_simTime_length,exp_molecules_length);
exp_sampleSdValues = zeros(exp_timepoints_in_simTime_length,exp_molecules_length);
exp_meanValues = [ 4.1008E-10 3.205532E-08 6.575008E-08 5.151432E-08 5.692104E-08 8.135556E-08 4.166382E-08 2.997852E-08;   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   4.3934E-10 9.0134E-10 7.0004E-10 9.35E-10 1.16182E-09 1.73888E-09 1.26214E-09 1.5488E-09;   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   1.6346E-10 4.5474E-10 5.6452E-10 7.3106E-10 8.2456E-10 1.42978E-09 9.24E-10 8.294E-10;   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   1.9734E-10 5.7662E-10 8.8352E-10 9.8846E-10 9.8472E-10 1.133E-09 5.181E-10 3.795E-10;   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   6.34788E-07 1.056095E-06 1.887149E-06 3.227506E-06 3.326286E-06 3.547064E-06 1.406618E-06 9.486994E-07;   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   2.684E-11 1.0054E-10 1.6016E-10 1.5994E-10 1.474E-10 1.5554E-10 8.14E-11 4.752E-11;   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   2.6224E-10 1.565036E-08 1.628352E-08 1.632026E-08 1.861112E-08 4.143084E-08 3.726492E-08 3.270498E-08;   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   2.156E-11 9.789999E-11 1.2232E-10 1.2386E-10 1.7182E-10 4.0414E-10 6.4416E-10 1.73514E-09;   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   4.7058E-10 8.646E-10 7.1566E-10 1.05292E-09 1.18536E-09 2.43936E-09 3.08506E-09 1.17447E-08;   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                   2.41252E-09 3.38382E-09 3.02104E-09 3.5849E-09 3.73978E-09 4.09728E-09 3.92942E-09 4.81294E-09 % TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                 ];

exp_sampleSdValues = [ 3.443514E-10 5.213701E-08 1.111026E-07 8.513934E-08 9.374364E-08 1.289338E-07 6.460196E-08 4.498609E-08;   % 1: 11-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       4.657825E-10 6.037952E-10 1.380479E-10 5.084204E-10 5.322344E-10 6.234099E-10 2.207741E-10 5.400302E-10;   % 2: 13,14-DIHYDRO-15-KETO-PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       1.008145E-10 1.744212E-10 4.769414E-10 3.87704E-10 4.154003E-10 9.875526E-10 7.146319E-10 6.822416E-10;   % 3: 15-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       2.354823E-11 3.412337E-10 8.788877E-10 5.633387E-10 5.90627E-10 1.023895E-09 3.112452E-10 2.05294E-10;   % 4: 5-HETE in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       4.628897E-07 2.125562E-07 6.996615E-07 1.50768E-06 1.072196E-06 1.908691E-06 7.281664E-07 4.23294E-07;   % 5: AA in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       3.677292E-11 6.8945E-11 1.306806E-10 1.029142E-10 9.738598E-11 1.31918E-10 5.05421E-11 2.334386E-11;   % 6: LTB4 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       1.146432E-10 4.488496E-09 1.56258E-08 1.107727E-08 1.228951E-08 2.591358E-08 2.901276E-08 2.486428E-08;   % 7: PGD2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       1.676625E-11 4.324049E-11 9.680724E-11 6.427578E-11 1.038831E-10 2.238192E-10 4.957417E-10 1.260741E-09;   % 8: PGE2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       5.967294E-10 3.06144E-10 6.124253E-10 4.462022E-10 6.026679E-10 1.79964E-09 2.900748E-09 1.292427E-08;   % 9: PGJ2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                       1.285294E-09 1.227279E-09 2.592808E-09 1.408058E-09 1.725828E-09 1.554829E-09 1.62344E-09 1.917528E-09 % TXB2 in Ecs (Lipid) (Bmdm_kdo_lipida_atp) (Data)
                     ];

lower_timeIndexes = zeros(exp_timepoints_in_simTime_length,size(unique_exp_cellTypes,1));
upper_timeIndexes = zeros(exp_timepoints_in_simTime_length,size(unique_exp_cellTypes,1));
relative_positions_between_upper_and_lower_timepoints = zeros(exp_timepoints_in_simTime_length,size(unique_exp_cellTypes,1));
squared_residuals_matrix = zeros(exp_timepoints_in_simTime_length,exp_molecules_length);
gof_valueCounts_matrix = zeros(exp_timepoints_in_simTime_length,exp_molecules_length);

% Initialize vector and matrixes for molecules with experimental data - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identify timepoint upper and lower indexes - START

length_predicted_time = length(time);
unique_exp_cellTypes_length = length(unique_exp_cellTypes);
for indexCellType = 1:unique_exp_cellTypes_length
    current_cellType = unique_exp_cellTypes(indexCellType);
    indexesCurrentCellType = find(statevar_cellType==current_cellType);
    firstIndexCurrentCellType = indexesCurrentCellType(1);
    current_isRealNumber = ~isnan(statevar(:,firstIndexCurrentCellType));
    current_cellType_predictedTimeIndexes = 1:length_predicted_time;
    current_cellType_predictedTimeIndexes = current_cellType_predictedTimeIndexes(current_isRealNumber);
    length_current_cellType_predictedTimeIndexes = length(current_cellType_predictedTimeIndexes);
    for indexExpTimepoint = 1:exp_timepoints_in_simTime_length
        current_exp_timepoint = exp_timepoints(indexExpTimepoint);
        for indexCurrentCellTypePredictedTime = 2:length_current_cellType_predictedTimeIndexes
            current_timeIndex = current_cellType_predictedTimeIndexes(indexCurrentCellTypePredictedTime);
            previous_timeIndex = current_cellType_predictedTimeIndexes(indexCurrentCellTypePredictedTime-1);
            current_time = time(current_timeIndex);
            previous_time = time(previous_timeIndex);
            if (previous_time==current_exp_timepoint)
                lower_timeIndexes(indexExpTimepoint,indexCellType) = previous_timeIndex;
                upper_timeIndexes(indexExpTimepoint,indexCellType) = previous_timeIndex;
                relative_positions_between_upper_and_lower_timepoints(indexExpTimepoint,indexCellType) = 1;
                break;
            elseif ((previous_time<current_exp_timepoint)&&(current_time>current_exp_timepoint))
                lower_timeIndexes(indexExpTimepoint,indexCellType) = previous_timeIndex;
                upper_timeIndexes(indexExpTimepoint,indexCellType) = current_timeIndex
                relative_positions_between_upper_and_lower_timepoints(indexExpTimepoint,indexCellType) = (current_exp_timepoint - previous_time) / (current_time - previous_time);
                break;
            elseif (current_time == current_exp_timepoint)
                lower_timeIndexes(indexExpTimepoint,indexCellType) = current_timeIndex;
                upper_timeIndexes(indexExpTimepoint,indexCellType) = current_timeIndex;
                relative_positions_between_upper_and_lower_timepoints(indexExpTimepoint,indexCellType) = 1;
                break;
            end
        end
    end
end

% Identify timepoint upper and lower indexes - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate squared residuals - START

for indexExpMolecule = 1:exp_molecules_length
    indexStatevarCol = exp_statevarIndex(indexExpMolecule);
    current_cellType = exp_cellType(indexExpMolecule);
    indexCurrentCellType = find(unique_exp_cellTypes == current_cellType);
    max_value = max(exp_meanValues(indexExpMolecule,:));
    for indexExpTimepoint = 1:exp_timepoints_in_simTime_length
        current_exp_mean = exp_meanValues(indexExpMolecule,indexExpTimepoint);
        if (isnan(current_exp_mean))
           squared_residuals_matrix(indexExpTimepoint, indexCurrentCellType) = NaN;
        else
           %current_exp_sd = exp_sampleSdValues(indexExpMolecule,indexExpTimepoint);
           current_denominator = max_value;
           current_lower_simTimeIndex = lower_timeIndexes(indexExpTimepoint, indexCurrentCellType);
           current_upper_simTimeIndex = upper_timeIndexes(indexExpTimepoint, indexCurrentCellType);
           current_relative_position = relative_positions_between_upper_and_lower_timepoints(indexExpTimepoint, indexCurrentCellType);
           current_predicted_lower_value = statevar(current_lower_simTimeIndex,indexStatevarCol);
           current_predicted_upper_value = statevar(current_upper_simTimeIndex,indexStatevarCol);
           current_predicted_value =   current_predicted_lower_value... 
                                     + (current_predicted_upper_value - current_predicted_lower_value) * current_relative_position;
           squared_residuals = ((current_exp_mean - current_predicted_value) / current_denominator)^2;
           squared_residuals_matrix(indexExpTimepoint,indexExpMolecule) = squared_residuals;
        end
    end
end
% Calculate squared residuals - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate mean and sampleSD of squared residuals for each molecule in each cell type - START

Gof_eachMoleculeCellType_completeName_vector = strings(exp_molecules_length,1);
Gof_eachMoleculeCellType_mean_vector = zeros(exp_molecules_length,1);
Gof_eachMoleculeCellType_sampleSD_vector = zeros(exp_molecules_length,1);
for indexExpMolecule = 1:exp_molecules_length
    current_sum = 0;
    current_squared_sum = 0;
    current_value_counts = 0;
    for indexExpTimepoint = 1:exp_timepoints_in_simTime_length
        current_squared_residual = squared_residuals_matrix(indexExpTimepoint,indexExpMolecule);
        if (~isnan(current_squared_residual))
            current_sum = current_sum + current_squared_residual;
            current_squared_sum = current_squared_sum + current_squared_residual^2;
            current_value_counts = current_value_counts+1;
        end
    end
    current_mean = current_sum / current_value_counts;
    current_sampleSD = sqrt(current_squared_sum/current_value_counts - current_mean^2) * sqrt(current_value_counts/(current_value_counts-1));
    Gof_eachMoleculeCellType_completeName_vector(indexExpMolecule) = strcat(exp_cellType(indexExpMolecule),'_',exp_odeName(indexExpMolecule));
    Gof_eachMoleculeCellType_mean_vector(indexExpMolecule) = current_mean;
    Gof_eachMoleculeCellType_sampleSD_vector(indexExpMolecule) = current_sampleSD;
end
% Calculate mean and sampleSD of squared residuals for each molecule in each cell type - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate mean and sampleSD of squared residuals across all molecules in each cellType - START

cell_types = unique(exp_cellType);
cell_types_length = length(cell_types);
Gof_eachCellType_name_vector = strings(cell_types_length,1);
Gof_eachCellType_mean_vector = zeros(cell_types_length,1);
Gof_eachCellType_sampleSD_vector = zeros(cell_types_length,1);
for indexCellType = 1:cell_types_length
    current_cell_type = cell_types(indexCellType);
    indexesCurrentCellType = find(exp_cellType == current_cell_type);
    current_squared_sum = 0;
    current_value_counts = 0;
    length_indexes = length(indexesCurrentCellType);
    for indexIndex = 1:length_indexes
        indexExpMolecule = indexesCurrentCellType(indexIndex);
        for indexExpTimepoint = 1:exp_timepoints_in_simTime_length
            current_squared_residual = squared_residuals_matrix(indexExpTimepoint,indexExpMolecule);
            if (~isnan(current_squared_residual))
                current_sum = current_sum + current_squared_residual;
                current_squared_sum = current_squared_sum + current_squared_residual^2;
                current_value_counts = current_value_counts+1;
            end
        end
    end
    current_mean = current_sum / current_value_counts;
    current_sampleSD = sqrt(current_squared_sum/current_value_counts - current_mean^2) * sqrt(current_value_counts/(current_value_counts-1));
    Gof_eachCellType_name_vector(indexCellType) = current_cell_type;
    Gof_eachCellType_mean_vector(indexCellType) = current_mean;
    Gof_eachCellType_sampleSD_vector(indexCellType) = current_sampleSD;
end

% Calculate mean and sampleSD of squared residuals across all molecules in each cellType - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate mean and sampleSD of squared residuals across all molecules across all cellTypes - START

cell_types = unique(exp_cellType);
cell_types_length = length(cell_types);
current_squared_sum = 0;
current_value_counts = 0;
for indexCellType = 1:cell_types_length
    current_cell_type = cell_types(indexCellType);
    indexesCurrentCellType = find(exp_cellType == current_cell_type);
    length_indexes = length(indexesCurrentCellType);
    for indexIndex = 1:length_indexes
        indexExpMolecule = indexesCurrentCellType(indexIndex);
        for indexExpTimepoint = 1:exp_timepoints_in_simTime_length
            current_squared_residual = squared_residuals_matrix(indexExpTimepoint,indexExpMolecule);
            if (~isnan(current_squared_residual))
                current_sum = current_sum + current_squared_residual;
                current_squared_sum = current_squared_sum + current_squared_residual^2;
                current_value_counts = current_value_counts+1;
            end
        end
    end
end
current_mean = current_sum / current_value_counts;
current_sampleSD = sqrt(current_squared_sum/current_value_counts - current_mean^2) * sqrt(current_value_counts/(current_value_counts-1));
Gof_mean_vector = current_mean;
Gof_sampleSD_vector = current_sampleSD;

% Calculate mean and sampleSD of squared residuals across all molecules across all cellTypes - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end
