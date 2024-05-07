function [pos] = AA_plot_goodness_of_fit_values(Gof_eachMoleculeCellType_completeName_vector,Gof_eachMoleculeCellType_mean_vector,Gof_eachMoleculeCellType_sampleSD_vector,Gof_eachCellType_name_vector,Gof_eachCellType_mean_vector,Gof_eachCellType_sampleSD_vector)
pos = -1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot goodness of fit results - START

CellType_values_color = 'green';
Metabolites_values_color = 'blue';
Overall_goodness_of_fit_color = 'orange';
subplot_rows = 1;
subplot_cols = 2;
indexSubplot = 0;

figure;
indexSubplot = indexSubplot + 1;
subplot(subplot_rows,subplot_cols,indexSubplot);
bar_plot = barh(Gof_eachCellType_mean_vector);
set(bar_plot,'FaceColor',CellType_values_color);
%errorbar(Gof_eachCellType_mean_vector,1:length(Gof_eachCellType_mean_vector),Gof_eachCellType_sampleSD_vector,'horizontal');
set(gca, 'YTick', 1:length(Gof_eachCellType_name_vector), 'YTickLabel', strrep(Gof_eachCellType_name_vector,"_"," "));
title({'Mean normalized goodnes of fit';'for each cell type';'across metabolites'},'FontSize',15);

indexSubplot = indexSubplot + 1;
subplot(subplot_rows, subplot_cols, indexSubplot);
bar_plot = barh(Gof_eachMoleculeCellType_mean_vector);
set(bar_plot,'FaceColor',Metabolites_values_color);
%errorbar(Gof_eachMoleculeCellType_mean_vector,1:length(Gof_eachMoleculeCellType_mean_vector),Gof_eachMoleculeCellType_sampleSD_vector,'horizontal');
set(gca, 'YTick', 1:length(Gof_eachMoleculeCellType_completeName_vector), 'YTickLabel', strrep(Gof_eachMoleculeCellType_completeName_vector,"_"," "));
title({'Mean normalized goodnes of fit';'for each metabolite';'in each cell type'},'FontSize',15);

% Plot goodness of fit results - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

