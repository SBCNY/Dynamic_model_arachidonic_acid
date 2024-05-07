function [pos] = AA_plot_experimental_and_predicted_values(statevar,time_2,mRNA_initial_concentration);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assign statevar output to variables, define experimental values and calculate goodness of fit - START

Bmdm_kdo_lipida_atp_predictedExp_color = '#0F722C';
Bmdm_kdo_lipida_atp_predicted_color = '#002D6D';
Bmdm_kdo_lipida_atp_input_color = '#539AFF';
subplot_rows = 4;
subplot_cols = 3;
max_time = 1200;

figure;
indexSubplot = 0;
%%%%%%%%%%%%%%%%%% Plot Ecs_11_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_11_HETE = statevar(:,107);
isRealNumber = ~isnan(Ecs_11_HETE);
Ecs_11_HETE = Ecs_11_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_11_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_11_HETE,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 1200 15 480 60 120 30 240];
Ecs_11_HETE_exp_means = [4.1008E-10 2.997852E-08 3.205532E-08 4.166382E-08 5.151432E-08 5.692104E-08 6.575008E-08 8.135556E-08];
Ecs_11_HETE_exp_sds = [3.443514E-10 4.498609E-08 5.213701E-08 6.460196E-08 8.513934E-08 9.374364E-08 1.111026E-07 1.289338E-07];
errorbar(exp_timepoints,Ecs_11_HETE_exp_means,Ecs_11_HETE_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_11_HETE),min(Ecs_11_HETE_exp_means)) max(max(Ecs_11_HETE(1:length(Ecs_11_HETE))),max(Ecs_11_HETE_exp_means+Ecs_11_HETE_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_13_14_DIHYDRO_15_KETO_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_13_14_DIHYDRO_15_KETO_PGD2 = statevar(:,109);
isRealNumber = ~isnan(Ecs_13_14_DIHYDRO_15_KETO_PGD2);
Ecs_13_14_DIHYDRO_15_KETO_PGD2 = Ecs_13_14_DIHYDRO_15_KETO_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_13_14_DIHYDRO_15_KETO_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_13_14_DIHYDRO_15_KETO_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 30 15 60 120 480 1200 240];
Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_means = [4.3934E-10 7.0004E-10 9.0134E-10 9.35E-10 1.16182E-09 1.26214E-09 1.5488E-09 1.73888E-09];
Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_sds = [4.657825E-10 1.380479E-10 6.037952E-10 5.084204E-10 5.322344E-10 2.207741E-10 5.400302E-10 6.234099E-10];
errorbar(exp_timepoints,Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_means,Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_13_14_DIHYDRO_15_KETO_PGD2),min(Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_means)) max(max(Ecs_13_14_DIHYDRO_15_KETO_PGD2(1:length(Ecs_13_14_DIHYDRO_15_KETO_PGD2))),max(Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_means+Ecs_13_14_DIHYDRO_15_KETO_PGD2_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_15_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_15_HETE = statevar(:,113);
isRealNumber = ~isnan(Ecs_15_HETE);
Ecs_15_HETE = Ecs_15_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_15_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_15_HETE,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 15 30 60 120 1200 480 240];
Ecs_15_HETE_exp_means = [1.6346E-10 4.5474E-10 5.6452E-10 7.3106E-10 8.2456E-10 8.294E-10 9.24E-10 1.42978E-09];
Ecs_15_HETE_exp_sds = [1.008145E-10 1.744212E-10 4.769414E-10 3.87704E-10 4.154003E-10 6.822416E-10 7.146319E-10 9.875526E-10];
errorbar(exp_timepoints,Ecs_15_HETE_exp_means,Ecs_15_HETE_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_15_HETE),min(Ecs_15_HETE_exp_means)) max(max(Ecs_15_HETE(1:length(Ecs_15_HETE))),max(Ecs_15_HETE_exp_means+Ecs_15_HETE_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_5_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_5_HETE = statevar(:,114);
isRealNumber = ~isnan(Ecs_5_HETE);
Ecs_5_HETE = Ecs_5_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_5_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_5_HETE,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 1200 480 15 30 120 60 240];
Ecs_5_HETE_exp_means = [1.9734E-10 3.795E-10 5.181E-10 5.7662E-10 8.8352E-10 9.8472E-10 9.8846E-10 1.133E-09];
Ecs_5_HETE_exp_sds = [2.354823E-11 2.05294E-10 3.112452E-10 3.412337E-10 8.788877E-10 5.90627E-10 5.633387E-10 1.023895E-09];
errorbar(exp_timepoints,Ecs_5_HETE_exp_means,Ecs_5_HETE_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_5_HETE),min(Ecs_5_HETE_exp_means)) max(max(Ecs_5_HETE(1:length(Ecs_5_HETE))),max(Ecs_5_HETE_exp_means+Ecs_5_HETE_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_AA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_AA = statevar(:,115);
isRealNumber = ~isnan(Ecs_AA);
Ecs_AA = Ecs_AA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_AA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_AA,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 1200 15 480 30 60 120 240];
Ecs_AA_exp_means = [6.34788E-07 9.486994E-07 1.056095E-06 1.406618E-06 1.887149E-06 3.227506E-06 3.326286E-06 3.547064E-06];
Ecs_AA_exp_sds = [4.628897E-07 4.23294E-07 2.125562E-07 7.281664E-07 6.996615E-07 1.50768E-06 1.072196E-06 1.908691E-06];
errorbar(exp_timepoints,Ecs_AA_exp_means,Ecs_AA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_AA),min(Ecs_AA_exp_means)) max(max(Ecs_AA(1:length(Ecs_AA))),max(Ecs_AA_exp_means+Ecs_AA_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_LTB4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_LTB4 = statevar(:,117);
isRealNumber = ~isnan(Ecs_LTB4);
Ecs_LTB4 = Ecs_LTB4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_LTB4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_LTB4,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 1200 480 15 120 240 60 30];
Ecs_LTB4_exp_means = [2.684E-11 4.752E-11 8.14E-11 1.0054E-10 1.474E-10 1.5554E-10 1.5994E-10 1.6016E-10];
Ecs_LTB4_exp_sds = [3.677292E-11 2.334386E-11 5.05421E-11 6.8945E-11 9.738598E-11 1.31918E-10 1.029142E-10 1.306806E-10];
errorbar(exp_timepoints,Ecs_LTB4_exp_means,Ecs_LTB4_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_LTB4),min(Ecs_LTB4_exp_means)) max(max(Ecs_LTB4(1:length(Ecs_LTB4))),max(Ecs_LTB4_exp_means+Ecs_LTB4_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_PGD2 = statevar(:,120);
isRealNumber = ~isnan(Ecs_PGD2);
Ecs_PGD2 = Ecs_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 15 30 60 120 1200 480 240];
Ecs_PGD2_exp_means = [2.6224E-10 1.565036E-08 1.628352E-08 1.632026E-08 1.861112E-08 3.270498E-08 3.726492E-08 4.143084E-08];
Ecs_PGD2_exp_sds = [1.146432E-10 4.488496E-09 1.56258E-08 1.107727E-08 1.228951E-08 2.486428E-08 2.901276E-08 2.591358E-08];
errorbar(exp_timepoints,Ecs_PGD2_exp_means,Ecs_PGD2_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_PGD2),min(Ecs_PGD2_exp_means)) max(max(Ecs_PGD2(1:length(Ecs_PGD2))),max(Ecs_PGD2_exp_means+Ecs_PGD2_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_PGE2 = statevar(:,121);
isRealNumber = ~isnan(Ecs_PGE2);
Ecs_PGE2 = Ecs_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 15 30 60 120 240 480 1200];
Ecs_PGE2_exp_means = [2.156E-11 9.789999E-11 1.2232E-10 1.2386E-10 1.7182E-10 4.0414E-10 6.4416E-10 1.73514E-09];
Ecs_PGE2_exp_sds = [1.676625E-11 4.324049E-11 9.680724E-11 6.427578E-11 1.038831E-10 2.238192E-10 4.957417E-10 1.260741E-09];
errorbar(exp_timepoints,Ecs_PGE2_exp_means,Ecs_PGE2_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_PGE2),min(Ecs_PGE2_exp_means)) max(max(Ecs_PGE2(1:length(Ecs_PGE2))),max(Ecs_PGE2_exp_means+Ecs_PGE2_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_PGJ2 = statevar(:,123);
isRealNumber = ~isnan(Ecs_PGJ2);
Ecs_PGJ2 = Ecs_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 30 15 60 120 240 480 1200];
Ecs_PGJ2_exp_means = [4.7058E-10 7.1566E-10 8.646E-10 1.05292E-09 1.18536E-09 2.43936E-09 3.08506E-09 1.17447E-08];
Ecs_PGJ2_exp_sds = [5.967294E-10 6.124253E-10 3.06144E-10 4.462022E-10 6.026679E-10 1.79964E-09 2.900748E-09 1.292427E-08];
errorbar(exp_timepoints,Ecs_PGJ2_exp_means,Ecs_PGJ2_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_PGJ2),min(Ecs_PGJ2_exp_means)) max(max(Ecs_PGJ2(1:length(Ecs_PGJ2))),max(Ecs_PGJ2_exp_means+Ecs_PGJ2_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Ecs_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_TXB2 = statevar(:,126);
isRealNumber = ~isnan(Ecs_TXB2);
Ecs_TXB2 = Ecs_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
plot(current_time_2,Ecs_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
exp_timepoints = [0 30 15 60 120 480 240 1200];
Ecs_TXB2_exp_means = [2.41252E-09 3.02104E-09 3.38382E-09 3.5849E-09 3.73978E-09 3.92942E-09 4.09728E-09 4.81294E-09];
Ecs_TXB2_exp_sds = [1.285294E-09 2.592808E-09 1.227279E-09 1.408058E-09 1.725828E-09 1.62344E-09 1.554829E-09 1.917528E-09];
errorbar(exp_timepoints,Ecs_TXB2_exp_means,Ecs_TXB2_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_predictedExp_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predictedExp_color);
ylim([min(min(Ecs_TXB2),min(Ecs_TXB2_exp_means)) max(max(Ecs_TXB2(1:length(Ecs_TXB2))),max(Ecs_TXB2_exp_means+Ecs_TXB2_exp_sds))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_11_DEHYDRO_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_11_DEHYDRO_TXB2 = statevar(:,12);
isRealNumber = ~isnan(GolgiMem_11_DEHYDRO_TXB2);
GolgiMem_11_DEHYDRO_TXB2 = GolgiMem_11_DEHYDRO_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_11_DEHYDRO_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_11_DEHYDRO_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_11_DEHYDRO_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_11_DEHYDRO_TXB2 = statevar(:,53);
isRealNumber = ~isnan(ERMem_11_DEHYDRO_TXB2);
ERMem_11_DEHYDRO_TXB2 = ERMem_11_DEHYDRO_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_11_DEHYDRO_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_11_DEHYDRO_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_11_DEHYDRO_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_11_DEHYDRO_TXB2 = statevar(:,85);
isRealNumber = ~isnan(Cyt_11_DEHYDRO_TXB2);
Cyt_11_DEHYDRO_TXB2 = Cyt_11_DEHYDRO_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_11_DEHYDRO_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_11_DEHYDRO_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_11_DEHYDRO_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_11_DEHYDRO_TXB2 = statevar(:,106);
isRealNumber = ~isnan(Ecs_11_DEHYDRO_TXB2);
Ecs_11_DEHYDRO_TXB2 = Ecs_11_DEHYDRO_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_11_DEHYDRO_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_11_DEHYDRO_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_11_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_11_HETE = statevar(:,13);
isRealNumber = ~isnan(GolgiMem_11_HETE);
GolgiMem_11_HETE = GolgiMem_11_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_11_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_11_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_11_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_11_HETE = statevar(:,54);
isRealNumber = ~isnan(ERMem_11_HETE);
ERMem_11_HETE = ERMem_11_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_11_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_11_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_11_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_11_HETE = statevar(:,86);
isRealNumber = ~isnan(Cyt_11_HETE);
Cyt_11_HETE = Cyt_11_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_11_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_11_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_11_HPETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_11_HPETE = statevar(:,14);
isRealNumber = ~isnan(GolgiMem_11_HPETE);
GolgiMem_11_HPETE = GolgiMem_11_HPETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_11_HPETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_11_HPETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_11_HPETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_11_HPETE = statevar(:,55);
isRealNumber = ~isnan(ERMem_11_HPETE);
ERMem_11_HPETE = ERMem_11_HPETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_11_HPETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_11_HPETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_11_HPETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_11_HPETE = statevar(:,87);
isRealNumber = ~isnan(Cyt_11_HPETE);
Cyt_11_HPETE = Cyt_11_HPETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_11_HPETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_11_HPETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_11_HPETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_11_HPETE = statevar(:,108);
isRealNumber = ~isnan(Ecs_11_HPETE);
Ecs_11_HPETE = Ecs_11_HPETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_11_HPETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_11_HPETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_13_14_DIHYDRO_15_KETO_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_13_14_DIHYDRO_15_KETO_PGD2 = statevar(:,15);
isRealNumber = ~isnan(GolgiMem_13_14_DIHYDRO_15_KETO_PGD2);
GolgiMem_13_14_DIHYDRO_15_KETO_PGD2 = GolgiMem_13_14_DIHYDRO_15_KETO_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_13_14_DIHYDRO_15_KETO_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_13_14_DIHYDRO_15_KETO_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_13_14_DIHYDRO_15_KETO_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_13_14_DIHYDRO_15_KETO_PGD2 = statevar(:,56);
isRealNumber = ~isnan(ERMem_13_14_DIHYDRO_15_KETO_PGD2);
ERMem_13_14_DIHYDRO_15_KETO_PGD2 = ERMem_13_14_DIHYDRO_15_KETO_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_13_14_DIHYDRO_15_KETO_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_13_14_DIHYDRO_15_KETO_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_13_14_DIHYDRO_15_KETO_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_13_14_DIHYDRO_15_KETO_PGD2 = statevar(:,88);
isRealNumber = ~isnan(Cyt_13_14_DIHYDRO_15_KETO_PGD2);
Cyt_13_14_DIHYDRO_15_KETO_PGD2 = Cyt_13_14_DIHYDRO_15_KETO_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_13_14_DIHYDRO_15_KETO_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_13_14_DIHYDRO_15_KETO_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_13_14_DIHYDRO_15_KETO_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_13_14_DIHYDRO_15_KETO_PGE2 = statevar(:,16);
isRealNumber = ~isnan(GolgiMem_13_14_DIHYDRO_15_KETO_PGE2);
GolgiMem_13_14_DIHYDRO_15_KETO_PGE2 = GolgiMem_13_14_DIHYDRO_15_KETO_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_13_14_DIHYDRO_15_KETO_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_13_14_DIHYDRO_15_KETO_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_13_14_DIHYDRO_15_KETO_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_13_14_DIHYDRO_15_KETO_PGE2 = statevar(:,57);
isRealNumber = ~isnan(ERMem_13_14_DIHYDRO_15_KETO_PGE2);
ERMem_13_14_DIHYDRO_15_KETO_PGE2 = ERMem_13_14_DIHYDRO_15_KETO_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_13_14_DIHYDRO_15_KETO_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_13_14_DIHYDRO_15_KETO_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_13_14_DIHYDRO_15_KETO_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_13_14_DIHYDRO_15_KETO_PGE2 = statevar(:,89);
isRealNumber = ~isnan(Cyt_13_14_DIHYDRO_15_KETO_PGE2);
Cyt_13_14_DIHYDRO_15_KETO_PGE2 = Cyt_13_14_DIHYDRO_15_KETO_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_13_14_DIHYDRO_15_KETO_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_13_14_DIHYDRO_15_KETO_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_13_14_DIHYDRO_15_KETO_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_13_14_DIHYDRO_15_KETO_PGE2 = statevar(:,110);
isRealNumber = ~isnan(Ecs_13_14_DIHYDRO_15_KETO_PGE2);
Ecs_13_14_DIHYDRO_15_KETO_PGE2 = Ecs_13_14_DIHYDRO_15_KETO_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_13_14_DIHYDRO_15_KETO_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_13_14_DIHYDRO_15_KETO_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA = statevar(:,17);
isRealNumber = ~isnan(GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA);
GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA = GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA = statevar(:,58);
isRealNumber = ~isnan(ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA);
ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA = ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_13_14_DIHYDRO_15_KETO_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA = statevar(:,90);
isRealNumber = ~isnan(Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA);
Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA = Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_13_14_DIHYDRO_15_KETO_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA = statevar(:,111);
isRealNumber = ~isnan(Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA);
Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA = Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_13_14_DIHYDRO_15_KETO_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_13_14_DIHYDRO_15_KETO_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_13_14_DIHYDRO_15_KETO_PGJ2 = statevar(:,91);
isRealNumber = ~isnan(Cyt_13_14_DIHYDRO_15_KETO_PGJ2);
Cyt_13_14_DIHYDRO_15_KETO_PGJ2 = Cyt_13_14_DIHYDRO_15_KETO_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_13_14_DIHYDRO_15_KETO_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_13_14_DIHYDRO_15_KETO_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_13_14_DIHYDRO_15_KETO_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_13_14_DIHYDRO_15_KETO_PGJ2 = statevar(:,112);
isRealNumber = ~isnan(Ecs_13_14_DIHYDRO_15_KETO_PGJ2);
Ecs_13_14_DIHYDRO_15_KETO_PGJ2 = Ecs_13_14_DIHYDRO_15_KETO_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_13_14_DIHYDRO_15_KETO_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_13_14_DIHYDRO_15_KETO_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_15_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_15_HETE = statevar(:,18);
isRealNumber = ~isnan(GolgiMem_15_HETE);
GolgiMem_15_HETE = GolgiMem_15_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_15_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_15_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_15_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_15_HETE = statevar(:,59);
isRealNumber = ~isnan(ERMem_15_HETE);
ERMem_15_HETE = ERMem_15_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_15_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_15_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_15_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_15_HETE = statevar(:,92);
isRealNumber = ~isnan(Cyt_15_HETE);
Cyt_15_HETE = Cyt_15_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_15_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_15_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_5_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_5_HETE = statevar(:,19);
isRealNumber = ~isnan(GolgiMem_5_HETE);
GolgiMem_5_HETE = GolgiMem_5_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_5_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_5_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_5_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_5_HETE = statevar(:,60);
isRealNumber = ~isnan(ERMem_5_HETE);
ERMem_5_HETE = ERMem_5_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_5_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_5_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_5_HETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_5_HETE = statevar(:,93);
isRealNumber = ~isnan(Cyt_5_HETE);
Cyt_5_HETE = Cyt_5_HETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_5_HETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_5_HETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_5HPETE in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_5HPETE = statevar(:,61);
isRealNumber = ~isnan(ERMem_5HPETE);
ERMem_5HPETE = ERMem_5HPETE(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_5HPETE','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_5HPETE,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_AA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_AA = statevar(:,20);
isRealNumber = ~isnan(GolgiMem_AA);
GolgiMem_AA = GolgiMem_AA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_AA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_AA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_AA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_AA = statevar(:,62);
isRealNumber = ~isnan(ERMem_AA);
ERMem_AA = ERMem_AA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_AA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_AA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_AA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_AA = statevar(:,94);
isRealNumber = ~isnan(Cyt_AA);
Cyt_AA = Cyt_AA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_AA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_AA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_AA_COA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_AA_COA = statevar(:,21);
isRealNumber = ~isnan(GolgiMem_AA_COA);
GolgiMem_AA_COA = GolgiMem_AA_COA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_AA_COA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_AA_COA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_AA_COA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_AA_COA = statevar(:,63);
isRealNumber = ~isnan(ERMem_AA_COA);
ERMem_AA_COA = ERMem_AA_COA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_AA_COA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_AA_COA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_CA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_CA = statevar(:,1);
isRealNumber = ~isnan(Cyt_CA);
Cyt_CA = Cyt_CA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_CA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
molecule_time_vector = 1:1:max_time;
molecule_timevector_length = length(molecule_time_vector);
molecule_values = zeros(molecule_timevector_length,1);
for indexTime = 1:molecule_timevector_length
  time = molecule_time_vector(indexTime);
% Expression of CA (Lipid) in Cytosol (Bmdm_kdo_lipida_atp)
if (time >= 0) && (time < 1)
   rt = time - 0;
   Cyt_CA = 1E-09 + 3.67511561730271E-07 * exp(1*rt);
elseif (time >= 1)
   rt = time - 1;
   Cyt_CA = 1E-09 + 9.99E-07 * exp(-0.1*rt);
end


  molecule_values(indexTime) = Cyt_CA;
end
plot(molecule_time_vector,molecule_values,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_LTA4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_LTA4 = statevar(:,22);
isRealNumber = ~isnan(GolgiMem_LTA4);
GolgiMem_LTA4 = GolgiMem_LTA4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_LTA4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_LTA4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_LTA4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_LTA4 = statevar(:,64);
isRealNumber = ~isnan(ERMem_LTA4);
ERMem_LTA4 = ERMem_LTA4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_LTA4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_LTA4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_LTA4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_LTA4 = statevar(:,95);
isRealNumber = ~isnan(Cyt_LTA4);
Cyt_LTA4 = Cyt_LTA4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_LTA4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_LTA4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_LTA4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_LTA4 = statevar(:,116);
isRealNumber = ~isnan(Ecs_LTA4);
Ecs_LTA4 = Ecs_LTA4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_LTA4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_LTA4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_LTB4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_LTB4 = statevar(:,23);
isRealNumber = ~isnan(GolgiMem_LTB4);
GolgiMem_LTB4 = GolgiMem_LTB4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_LTB4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_LTB4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_LTB4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_LTB4 = statevar(:,65);
isRealNumber = ~isnan(ERMem_LTB4);
ERMem_LTB4 = ERMem_LTB4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_LTB4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_LTB4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_LTB4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_LTB4 = statevar(:,96);
isRealNumber = ~isnan(Cyt_LTB4);
Cyt_LTB4 = Cyt_LTB4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_LTB4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_LTB4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_LTC4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_LTC4 = statevar(:,24);
isRealNumber = ~isnan(GolgiMem_LTC4);
GolgiMem_LTC4 = GolgiMem_LTC4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_LTC4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_LTC4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_LTC4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_LTC4 = statevar(:,66);
isRealNumber = ~isnan(ERMem_LTC4);
ERMem_LTC4 = ERMem_LTC4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_LTC4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_LTC4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_LTC4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_LTC4 = statevar(:,97);
isRealNumber = ~isnan(Cyt_LTC4);
Cyt_LTC4 = Cyt_LTC4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_LTC4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_LTC4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_LTC4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_LTC4 = statevar(:,118);
isRealNumber = ~isnan(Ecs_LTC4);
Ecs_LTC4 = Ecs_LTC4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_LTC4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_LTC4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGA2 = statevar(:,25);
isRealNumber = ~isnan(GolgiMem_PGA2);
GolgiMem_PGA2 = GolgiMem_PGA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGA2 = statevar(:,67);
isRealNumber = ~isnan(ERMem_PGA2);
ERMem_PGA2 = ERMem_PGA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PGA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PGA2 = statevar(:,98);
isRealNumber = ~isnan(Cyt_PGA2);
Cyt_PGA2 = Cyt_PGA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PGA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PGA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_PGA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_PGA2 = statevar(:,119);
isRealNumber = ~isnan(Ecs_PGA2);
Ecs_PGA2 = Ecs_PGA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_PGA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_PGA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGD2 = statevar(:,26);
isRealNumber = ~isnan(GolgiMem_PGD2);
GolgiMem_PGD2 = GolgiMem_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGD2 = statevar(:,68);
isRealNumber = ~isnan(ERMem_PGD2);
ERMem_PGD2 = ERMem_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PGD2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PGD2 = statevar(:,99);
isRealNumber = ~isnan(Cyt_PGD2);
Cyt_PGD2 = Cyt_PGD2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PGD2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PGD2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGE2 = statevar(:,27);
isRealNumber = ~isnan(GolgiMem_PGE2);
GolgiMem_PGE2 = GolgiMem_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGE2 = statevar(:,69);
isRealNumber = ~isnan(ERMem_PGE2);
ERMem_PGE2 = ERMem_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PGE2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PGE2 = statevar(:,100);
isRealNumber = ~isnan(Cyt_PGE2);
Cyt_PGE2 = Cyt_PGE2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PGE2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PGE2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGF2ALPHA = statevar(:,28);
isRealNumber = ~isnan(GolgiMem_PGF2ALPHA);
GolgiMem_PGF2ALPHA = GolgiMem_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGF2ALPHA = statevar(:,70);
isRealNumber = ~isnan(ERMem_PGF2ALPHA);
ERMem_PGF2ALPHA = ERMem_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PGF2ALPHA = statevar(:,101);
isRealNumber = ~isnan(Cyt_PGF2ALPHA);
Cyt_PGF2ALPHA = Cyt_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_PGF2ALPHA in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_PGF2ALPHA = statevar(:,122);
isRealNumber = ~isnan(Ecs_PGF2ALPHA);
Ecs_PGF2ALPHA = Ecs_PGF2ALPHA(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_PGF2ALPHA','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_PGF2ALPHA,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGH2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGH2 = statevar(:,29);
isRealNumber = ~isnan(GolgiMem_PGH2);
GolgiMem_PGH2 = GolgiMem_PGH2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGH2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGH2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGH2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGH2 = statevar(:,71);
isRealNumber = ~isnan(ERMem_PGH2);
ERMem_PGH2 = ERMem_PGH2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGH2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGH2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PGJ2 = statevar(:,30);
isRealNumber = ~isnan(GolgiMem_PGJ2);
GolgiMem_PGJ2 = GolgiMem_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PGJ2 = statevar(:,72);
isRealNumber = ~isnan(ERMem_PGJ2);
ERMem_PGJ2 = ERMem_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PGJ2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PGJ2 = statevar(:,102);
isRealNumber = ~isnan(Cyt_PGJ2);
Cyt_PGJ2 = Cyt_PGJ2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PGJ2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PGJ2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PL in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PL = statevar(:,31);
isRealNumber = ~isnan(GolgiMem_PL);
GolgiMem_PL = GolgiMem_PL(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PL','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PL,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PL in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PL = statevar(:,73);
isRealNumber = ~isnan(ERMem_PL);
ERMem_PL = ERMem_PL(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PL','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PL,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_SINK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_SINK = statevar(:,32);
isRealNumber = ~isnan(GolgiMem_SINK);
GolgiMem_SINK = GolgiMem_SINK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_SINK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_SINK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_SINK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_SINK = statevar(:,74);
isRealNumber = ~isnan(ERMem_SINK);
ERMem_SINK = ERMem_SINK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_SINK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_SINK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_SINK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_SINK = statevar(:,103);
isRealNumber = ~isnan(Cyt_SINK);
Cyt_SINK = Cyt_SINK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_SINK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_SINK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_SINK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_SINK = statevar(:,124);
isRealNumber = ~isnan(Ecs_SINK);
Ecs_SINK = Ecs_SINK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_SINK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_SINK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_TXA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_TXA2 = statevar(:,33);
isRealNumber = ~isnan(GolgiMem_TXA2);
GolgiMem_TXA2 = GolgiMem_TXA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_TXA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_TXA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_TXA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_TXA2 = statevar(:,75);
isRealNumber = ~isnan(ERMem_TXA2);
ERMem_TXA2 = ERMem_TXA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_TXA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_TXA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_TXA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_TXA2 = statevar(:,104);
isRealNumber = ~isnan(Cyt_TXA2);
Cyt_TXA2 = Cyt_TXA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_TXA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_TXA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Ecs_TXA2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Ecs_TXA2 = statevar(:,125);
isRealNumber = ~isnan(Ecs_TXA2);
Ecs_TXA2 = Ecs_TXA2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Ecs_TXA2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Ecs_TXA2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_TXB2 = statevar(:,34);
isRealNumber = ~isnan(GolgiMem_TXB2);
GolgiMem_TXB2 = GolgiMem_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_TXB2 = statevar(:,76);
isRealNumber = ~isnan(ERMem_TXB2);
ERMem_TXB2 = ERMem_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_TXB2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_TXB2 = statevar(:,105);
isRealNumber = ~isnan(Cyt_TXB2);
Cyt_TXB2 = Cyt_TXB2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_TXB2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_TXB2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_ACSL1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_ACSL1 = statevar(:,1);
isRealNumber = ~isnan(GolgiMem_ACSL1);
GolgiMem_ACSL1 = GolgiMem_ACSL1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_ACSL1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_ACSL1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_ACSL1(1:length(GolgiMem_ACSL1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(1);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_ACSL1_predicted_0min = statevar(1,1);
mRNA_initial_concentration(1) = GolgiMem_ACSL1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL1_MRNA_exp_means = [1 3.971136 3.663135 4.057676 3.666086 3.482168 2.610543 4.320511 1 3.971136 3.663135 4.057676 3.666086 3.482168 2.610543 4.320511];
Cyt_ACSL1_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL1_MRNA_exp_means = Cyt_ACSL1_MRNA_exp_means * mRNA_initial_concentration(1);
Cyt_ACSL1_MRNA_exp_sds   = Cyt_ACSL1_MRNA_exp_sds * mRNA_initial_concentration(1);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL1_MRNA =       ((1 - mRNA_initial_concentration(1)) * rt + mRNA_initial_concentration(1) * 1 + mRNA_initial_concentration(1) * (1 - mRNA_initial_concentration(1)) * (3.97113561630249 * (1 - mRNA_initial_concentration(1)) + -0.655827188491821 * mRNA_initial_concentration(1)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 1 + rt * 3.97113561630249 + rt * (1 - rt) * (-0.655827188491821 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.97113561630249 + rt * 3.66313529014587 + rt * (1 - rt) * (0.101054120063782 * (1 - rt) + -0.0117829176704989 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.66313529014587 + rt * 4.05767583847046 + rt * (1 - rt) * (-0.0590335249900818 * (1 - rt) + 0.00340985811587431 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 4.05767583847046 + rt * 3.66608643531799 + rt * (1 - rt) * (0.0149815201759338 * (1 - rt) + -0.000969644843580742 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.66608643531799 + rt * 3.48216843605042 + rt * (1 - rt) * (-0.00629737377166748 * (1 - rt) + 0.00022011338963704 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.48216843605042 + rt * 2.61054253578186 + rt * (1 - rt) * (0.0180201917886734 * (1 - rt) + -5.06717456546325E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 2.61054253578186 + rt * 4.32051086425781 + rt * (1 - rt) * (0.0180201917886734 * (1 - rt) + 1.57194847634298E-05 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL1_MRNA;
end
max_predicted_values = max(GolgiMem_ACSL1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_ACSL1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL1_MRNA_exp_means = (Cyt_ACSL1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL1_MRNA_exp_means,Cyt_ACSL1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_ACSL1(1:length(GolgiMem_ACSL1))),max(Cyt_ACSL1_MRNA_exp_means+Cyt_ACSL1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(1) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ACSL1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ACSL1 = statevar(:,35);
isRealNumber = ~isnan(ERMem_ACSL1);
ERMem_ACSL1 = ERMem_ACSL1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ACSL1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ACSL1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ACSL1(1:length(ERMem_ACSL1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(1);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ACSL1_predicted_0min = statevar(1,35);
mRNA_initial_concentration(1) = ERMem_ACSL1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL1_MRNA_exp_means = [1 3.971136 3.663135 4.057676 3.666086 3.482168 2.610543 4.320511 1 3.971136 3.663135 4.057676 3.666086 3.482168 2.610543 4.320511];
Cyt_ACSL1_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL1_MRNA_exp_means = Cyt_ACSL1_MRNA_exp_means * mRNA_initial_concentration(1);
Cyt_ACSL1_MRNA_exp_sds   = Cyt_ACSL1_MRNA_exp_sds * mRNA_initial_concentration(1);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL1_MRNA =       ((1 - mRNA_initial_concentration(1)) * rt + mRNA_initial_concentration(1) * 1 + mRNA_initial_concentration(1) * (1 - mRNA_initial_concentration(1)) * (3.97113561630249 * (1 - mRNA_initial_concentration(1)) + -0.655827188491821 * mRNA_initial_concentration(1)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 1 + rt * 3.97113561630249 + rt * (1 - rt) * (-0.655827188491821 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.97113561630249 + rt * 3.66313529014587 + rt * (1 - rt) * (0.101054120063782 * (1 - rt) + -0.0117829176704989 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.66313529014587 + rt * 4.05767583847046 + rt * (1 - rt) * (-0.0590335249900818 * (1 - rt) + 0.00340985811587431 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 4.05767583847046 + rt * 3.66608643531799 + rt * (1 - rt) * (0.0149815201759338 * (1 - rt) + -0.000969644843580742 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.66608643531799 + rt * 3.48216843605042 + rt * (1 - rt) * (-0.00629737377166748 * (1 - rt) + 0.00022011338963704 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 3.48216843605042 + rt * 2.61054253578186 + rt * (1 - rt) * (0.0180201917886734 * (1 - rt) + -5.06717456546325E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL1_MRNA = mRNA_initial_concentration(1) * ((1 - rt) * 2.61054253578186 + rt * 4.32051086425781 + rt * (1 - rt) * (0.0180201917886734 * (1 - rt) + 1.57194847634298E-05 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL1_MRNA;
end
max_predicted_values = max(ERMem_ACSL1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ACSL1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL1_MRNA_exp_means = (Cyt_ACSL1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL1_MRNA_exp_means,Cyt_ACSL1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ACSL1(1:length(ERMem_ACSL1))),max(Cyt_ACSL1_MRNA_exp_means+Cyt_ACSL1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(1) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_ACSL3 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_ACSL3 = statevar(:,2);
isRealNumber = ~isnan(GolgiMem_ACSL3);
GolgiMem_ACSL3 = GolgiMem_ACSL3(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_ACSL3','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_ACSL3,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_ACSL3(1:length(GolgiMem_ACSL3)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(2);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_ACSL3_predicted_0min = statevar(1,2);
mRNA_initial_concentration(2) = GolgiMem_ACSL3_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL3_MRNA_exp_means = [1 0.2739364 0.2667108 0.316196 0.6794357 1.036748 0.527055 0.3788113 1 0.2739364 0.2667108 0.316196 0.6794357 1.036748 0.527055 0.3788113];
Cyt_ACSL3_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL3_MRNA_exp_means = Cyt_ACSL3_MRNA_exp_means * mRNA_initial_concentration(2);
Cyt_ACSL3_MRNA_exp_sds   = Cyt_ACSL3_MRNA_exp_sds * mRNA_initial_concentration(2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL3_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL3_MRNA =       ((1 - mRNA_initial_concentration(2)) * rt + mRNA_initial_concentration(2) * 1 + mRNA_initial_concentration(2) * (1 - mRNA_initial_concentration(2)) * (0.273936420679092 * (1 - mRNA_initial_concentration(2)) + 0.143767589330673 * mRNA_initial_concentration(2)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 1 + rt * 0.273936420679092 + rt * (1 - rt) * (0.143767589330673 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.273936420679092 + rt * 0.266710788011551 + rt * (1 - rt) * (0.00639365017414093 * (1 - rt) + 0.00249524840761741 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.266710788011551 + rt * 0.316196024417877 + rt * (1 - rt) * (0.0132134586572647 * (1 - rt) + -0.000396487675091436 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.316196024417877 + rt * 0.679435670375824 + rt * (1 - rt) * (-0.00922917872667313 * (1 - rt) + 0.000154960493936966 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.679435670375824 + rt * 1.03674781322479 + rt * (1 - rt) * (-0.0153039634227753 * (1 - rt) + -4.64133333107683E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 1.03674781322479 + rt * 0.527055025100708 + rt * (1 - rt) * (0.00575347766280174 * (1 - rt) + -1.5150069758454E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.527055025100708 + rt * 0.378811299800873 + rt * (1 - rt) * (0.00575347766280174 * (1 - rt) + 4.89036166918266E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL3_MRNA;
end
max_predicted_values = max(GolgiMem_ACSL3);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_ACSL3);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL3_MRNA_exp_means = (Cyt_ACSL3_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL3_MRNA_exp_means,Cyt_ACSL3_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_ACSL3(1:length(GolgiMem_ACSL3))),max(Cyt_ACSL3_MRNA_exp_means+Cyt_ACSL3_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(2) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ACSL3 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ACSL3 = statevar(:,36);
isRealNumber = ~isnan(ERMem_ACSL3);
ERMem_ACSL3 = ERMem_ACSL3(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ACSL3','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ACSL3,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ACSL3(1:length(ERMem_ACSL3)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(2);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ACSL3_predicted_0min = statevar(1,36);
mRNA_initial_concentration(2) = ERMem_ACSL3_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL3_MRNA_exp_means = [1 0.2739364 0.2667108 0.316196 0.6794357 1.036748 0.527055 0.3788113 1 0.2739364 0.2667108 0.316196 0.6794357 1.036748 0.527055 0.3788113];
Cyt_ACSL3_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL3_MRNA_exp_means = Cyt_ACSL3_MRNA_exp_means * mRNA_initial_concentration(2);
Cyt_ACSL3_MRNA_exp_sds   = Cyt_ACSL3_MRNA_exp_sds * mRNA_initial_concentration(2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL3_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL3_MRNA =       ((1 - mRNA_initial_concentration(2)) * rt + mRNA_initial_concentration(2) * 1 + mRNA_initial_concentration(2) * (1 - mRNA_initial_concentration(2)) * (0.273936420679092 * (1 - mRNA_initial_concentration(2)) + 0.143767589330673 * mRNA_initial_concentration(2)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 1 + rt * 0.273936420679092 + rt * (1 - rt) * (0.143767589330673 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.273936420679092 + rt * 0.266710788011551 + rt * (1 - rt) * (0.00639365017414093 * (1 - rt) + 0.00249524840761741 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.266710788011551 + rt * 0.316196024417877 + rt * (1 - rt) * (0.0132134586572647 * (1 - rt) + -0.000396487675091436 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.316196024417877 + rt * 0.679435670375824 + rt * (1 - rt) * (-0.00922917872667313 * (1 - rt) + 0.000154960493936966 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.679435670375824 + rt * 1.03674781322479 + rt * (1 - rt) * (-0.0153039634227753 * (1 - rt) + -4.64133333107683E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 1.03674781322479 + rt * 0.527055025100708 + rt * (1 - rt) * (0.00575347766280174 * (1 - rt) + -1.5150069758454E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL3_MRNA = mRNA_initial_concentration(2) * ((1 - rt) * 0.527055025100708 + rt * 0.378811299800873 + rt * (1 - rt) * (0.00575347766280174 * (1 - rt) + 4.89036166918266E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL3_MRNA;
end
max_predicted_values = max(ERMem_ACSL3);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ACSL3);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL3_MRNA_exp_means = (Cyt_ACSL3_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL3_MRNA_exp_means,Cyt_ACSL3_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ACSL3(1:length(ERMem_ACSL3))),max(Cyt_ACSL3_MRNA_exp_means+Cyt_ACSL3_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(2) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_ACSL4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_ACSL4 = statevar(:,3);
isRealNumber = ~isnan(GolgiMem_ACSL4);
GolgiMem_ACSL4 = GolgiMem_ACSL4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_ACSL4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_ACSL4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_ACSL4(1:length(GolgiMem_ACSL4)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(3);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_ACSL4_predicted_0min = statevar(1,3);
mRNA_initial_concentration(3) = GolgiMem_ACSL4_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL4_MRNA_exp_means = [1 0.710413 0.6868555 0.9126227 0.7793049 0.7335303 1.335901 1.263737 1 0.710413 0.6868555 0.9126227 0.7793049 0.7335303 1.335901 1.263737];
Cyt_ACSL4_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL4_MRNA_exp_means = Cyt_ACSL4_MRNA_exp_means * mRNA_initial_concentration(3);
Cyt_ACSL4_MRNA_exp_sds   = Cyt_ACSL4_MRNA_exp_sds * mRNA_initial_concentration(3);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL4_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL4_MRNA =       ((1 - mRNA_initial_concentration(3)) * rt + mRNA_initial_concentration(3) * 1 + mRNA_initial_concentration(3) * (1 - mRNA_initial_concentration(3)) * (0.710413038730621 * (1 - mRNA_initial_concentration(3)) + 0.0532058835029602 * mRNA_initial_concentration(3)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 1 + rt * 0.710413038730621 + rt * (1 - rt) * (0.0532058835029602 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.710413038730621 + rt * 0.686855494976044 + rt * (1 - rt) * (0.0272882342338562 * (1 - rt) + 0.000827192242825805 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.686855494976044 + rt * 0.91262274980545 + rt * (1 - rt) * (-0.0292426198720932 * (1 - rt) + 0.000238289928894127 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.91262274980545 + rt * 0.7793048620224 + rt * (1 - rt) * (0.00552152991294861 * (1 - rt) + -0.000218858100300077 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.7793048620224 + rt * 0.733530282974243 + rt * (1 - rt) * (0.00867399275302887 * (1 - rt) + 5.00523385849467E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.733530282974243 + rt * 1.33590054512024 + rt * (1 - rt) * (-0.00783030887444814 * (1 - rt) + 5.28478366976998E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 1.33590054512024 + rt * 1.26373720169067 + rt * (1 - rt) * (-0.00783030887444814 * (1 - rt) + -4.73888383082965E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL4_MRNA;
end
max_predicted_values = max(GolgiMem_ACSL4);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_ACSL4);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL4_MRNA_exp_means = (Cyt_ACSL4_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL4_MRNA_exp_means,Cyt_ACSL4_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_ACSL4(1:length(GolgiMem_ACSL4))),max(Cyt_ACSL4_MRNA_exp_means+Cyt_ACSL4_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(3) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ACSL4 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ACSL4 = statevar(:,37);
isRealNumber = ~isnan(ERMem_ACSL4);
ERMem_ACSL4 = ERMem_ACSL4(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ACSL4','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ACSL4,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ACSL4(1:length(ERMem_ACSL4)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(3);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ACSL4_predicted_0min = statevar(1,37);
mRNA_initial_concentration(3) = ERMem_ACSL4_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL4_MRNA_exp_means = [1 0.710413 0.6868555 0.9126227 0.7793049 0.7335303 1.335901 1.263737 1 0.710413 0.6868555 0.9126227 0.7793049 0.7335303 1.335901 1.263737];
Cyt_ACSL4_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL4_MRNA_exp_means = Cyt_ACSL4_MRNA_exp_means * mRNA_initial_concentration(3);
Cyt_ACSL4_MRNA_exp_sds   = Cyt_ACSL4_MRNA_exp_sds * mRNA_initial_concentration(3);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL4_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL4_MRNA =       ((1 - mRNA_initial_concentration(3)) * rt + mRNA_initial_concentration(3) * 1 + mRNA_initial_concentration(3) * (1 - mRNA_initial_concentration(3)) * (0.710413038730621 * (1 - mRNA_initial_concentration(3)) + 0.0532058835029602 * mRNA_initial_concentration(3)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 1 + rt * 0.710413038730621 + rt * (1 - rt) * (0.0532058835029602 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.710413038730621 + rt * 0.686855494976044 + rt * (1 - rt) * (0.0272882342338562 * (1 - rt) + 0.000827192242825805 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.686855494976044 + rt * 0.91262274980545 + rt * (1 - rt) * (-0.0292426198720932 * (1 - rt) + 0.000238289928894127 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.91262274980545 + rt * 0.7793048620224 + rt * (1 - rt) * (0.00552152991294861 * (1 - rt) + -0.000218858100300077 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.7793048620224 + rt * 0.733530282974243 + rt * (1 - rt) * (0.00867399275302887 * (1 - rt) + 5.00523385849467E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 0.733530282974243 + rt * 1.33590054512024 + rt * (1 - rt) * (-0.00783030887444814 * (1 - rt) + 5.28478366976998E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL4_MRNA = mRNA_initial_concentration(3) * ((1 - rt) * 1.33590054512024 + rt * 1.26373720169067 + rt * (1 - rt) * (-0.00783030887444814 * (1 - rt) + -4.73888383082965E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL4_MRNA;
end
max_predicted_values = max(ERMem_ACSL4);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ACSL4);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL4_MRNA_exp_means = (Cyt_ACSL4_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL4_MRNA_exp_means,Cyt_ACSL4_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ACSL4(1:length(ERMem_ACSL4))),max(Cyt_ACSL4_MRNA_exp_means+Cyt_ACSL4_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(3) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_ACSL5 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_ACSL5 = statevar(:,4);
isRealNumber = ~isnan(GolgiMem_ACSL5);
GolgiMem_ACSL5 = GolgiMem_ACSL5(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_ACSL5','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_ACSL5,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_ACSL5(1:length(GolgiMem_ACSL5)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(4);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_ACSL5_predicted_0min = statevar(1,4);
mRNA_initial_concentration(4) = GolgiMem_ACSL5_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL5_MRNA_exp_means = [1 1.266422 1.298942 1.11858 1.139065 0.8794881 0.9457046 1.200687 1 1.266422 1.298942 1.11858 1.139065 0.8794881 0.9457046 1.200687];
Cyt_ACSL5_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL5_MRNA_exp_means = Cyt_ACSL5_MRNA_exp_means * mRNA_initial_concentration(4);
Cyt_ACSL5_MRNA_exp_sds   = Cyt_ACSL5_MRNA_exp_sds * mRNA_initial_concentration(4);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL5_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL5_MRNA =       ((1 - mRNA_initial_concentration(4)) * rt + mRNA_initial_concentration(4) * 1 + mRNA_initial_concentration(4) * (1 - mRNA_initial_concentration(4)) * (1.26642191410065 * (1 - mRNA_initial_concentration(4)) + -0.0467803716659546 * mRNA_initial_concentration(4)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1 + rt * 1.26642191410065 + rt * (1 - rt) * (-0.0467803716659546 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.26642191410065 + rt * 1.29894196987152 + rt * (1 - rt) * (-0.0245402574539185 * (1 - rt) + -0.000728718933036226 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.29894196987152 + rt * 1.11857950687408 + rt * (1 - rt) * (0.0190605044364929 * (1 - rt) + -0.000203815712252067 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.11857950687408 + rt * 1.13906466960907 + rt * (1 - rt) * (-0.00751367211341858 * (1 - rt) + 0.000157798021477033 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.13906466960907 + rt * 0.879488110542297 + rt * (1 - rt) * (0.00731711983680725 * (1 - rt) + -5.38111343635154E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 0.879488110542297 + rt * 0.945704579353333 + rt * (1 - rt) * (0.000234719117482503 * (1 - rt) + 1.99204580735417E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 0.945704579353333 + rt * 1.20068657398224 + rt * (1 - rt) * (0.000234719117482503 * (1 - rt) + -2.36780771883724E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL5_MRNA;
end
max_predicted_values = max(GolgiMem_ACSL5);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_ACSL5);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL5_MRNA_exp_means = (Cyt_ACSL5_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL5_MRNA_exp_means,Cyt_ACSL5_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_ACSL5(1:length(GolgiMem_ACSL5))),max(Cyt_ACSL5_MRNA_exp_means+Cyt_ACSL5_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(4) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ACSL5 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ACSL5 = statevar(:,38);
isRealNumber = ~isnan(ERMem_ACSL5);
ERMem_ACSL5 = ERMem_ACSL5(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ACSL5','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ACSL5,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ACSL5(1:length(ERMem_ACSL5)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(4);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ACSL5_predicted_0min = statevar(1,38);
mRNA_initial_concentration(4) = ERMem_ACSL5_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL5_MRNA_exp_means = [1 1.266422 1.298942 1.11858 1.139065 0.8794881 0.9457046 1.200687 1 1.266422 1.298942 1.11858 1.139065 0.8794881 0.9457046 1.200687];
Cyt_ACSL5_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL5_MRNA_exp_means = Cyt_ACSL5_MRNA_exp_means * mRNA_initial_concentration(4);
Cyt_ACSL5_MRNA_exp_sds   = Cyt_ACSL5_MRNA_exp_sds * mRNA_initial_concentration(4);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL5_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL5_MRNA =       ((1 - mRNA_initial_concentration(4)) * rt + mRNA_initial_concentration(4) * 1 + mRNA_initial_concentration(4) * (1 - mRNA_initial_concentration(4)) * (1.26642191410065 * (1 - mRNA_initial_concentration(4)) + -0.0467803716659546 * mRNA_initial_concentration(4)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1 + rt * 1.26642191410065 + rt * (1 - rt) * (-0.0467803716659546 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.26642191410065 + rt * 1.29894196987152 + rt * (1 - rt) * (-0.0245402574539185 * (1 - rt) + -0.000728718933036226 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.29894196987152 + rt * 1.11857950687408 + rt * (1 - rt) * (0.0190605044364929 * (1 - rt) + -0.000203815712252067 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.11857950687408 + rt * 1.13906466960907 + rt * (1 - rt) * (-0.00751367211341858 * (1 - rt) + 0.000157798021477033 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 1.13906466960907 + rt * 0.879488110542297 + rt * (1 - rt) * (0.00731711983680725 * (1 - rt) + -5.38111343635154E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 0.879488110542297 + rt * 0.945704579353333 + rt * (1 - rt) * (0.000234719117482503 * (1 - rt) + 1.99204580735417E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL5_MRNA = mRNA_initial_concentration(4) * ((1 - rt) * 0.945704579353333 + rt * 1.20068657398224 + rt * (1 - rt) * (0.000234719117482503 * (1 - rt) + -2.36780771883724E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL5_MRNA;
end
max_predicted_values = max(ERMem_ACSL5);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ACSL5);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL5_MRNA_exp_means = (Cyt_ACSL5_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL5_MRNA_exp_means,Cyt_ACSL5_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ACSL5(1:length(ERMem_ACSL5))),max(Cyt_ACSL5_MRNA_exp_means+Cyt_ACSL5_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(4) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_ACSL6 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_ACSL6 = statevar(:,5);
isRealNumber = ~isnan(GolgiMem_ACSL6);
GolgiMem_ACSL6 = GolgiMem_ACSL6(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_ACSL6','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_ACSL6,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_ACSL6(1:length(GolgiMem_ACSL6)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(5);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_ACSL6_predicted_0min = statevar(1,5);
mRNA_initial_concentration(5) = GolgiMem_ACSL6_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL6_MRNA_exp_means = [1 1.020566 0.9777321 1.004279 0.9652225 0.9654369 0.9987737 1.028689 1 1.020566 0.9777321 1.004279 0.9652225 0.9654369 0.9987737 1.028689];
Cyt_ACSL6_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL6_MRNA_exp_means = Cyt_ACSL6_MRNA_exp_means * mRNA_initial_concentration(5);
Cyt_ACSL6_MRNA_exp_sds   = Cyt_ACSL6_MRNA_exp_sds * mRNA_initial_concentration(5);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL6_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL6_MRNA =       ((1 - mRNA_initial_concentration(5)) * rt + mRNA_initial_concentration(5) * 1 + mRNA_initial_concentration(5) * (1 - mRNA_initial_concentration(5)) * (1.02056646347046 * (1 - mRNA_initial_concentration(5)) + -0.0126801729202271 * mRNA_initial_concentration(5)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1 + rt * 1.02056646347046 + rt * (1 - rt) * (-0.0126801729202271 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1.02056646347046 + rt * 0.977732062339783 + rt * (1 - rt) * (0.0112216114997864 * (1 - rt) + -0.000258492324625907 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.977732062339783 + rt * 1.00427937507629 + rt * (1 - rt) * (-0.00460757315158844 * (1 - rt) + 0.000188624437155158 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1.00427937507629 + rt * 0.965222537517548 + rt * (1 - rt) * (0.00195820033550262 * (1 - rt) + -6.25734324929743E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.965222537517548 + rt * 0.96543687582016 + rt * (1 - rt) * (0.000411351770162582 * (1 - rt) + 1.66151930415366E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.96543687582016 + rt * 0.998773694038391 + rt * (1 - rt) * (-0.000292063504457474 * (1 - rt) + -2.24052674893425E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.998773694038391 + rt * 1.02868890762329 + rt * (1 - rt) * (-0.000292063504457474 * (1 - rt) + 1.2794943504518E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL6_MRNA;
end
max_predicted_values = max(GolgiMem_ACSL6);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_ACSL6);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL6_MRNA_exp_means = (Cyt_ACSL6_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL6_MRNA_exp_means,Cyt_ACSL6_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_ACSL6(1:length(GolgiMem_ACSL6))),max(Cyt_ACSL6_MRNA_exp_means+Cyt_ACSL6_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(5) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ACSL6 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ACSL6 = statevar(:,39);
isRealNumber = ~isnan(ERMem_ACSL6);
ERMem_ACSL6 = ERMem_ACSL6(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ACSL6','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ACSL6,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ACSL6(1:length(ERMem_ACSL6)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(5);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ACSL6_predicted_0min = statevar(1,39);
mRNA_initial_concentration(5) = ERMem_ACSL6_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ACSL6_MRNA_exp_means = [1 1.020566 0.9777321 1.004279 0.9652225 0.9654369 0.9987737 1.028689 1 1.020566 0.9777321 1.004279 0.9652225 0.9654369 0.9987737 1.028689];
Cyt_ACSL6_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ACSL6_MRNA_exp_means = Cyt_ACSL6_MRNA_exp_means * mRNA_initial_concentration(5);
Cyt_ACSL6_MRNA_exp_sds   = Cyt_ACSL6_MRNA_exp_sds * mRNA_initial_concentration(5);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ACSL6_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ACSL6_MRNA =       ((1 - mRNA_initial_concentration(5)) * rt + mRNA_initial_concentration(5) * 1 + mRNA_initial_concentration(5) * (1 - mRNA_initial_concentration(5)) * (1.02056646347046 * (1 - mRNA_initial_concentration(5)) + -0.0126801729202271 * mRNA_initial_concentration(5)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1 + rt * 1.02056646347046 + rt * (1 - rt) * (-0.0126801729202271 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1.02056646347046 + rt * 0.977732062339783 + rt * (1 - rt) * (0.0112216114997864 * (1 - rt) + -0.000258492324625907 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.977732062339783 + rt * 1.00427937507629 + rt * (1 - rt) * (-0.00460757315158844 * (1 - rt) + 0.000188624437155158 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 1.00427937507629 + rt * 0.965222537517548 + rt * (1 - rt) * (0.00195820033550262 * (1 - rt) + -6.25734324929743E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.965222537517548 + rt * 0.96543687582016 + rt * (1 - rt) * (0.000411351770162582 * (1 - rt) + 1.66151930415366E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.96543687582016 + rt * 0.998773694038391 + rt * (1 - rt) * (-0.000292063504457474 * (1 - rt) + -2.24052674893425E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ACSL6_MRNA = mRNA_initial_concentration(5) * ((1 - rt) * 0.998773694038391 + rt * 1.02868890762329 + rt * (1 - rt) * (-0.000292063504457474 * (1 - rt) + 1.2794943504518E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ACSL6_MRNA;
end
max_predicted_values = max(ERMem_ACSL6);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ACSL6);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ACSL6_MRNA_exp_means = (Cyt_ACSL6_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ACSL6_MRNA_exp_means,Cyt_ACSL6_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ACSL6(1:length(ERMem_ACSL6))),max(Cyt_ACSL6_MRNA_exp_means+Cyt_ACSL6_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(5) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot ERMem_ALOX15 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ALOX15 = statevar(:,40);
isRealNumber = ~isnan(ERMem_ALOX15);
ERMem_ALOX15 = ERMem_ALOX15(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ALOX15','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ALOX15,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ALOX15(1:length(ERMem_ALOX15)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(6);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ALOX15_predicted_0min = statevar(1,40);
mRNA_initial_concentration(6) = ERMem_ALOX15_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ALOX15_MRNA_exp_means = [1 1.039474 1.032392 0.9852711 1.01253 1.039602 1.011866 0.9672024 1 1.039474 1.032392 0.9852711 1.01253 1.039602 1.011866 0.9672024];
Cyt_ALOX15_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ALOX15_MRNA_exp_means = Cyt_ALOX15_MRNA_exp_means * mRNA_initial_concentration(6);
Cyt_ALOX15_MRNA_exp_sds   = Cyt_ALOX15_MRNA_exp_sds * mRNA_initial_concentration(6);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ALOX15_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ALOX15_MRNA =       ((1 - mRNA_initial_concentration(6)) * rt + mRNA_initial_concentration(6) * 1 + mRNA_initial_concentration(6) * (1 - mRNA_initial_concentration(6)) * (1.03947389125824 * (1 - mRNA_initial_concentration(6)) + -0.00931122303009033 * mRNA_initial_concentration(6)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1 + rt * 1.03947389125824 + rt * (1 - rt) * (-0.00931122303009033 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.03947389125824 + rt * 1.03239166736603 + rt * (1 - rt) * (-0.00329561233520508 * (1 - rt) + -0.000148825379026519 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.03239166736603 + rt * 0.985271096229553 + rt * (1 - rt) * (0.00607498288154602 * (1 - rt) + -2.54466858999459E-05 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 0.985271096229553 + rt * 1.01252961158752 + rt * (1 - rt) * (-0.00068611204624176 * (1 - rt) + 4.08990027062613E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.01252961158752 + rt * 1.0396021604538 + rt * (1 - rt) * (-0.00102352052927017 * (1 - rt) + -8.72395047637738E-06 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.0396021604538 + rt * 1.01186561584473 + rt * (1 - rt) * (0.000160609930753708 * (1 - rt) + 4.74969065347865E-09 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.01186561584473 + rt * 0.967202365398407 + rt * (1 - rt) * (0.000160609930753708 * (1 - rt) + 8.30572942692047E-08 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ALOX15_MRNA;
end
max_predicted_values = max(ERMem_ALOX15);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ALOX15);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ALOX15_MRNA_exp_means = (Cyt_ALOX15_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ALOX15_MRNA_exp_means,Cyt_ALOX15_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ALOX15(1:length(ERMem_ALOX15))),max(Cyt_ALOX15_MRNA_exp_means+Cyt_ALOX15_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(6) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_ALOX15 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_ALOX15 = statevar(:,77);
isRealNumber = ~isnan(Cyt_ALOX15);
Cyt_ALOX15 = Cyt_ALOX15(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_ALOX15','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_ALOX15,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_ALOX15(1:length(Cyt_ALOX15)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(6);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_ALOX15_predicted_0min = statevar(1,77);
mRNA_initial_concentration(6) = Cyt_ALOX15_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ALOX15_MRNA_exp_means = [1 1.039474 1.032392 0.9852711 1.01253 1.039602 1.011866 0.9672024 1 1.039474 1.032392 0.9852711 1.01253 1.039602 1.011866 0.9672024];
Cyt_ALOX15_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ALOX15_MRNA_exp_means = Cyt_ALOX15_MRNA_exp_means * mRNA_initial_concentration(6);
Cyt_ALOX15_MRNA_exp_sds   = Cyt_ALOX15_MRNA_exp_sds * mRNA_initial_concentration(6);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ALOX15_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ALOX15_MRNA =       ((1 - mRNA_initial_concentration(6)) * rt + mRNA_initial_concentration(6) * 1 + mRNA_initial_concentration(6) * (1 - mRNA_initial_concentration(6)) * (1.03947389125824 * (1 - mRNA_initial_concentration(6)) + -0.00931122303009033 * mRNA_initial_concentration(6)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1 + rt * 1.03947389125824 + rt * (1 - rt) * (-0.00931122303009033 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.03947389125824 + rt * 1.03239166736603 + rt * (1 - rt) * (-0.00329561233520508 * (1 - rt) + -0.000148825379026519 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.03239166736603 + rt * 0.985271096229553 + rt * (1 - rt) * (0.00607498288154602 * (1 - rt) + -2.54466858999459E-05 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 0.985271096229553 + rt * 1.01252961158752 + rt * (1 - rt) * (-0.00068611204624176 * (1 - rt) + 4.08990027062613E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.01252961158752 + rt * 1.0396021604538 + rt * (1 - rt) * (-0.00102352052927017 * (1 - rt) + -8.72395047637738E-06 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.0396021604538 + rt * 1.01186561584473 + rt * (1 - rt) * (0.000160609930753708 * (1 - rt) + 4.74969065347865E-09 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ALOX15_MRNA = mRNA_initial_concentration(6) * ((1 - rt) * 1.01186561584473 + rt * 0.967202365398407 + rt * (1 - rt) * (0.000160609930753708 * (1 - rt) + 8.30572942692047E-08 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ALOX15_MRNA;
end
max_predicted_values = max(Cyt_ALOX15);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_ALOX15);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ALOX15_MRNA_exp_means = (Cyt_ALOX15_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ALOX15_MRNA_exp_means,Cyt_ALOX15_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_ALOX15(1:length(Cyt_ALOX15))),max(Cyt_ALOX15_MRNA_exp_means+Cyt_ALOX15_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(6) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_ALOX5 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_ALOX5 = statevar(:,41);
isRealNumber = ~isnan(ERMem_ALOX5);
ERMem_ALOX5 = ERMem_ALOX5(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_ALOX5','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_ALOX5,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_ALOX5(1:length(ERMem_ALOX5)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(7);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_ALOX5_predicted_0min = statevar(1,41);
mRNA_initial_concentration(7) = ERMem_ALOX5_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ALOX5_MRNA_exp_means = [1 0.8362502 0.8036858 0.8848456 0.8514688 0.8328689 0.5289477 0.5353895 1 0.8362502 0.8036858 0.8848456 0.8514688 0.8328689 0.5289477 0.5353895];
Cyt_ALOX5_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ALOX5_MRNA_exp_means = Cyt_ALOX5_MRNA_exp_means * mRNA_initial_concentration(7);
Cyt_ALOX5_MRNA_exp_sds   = Cyt_ALOX5_MRNA_exp_sds * mRNA_initial_concentration(7);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ALOX5_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ALOX5_MRNA =       ((1 - mRNA_initial_concentration(7)) * rt + mRNA_initial_concentration(7) * 1 + mRNA_initial_concentration(7) * (1 - mRNA_initial_concentration(7)) * (0.836250185966492 * (1 - mRNA_initial_concentration(7)) + 0.0262370824813843 * mRNA_initial_concentration(7)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 1 + rt * 0.836250185966492 + rt * (1 - rt) * (0.0262370824813843 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.836250185966492 + rt * 0.803685784339905 + rt * (1 - rt) * (0.0146288573741913 * (1 - rt) + 0.000406825422837662 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.803685784339905 + rt * 0.884845554828644 + rt * (1 - rt) * (-0.00978481471538544 * (1 - rt) + 0.000121837140741637 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.884845554828644 + rt * 0.851468801498413 + rt * (1 - rt) * (0.00120384097099304 * (1 - rt) + -8.12955545040328E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.851468801498413 + rt * 0.832868933677673 + rt * (1 - rt) * (-0.00333401933312416 * (1 - rt) + 1.98878478848559E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.832868933677673 + rt * 0.528947651386261 + rt * (1 - rt) * (0.00382585724194845 * (1 - rt) + -8.98375831094264E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.528947651386261 + rt * 0.535389542579651 + rt * (1 - rt) * (0.00382585724194845 * (1 - rt) + 3.11560376904931E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ALOX5_MRNA;
end
max_predicted_values = max(ERMem_ALOX5);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_ALOX5);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ALOX5_MRNA_exp_means = (Cyt_ALOX5_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ALOX5_MRNA_exp_means,Cyt_ALOX5_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_ALOX5(1:length(ERMem_ALOX5))),max(Cyt_ALOX5_MRNA_exp_means+Cyt_ALOX5_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(7) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_ALOX5 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_ALOX5 = statevar(:,78);
isRealNumber = ~isnan(Cyt_ALOX5);
Cyt_ALOX5 = Cyt_ALOX5(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_ALOX5','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_ALOX5,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_ALOX5(1:length(Cyt_ALOX5)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(7);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_ALOX5_predicted_0min = statevar(1,78);
mRNA_initial_concentration(7) = Cyt_ALOX5_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_ALOX5_MRNA_exp_means = [1 0.8362502 0.8036858 0.8848456 0.8514688 0.8328689 0.5289477 0.5353895 1 0.8362502 0.8036858 0.8848456 0.8514688 0.8328689 0.5289477 0.5353895];
Cyt_ALOX5_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_ALOX5_MRNA_exp_means = Cyt_ALOX5_MRNA_exp_means * mRNA_initial_concentration(7);
Cyt_ALOX5_MRNA_exp_sds   = Cyt_ALOX5_MRNA_exp_sds * mRNA_initial_concentration(7);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of ALOX5_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_ALOX5_MRNA =       ((1 - mRNA_initial_concentration(7)) * rt + mRNA_initial_concentration(7) * 1 + mRNA_initial_concentration(7) * (1 - mRNA_initial_concentration(7)) * (0.836250185966492 * (1 - mRNA_initial_concentration(7)) + 0.0262370824813843 * mRNA_initial_concentration(7)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 1 + rt * 0.836250185966492 + rt * (1 - rt) * (0.0262370824813843 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.836250185966492 + rt * 0.803685784339905 + rt * (1 - rt) * (0.0146288573741913 * (1 - rt) + 0.000406825422837662 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.803685784339905 + rt * 0.884845554828644 + rt * (1 - rt) * (-0.00978481471538544 * (1 - rt) + 0.000121837140741637 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.884845554828644 + rt * 0.851468801498413 + rt * (1 - rt) * (0.00120384097099304 * (1 - rt) + -8.12955545040328E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.851468801498413 + rt * 0.832868933677673 + rt * (1 - rt) * (-0.00333401933312416 * (1 - rt) + 1.98878478848559E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.832868933677673 + rt * 0.528947651386261 + rt * (1 - rt) * (0.00382585724194845 * (1 - rt) + -8.98375831094264E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_ALOX5_MRNA = mRNA_initial_concentration(7) * ((1 - rt) * 0.528947651386261 + rt * 0.535389542579651 + rt * (1 - rt) * (0.00382585724194845 * (1 - rt) + 3.11560376904931E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_ALOX5_MRNA;
end
max_predicted_values = max(Cyt_ALOX5);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_ALOX5);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_ALOX5_MRNA_exp_means = (Cyt_ALOX5_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_ALOX5_MRNA_exp_means,Cyt_ALOX5_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_ALOX5(1:length(Cyt_ALOX5))),max(Cyt_ALOX5_MRNA_exp_means+Cyt_ALOX5_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(7) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Cyt_CBR1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_CBR1 = statevar(:,79);
isRealNumber = ~isnan(Cyt_CBR1);
Cyt_CBR1 = Cyt_CBR1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_CBR1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_CBR1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_CBR1(1:length(Cyt_CBR1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(8);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_CBR1_predicted_0min = statevar(1,79);
mRNA_initial_concentration(8) = Cyt_CBR1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_CBR1_MRNA_exp_means = [1 0.6537302 0.6535416 0.9778862 0.7488922 1.106459 1.572611 1.68803];
Cyt_CBR1_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_CBR1_MRNA_exp_means = Cyt_CBR1_MRNA_exp_means * mRNA_initial_concentration(8);
Cyt_CBR1_MRNA_exp_sds   = Cyt_CBR1_MRNA_exp_sds * mRNA_initial_concentration(8);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of CBR1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_CBR1_MRNA =       ((1 - mRNA_initial_concentration(8)) * rt + mRNA_initial_concentration(8) * 1 + mRNA_initial_concentration(8) * (1 - mRNA_initial_concentration(8)) * (0.653730154037476 * (1 - mRNA_initial_concentration(8)) + 0.06921626329422 * mRNA_initial_concentration(8)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 1 + rt * 0.653730154037476 + rt * (1 - rt) * (0.06921626329422 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 0.653730154037476 + rt * 0.653541624546051 + rt * (1 - rt) * (0.032472163438797 * (1 - rt) + 0.00108073040832245 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 0.653541624546051 + rt * 0.977886199951172 + rt * (1 - rt) * (-0.0438841551542282 * (1 - rt) + 0.000291495919658191 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 0.977886199951172 + rt * 0.748892247676849 + rt * (1 - rt) * (0.0203888669610023 * (1 - rt) + -0.000332447515175899 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 0.748892247676849 + rt * 1.1064590215683 + rt * (1 - rt) * (-0.0031122699379921 * (1 - rt) + 0.000120191999794798 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 1.1064590215683 + rt * 1.57261097431183 + rt * (1 - rt) * (-0.00534598479668299 * (1 - rt) + -2.44450171214238E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_CBR1_MRNA = mRNA_initial_concentration(8) * ((1 - rt) * 1.57261097431183 + rt * 1.6880304813385 + rt * (1 - rt) * (-0.00534598479668299 * (1 - rt) + 2.71260058572253E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_CBR1_MRNA;
end
max_predicted_values = max(Cyt_CBR1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_CBR1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_CBR1_MRNA_exp_means = (Cyt_CBR1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_CBR1_MRNA_exp_means,Cyt_CBR1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_CBR1(1:length(Cyt_CBR1))),max(Cyt_CBR1_MRNA_exp_means+Cyt_CBR1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(8) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Cyt_CBR3 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_CBR3 = statevar(:,80);
isRealNumber = ~isnan(Cyt_CBR3);
Cyt_CBR3 = Cyt_CBR3(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_CBR3','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_CBR3,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_CBR3(1:length(Cyt_CBR3)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(9);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_CBR3_predicted_0min = statevar(1,80);
mRNA_initial_concentration(9) = Cyt_CBR3_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_CBR3_MRNA_exp_means = [1 0.2889406 0.2666468 0.3502458 0.2775353 0.8820319 1.779142 1.076169];
Cyt_CBR3_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_CBR3_MRNA_exp_means = Cyt_CBR3_MRNA_exp_means * mRNA_initial_concentration(9);
Cyt_CBR3_MRNA_exp_sds   = Cyt_CBR3_MRNA_exp_sds * mRNA_initial_concentration(9);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of CBR3_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_CBR3_MRNA =       ((1 - mRNA_initial_concentration(9)) * rt + mRNA_initial_concentration(9) * 1 + mRNA_initial_concentration(9) * (1 - mRNA_initial_concentration(9)) * (0.288940608501434 * (1 - mRNA_initial_concentration(9)) + 0.137753123044968 * mRNA_initial_concentration(9)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 1 + rt * 0.288940608501434 + rt * (1 - rt) * (0.137753123044968 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 0.288940608501434 + rt * 0.266646832227707 + rt * (1 - rt) * (0.0128186494112015 * (1 - rt) + 0.00235425208857789 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 0.266646832227707 + rt * 0.350245773792267 + rt * (1 - rt) * (-0.0119954168796539 * (1 - rt) + -0.000233466817980374 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 0.350245773792267 + rt * 0.277535319328308 + rt * (1 - rt) * (0.0187479376792908 * (1 - rt) + -4.94372766411073E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 0.277535319328308 + rt * 0.882031917572021 + rt * (1 - rt) * (-0.00389853268861771 * (1 - rt) + 6.51216242526097E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 0.882031917572021 + rt * 1.77914249897003 + rt * (1 - rt) * (-0.014142939945062 * (1 - rt) + -1.44134204431857E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_CBR3_MRNA = mRNA_initial_concentration(9) * ((1 - rt) * 1.77914249897003 + rt * 1.07616865634918 + rt * (1 - rt) * (-0.014142939945062 * (1 - rt) + -5.56443699932158E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_CBR3_MRNA;
end
max_predicted_values = max(Cyt_CBR3);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_CBR3);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_CBR3_MRNA_exp_means = (Cyt_CBR3_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_CBR3_MRNA_exp_means,Cyt_CBR3_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_CBR3(1:length(Cyt_CBR3))),max(Cyt_CBR3_MRNA_exp_means+Cyt_CBR3_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(9) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_GANAB in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_GANAB = statevar(:,42);
isRealNumber = ~isnan(ERMem_GANAB);
ERMem_GANAB = ERMem_GANAB(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_GANAB','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_GANAB,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_GANAB(1:length(ERMem_GANAB)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(10);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_GANAB_predicted_0min = statevar(1,42);
mRNA_initial_concentration(10) = ERMem_GANAB_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_GANAB_MRNA_exp_means = [1 0.7454121 0.7495213 0.6660509 0.5673159 0.4445832 0.365619 0.4608359];
Cyt_GANAB_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_GANAB_MRNA_exp_means = Cyt_GANAB_MRNA_exp_means * mRNA_initial_concentration(10);
Cyt_GANAB_MRNA_exp_sds   = Cyt_GANAB_MRNA_exp_sds * mRNA_initial_concentration(10);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of GANAB_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_GANAB_MRNA =       ((1 - mRNA_initial_concentration(10)) * rt + mRNA_initial_concentration(10) * 1 + mRNA_initial_concentration(10) * (1 - mRNA_initial_concentration(10)) * (0.745412051677704 * (1 - mRNA_initial_concentration(10)) + 0.0517394304275513 * mRNA_initial_concentration(10)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 1 + rt * 0.745412051677704 + rt * (1 - rt) * (0.0517394304275513 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.745412051677704 + rt * 0.749521255493164 + rt * (1 - rt) * (-0.00916887521743774 * (1 - rt) + 0.000932315574689618 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.749521255493164 + rt * 0.666050910949707 + rt * (1 - rt) * (0.00341028273105621 * (1 - rt) + -0.000279966936921722 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.666050910949707 + rt * 0.567315876483917 + rt * (1 - rt) * (0.00186843499541283 * (1 - rt) + 6.8113849505765E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.567315876483917 + rt * 0.444583207368851 + rt * (1 - rt) * (0.00208126418292522 * (1 - rt) + -7.52003453883047E-06 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.444583207368851 + rt * 0.365619003772736 + rt * (1 - rt) * (0.00138378950456778 * (1 - rt) + 4.07347049204914E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_GANAB_MRNA = mRNA_initial_concentration(10) * ((1 - rt) * 0.365619003772736 + rt * 0.460835874080658 + rt * (1 - rt) * (0.00138378950456778 * (1 - rt) + 2.11539888789577E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_GANAB_MRNA;
end
max_predicted_values = max(ERMem_GANAB);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_GANAB);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_GANAB_MRNA_exp_means = (Cyt_GANAB_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_GANAB_MRNA_exp_means,Cyt_GANAB_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_GANAB(1:length(ERMem_GANAB))),max(Cyt_GANAB_MRNA_exp_means+Cyt_GANAB_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(10) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_HPGD in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_HPGD = statevar(:,81);
isRealNumber = ~isnan(Cyt_HPGD);
Cyt_HPGD = Cyt_HPGD(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_HPGD','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_HPGD,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_HPGD(1:length(Cyt_HPGD)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(11);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_HPGD_predicted_0min = statevar(1,81);
mRNA_initial_concentration(11) = Cyt_HPGD_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_HPGD_MRNA_exp_means = [1 0.6868502 0.6696784 0.6838959 0.7159865 0.5963763 0.5015551 0.3949745];
Cyt_HPGD_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_HPGD_MRNA_exp_means = Cyt_HPGD_MRNA_exp_means * mRNA_initial_concentration(11);
Cyt_HPGD_MRNA_exp_sds   = Cyt_HPGD_MRNA_exp_sds * mRNA_initial_concentration(11);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of HPGD_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_HPGD_MRNA =       ((1 - mRNA_initial_concentration(11)) * rt + mRNA_initial_concentration(11) * 1 + mRNA_initial_concentration(11) * (1 - mRNA_initial_concentration(11)) * (0.686850190162659 * (1 - mRNA_initial_concentration(11)) + 0.059195613861084 * mRNA_initial_concentration(11)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 1 + rt * 0.686850190162659 + rt * (1 - rt) * (0.059195613861084 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.686850190162659 + rt * 0.669678449630737 + rt * (1 - rt) * (0.00485609769821167 * (1 - rt) + 0.00101787879929987 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.669678449630737 + rt * 0.683895945549011 + rt * (1 - rt) * (0.000182780623435974 * (1 - rt) + -0.000125140939793865 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.683895945549011 + rt * 0.715986549854279 + rt * (1 - rt) * (-0.004594786465168 * (1 - rt) + 2.83533430053847E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.715986549854279 + rt * 0.596376299858093 + rt * (1 - rt) * (0.0018049918115139 * (1 - rt) + -1.94432153952886E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.596376299858093 + rt * 0.501555144786835 + rt * (1 - rt) * (0.000741178418199221 * (1 - rt) + 5.86308747344004E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_HPGD_MRNA = mRNA_initial_concentration(11) * ((1 - rt) * 0.501555144786835 + rt * 0.394974499940872 + rt * (1 - rt) * (0.000741178418199221 * (1 - rt) + -3.46855508034577E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_HPGD_MRNA;
end
max_predicted_values = max(Cyt_HPGD);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_HPGD);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_HPGD_MRNA_exp_means = (Cyt_HPGD_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_HPGD_MRNA_exp_means,Cyt_HPGD_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_HPGD(1:length(Cyt_HPGD))),max(Cyt_HPGD_MRNA_exp_means+Cyt_HPGD_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(11) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_HPGDS in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_HPGDS = statevar(:,43);
isRealNumber = ~isnan(ERMem_HPGDS);
ERMem_HPGDS = ERMem_HPGDS(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_HPGDS','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_HPGDS,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_HPGDS(1:length(ERMem_HPGDS)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_HPGDS in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_HPGDS = statevar(:,82);
isRealNumber = ~isnan(Cyt_HPGDS);
Cyt_HPGDS = Cyt_HPGDS(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_HPGDS','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_HPGDS,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_HPGDS(1:length(Cyt_HPGDS)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot Cyt_LTA4H in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_LTA4H = statevar(:,83);
isRealNumber = ~isnan(Cyt_LTA4H);
Cyt_LTA4H = Cyt_LTA4H(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_LTA4H','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_LTA4H,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_LTA4H(1:length(Cyt_LTA4H)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(12);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_LTA4H_predicted_0min = statevar(1,83);
mRNA_initial_concentration(12) = Cyt_LTA4H_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_LTA4H_MRNA_exp_means = [1 0.8971329 0.8254765 0.7125556 0.8868611 0.7468137 0.9483624 0.7398818];
Cyt_LTA4H_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_LTA4H_MRNA_exp_means = Cyt_LTA4H_MRNA_exp_means * mRNA_initial_concentration(12);
Cyt_LTA4H_MRNA_exp_sds   = Cyt_LTA4H_MRNA_exp_sds * mRNA_initial_concentration(12);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of LTA4H_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_LTA4H_MRNA =       ((1 - mRNA_initial_concentration(12)) * rt + mRNA_initial_concentration(12) * 1 + mRNA_initial_concentration(12) * (1 - mRNA_initial_concentration(12)) * (0.897132933139801 * (1 - mRNA_initial_concentration(12)) + 0.00624212026596069 * mRNA_initial_concentration(12)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 1 + rt * 0.897132933139801 + rt * (1 - rt) * (0.00624212026596069 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.897132933139801 + rt * 0.825476467609406 + rt * (1 - rt) * (0.0030392050743103 * (1 - rt) + 0.00011170425381524 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.825476467609406 + rt * 0.712555587291718 + rt * (1 - rt) * (0.0200073629617691 * (1 - rt) + -3.06756641969155E-05 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.712555587291718 + rt * 0.886861085891724 + rt * (1 - rt) * (-0.0122164607048035 * (1 - rt) + 0.00013748170149347 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.886861085891724 + rt * 0.746813654899597 + rt * (1 - rt) * (0.0060205452144146 * (1 - rt) + -6.36512230191331E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.746813654899597 + rt * 0.948362410068512 + rt * (1 - rt) * (-0.00338802884022395 * (1 - rt) + 2.04089791039689E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_LTA4H_MRNA = mRNA_initial_concentration(12) * ((1 - rt) * 0.948362410068512 + rt * 0.739881753921509 + rt * (1 - rt) * (-0.00338802884022395 * (1 - rt) + -4.31572074227942E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_LTA4H_MRNA;
end
max_predicted_values = max(Cyt_LTA4H);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_LTA4H);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_LTA4H_MRNA_exp_means = (Cyt_LTA4H_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_LTA4H_MRNA_exp_means,Cyt_LTA4H_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_LTA4H(1:length(Cyt_LTA4H))),max(Cyt_LTA4H_MRNA_exp_means+Cyt_LTA4H_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(12) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_LTC4S in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_LTC4S = statevar(:,44);
isRealNumber = ~isnan(ERMem_LTC4S);
ERMem_LTC4S = ERMem_LTC4S(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_LTC4S','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_LTC4S,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_LTC4S(1:length(ERMem_LTC4S)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(13);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_LTC4S_predicted_0min = statevar(1,44);
mRNA_initial_concentration(13) = ERMem_LTC4S_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_LTC4S_MRNA_exp_means = [1 0.8854109 0.8360071 0.7763628 0.736393 0.6292939 0.4695234 0.6060954];
Cyt_LTC4S_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_LTC4S_MRNA_exp_means = Cyt_LTC4S_MRNA_exp_means * mRNA_initial_concentration(13);
Cyt_LTC4S_MRNA_exp_sds   = Cyt_LTC4S_MRNA_exp_sds * mRNA_initial_concentration(13);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of LTC4S_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_LTC4S_MRNA =       ((1 - mRNA_initial_concentration(13)) * rt + mRNA_initial_concentration(13) * 1 + mRNA_initial_concentration(13) * (1 - mRNA_initial_concentration(13)) * (0.885410904884338 * (1 - mRNA_initial_concentration(13)) + 0.0130370616912842 * mRNA_initial_concentration(13)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 1 + rt * 0.885410904884338 + rt * (1 - rt) * (0.0130370616912842 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.885410904884338 + rt * 0.836007118225098 + rt * (1 - rt) * (0.00391632318496704 * (1 - rt) + 0.000217496236290675 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.836007118225098 + rt * 0.776362776756287 + rt * (1 - rt) * (0.00396594703197479 * (1 - rt) + -8.47499077087564E-07 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.776362776756287 + rt * 0.73639303445816 + rt * (1 - rt) * (-0.00067899078130722 * (1 - rt) + 2.43384852514933E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.73639303445816 + rt * 0.629293918609619 + rt * (1 - rt) * (0.00068034678697586 * (1 - rt) + -6.49258901635618E-06 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.629293918609619 + rt * 0.469523429870605 + rt * (1 - rt) * (0.002566180874904 * (1 - rt) + 1.65026791242841E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_LTC4S_MRNA = mRNA_initial_concentration(13) * ((1 - rt) * 0.469523429870605 + rt * 0.606095373630524 + rt * (1 - rt) * (0.002566180874904 * (1 - rt) + 1.13026904995895E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_LTC4S_MRNA;
end
max_predicted_values = max(ERMem_LTC4S);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_LTC4S);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_LTC4S_MRNA_exp_means = (Cyt_LTC4S_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_LTC4S_MRNA_exp_means,Cyt_LTC4S_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_LTC4S(1:length(ERMem_LTC4S))),max(Cyt_LTC4S_MRNA_exp_means+Cyt_LTC4S_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(13) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_MAN1B1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_MAN1B1 = statevar(:,6);
isRealNumber = ~isnan(GolgiMem_MAN1B1);
GolgiMem_MAN1B1 = GolgiMem_MAN1B1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_MAN1B1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_MAN1B1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_MAN1B1(1:length(GolgiMem_MAN1B1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(14);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_MAN1B1_predicted_0min = statevar(1,6);
mRNA_initial_concentration(14) = GolgiMem_MAN1B1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_MAN1B1_MRNA_exp_means = [1 0.8101124 0.5693073 0.2847532 0.3473086 0.6196783 0.5782955 0.9700879];
Cyt_MAN1B1_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_MAN1B1_MRNA_exp_means = Cyt_MAN1B1_MRNA_exp_means * mRNA_initial_concentration(14);
Cyt_MAN1B1_MRNA_exp_sds   = Cyt_MAN1B1_MRNA_exp_sds * mRNA_initial_concentration(14);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of MAN1B1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_MAN1B1_MRNA =       ((1 - mRNA_initial_concentration(14)) * rt + mRNA_initial_concentration(14) * 1 + mRNA_initial_concentration(14) * (1 - mRNA_initial_concentration(14)) * (0.810112416744232 * (1 - mRNA_initial_concentration(14)) + -0.0101835131645203 * mRNA_initial_concentration(14)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 1 + rt * 0.810112416744232 + rt * (1 - rt) * (-0.0101835131645203 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.810112416744232 + rt * 0.569307267665863 + rt * (1 - rt) * (0.0197056233882904 * (1 - rt) + -0.000221662448917482 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.569307267665863 + rt * 0.284753203392029 + rt * (1 - rt) * (0.0315831780433655 * (1 - rt) + 0.000207748918035244 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.284753203392029 + rt * 0.34730863571167 + rt * (1 - rt) * (0.00368146896362305 * (1 - rt) + 0.000144438583296021 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.34730863571167 + rt * 0.619678258895874 + rt * (1 - rt) * (-0.00732652470469475 * (1 - rt) + -1.08039081829281E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.619678258895874 + rt * 0.578295528888702 + rt * (1 - rt) * (0.00214975227912267 * (1 - rt) + -9.12865906903437E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_MAN1B1_MRNA = mRNA_initial_concentration(14) * ((1 - rt) * 0.578295528888702 + rt * 0.970087885856628 + rt * (1 - rt) * (0.00214975227912267 * (1 - rt) + 2.26074502900569E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_MAN1B1_MRNA;
end
max_predicted_values = max(GolgiMem_MAN1B1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_MAN1B1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_MAN1B1_MRNA_exp_means = (Cyt_MAN1B1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_MAN1B1_MRNA_exp_means,Cyt_MAN1B1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_MAN1B1(1:length(GolgiMem_MAN1B1))),max(Cyt_MAN1B1_MRNA_exp_means+Cyt_MAN1B1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(14) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot GolgiMem_PLA2G4A in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PLA2G4A = statevar(:,7);
isRealNumber = ~isnan(GolgiMem_PLA2G4A);
GolgiMem_PLA2G4A = GolgiMem_PLA2G4A(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PLA2G4A','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PLA2G4A,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_PLA2G4A(1:length(GolgiMem_PLA2G4A)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(15);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_PLA2G4A_predicted_0min = statevar(1,7);
mRNA_initial_concentration(15) = GolgiMem_PLA2G4A_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_PLA2G4A_MRNA_exp_means = [1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914];
Cyt_PLA2G4A_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PLA2G4A_MRNA_exp_means = Cyt_PLA2G4A_MRNA_exp_means * mRNA_initial_concentration(15);
Cyt_PLA2G4A_MRNA_exp_sds   = Cyt_PLA2G4A_MRNA_exp_sds * mRNA_initial_concentration(15);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PLA2G4A_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA =       ((1 - mRNA_initial_concentration(15)) * rt + mRNA_initial_concentration(15) * 1 + mRNA_initial_concentration(15) * (1 - mRNA_initial_concentration(15)) * (3.17511224746704 * (1 - mRNA_initial_concentration(15)) + -0.34873046875 * mRNA_initial_concentration(15)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 1 + rt * 3.17511224746704 + rt * (1 - rt) * (-0.34873046875 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.17511224746704 + rt * 3.60657215118408 + rt * (1 - rt) * (0.0143644332885742 * (1 - rt) + -0.00615200136117677 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.60657215118408 + rt * 4.61313629150391 + rt * (1 - rt) * (-0.0665740251541138 * (1 - rt) + 0.00135930752804043 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 4.61313629150391 + rt * 5.29478406906128 + rt * (1 - rt) * (-0.0935064256191254 * (1 - rt) + -0.000523107460580426 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 5.29478406906128 + rt * 2.91782259941101 + rt * (1 - rt) * (0.0698046058416367 * (1 - rt) + -0.000219898468180831 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 2.91782259941101 + rt * 3.74826812744141 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + 0.000142028921339996 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.74826812744141 + rt * 2.76914000511169 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + -2.52850055894199E-05 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PLA2G4A_MRNA;
end
max_predicted_values = max(GolgiMem_PLA2G4A);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_PLA2G4A);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PLA2G4A_MRNA_exp_means = (Cyt_PLA2G4A_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PLA2G4A_MRNA_exp_means,Cyt_PLA2G4A_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_PLA2G4A(1:length(GolgiMem_PLA2G4A))),max(Cyt_PLA2G4A_MRNA_exp_means+Cyt_PLA2G4A_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(15) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PLA2G4A in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PLA2G4A = statevar(:,45);
isRealNumber = ~isnan(ERMem_PLA2G4A);
ERMem_PLA2G4A = ERMem_PLA2G4A(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PLA2G4A','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PLA2G4A,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PLA2G4A(1:length(ERMem_PLA2G4A)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(15);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_PLA2G4A_predicted_0min = statevar(1,45);
mRNA_initial_concentration(15) = ERMem_PLA2G4A_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_PLA2G4A_MRNA_exp_means = [1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914];
Cyt_PLA2G4A_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PLA2G4A_MRNA_exp_means = Cyt_PLA2G4A_MRNA_exp_means * mRNA_initial_concentration(15);
Cyt_PLA2G4A_MRNA_exp_sds   = Cyt_PLA2G4A_MRNA_exp_sds * mRNA_initial_concentration(15);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PLA2G4A_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA =       ((1 - mRNA_initial_concentration(15)) * rt + mRNA_initial_concentration(15) * 1 + mRNA_initial_concentration(15) * (1 - mRNA_initial_concentration(15)) * (3.17511224746704 * (1 - mRNA_initial_concentration(15)) + -0.34873046875 * mRNA_initial_concentration(15)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 1 + rt * 3.17511224746704 + rt * (1 - rt) * (-0.34873046875 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.17511224746704 + rt * 3.60657215118408 + rt * (1 - rt) * (0.0143644332885742 * (1 - rt) + -0.00615200136117677 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.60657215118408 + rt * 4.61313629150391 + rt * (1 - rt) * (-0.0665740251541138 * (1 - rt) + 0.00135930752804043 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 4.61313629150391 + rt * 5.29478406906128 + rt * (1 - rt) * (-0.0935064256191254 * (1 - rt) + -0.000523107460580426 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 5.29478406906128 + rt * 2.91782259941101 + rt * (1 - rt) * (0.0698046058416367 * (1 - rt) + -0.000219898468180831 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 2.91782259941101 + rt * 3.74826812744141 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + 0.000142028921339996 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.74826812744141 + rt * 2.76914000511169 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + -2.52850055894199E-05 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PLA2G4A_MRNA;
end
max_predicted_values = max(ERMem_PLA2G4A);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_PLA2G4A);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PLA2G4A_MRNA_exp_means = (Cyt_PLA2G4A_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PLA2G4A_MRNA_exp_means,Cyt_PLA2G4A_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_PLA2G4A(1:length(ERMem_PLA2G4A))),max(Cyt_PLA2G4A_MRNA_exp_means+Cyt_PLA2G4A_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(15) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot Cyt_PLA2G4A in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Cyt_PLA2G4A = statevar(:,84);
isRealNumber = ~isnan(Cyt_PLA2G4A);
Cyt_PLA2G4A = Cyt_PLA2G4A(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('Cyt_PLA2G4A','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,Cyt_PLA2G4A,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(Cyt_PLA2G4A(1:length(Cyt_PLA2G4A)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(15);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
Cyt_PLA2G4A_predicted_0min = statevar(1,84);
mRNA_initial_concentration(15) = Cyt_PLA2G4A_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_PLA2G4A_MRNA_exp_means = [1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914 1 3.175112 3.606572 4.613136 5.294784 2.917823 3.748268 2.76914];
Cyt_PLA2G4A_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PLA2G4A_MRNA_exp_means = Cyt_PLA2G4A_MRNA_exp_means * mRNA_initial_concentration(15);
Cyt_PLA2G4A_MRNA_exp_sds   = Cyt_PLA2G4A_MRNA_exp_sds * mRNA_initial_concentration(15);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PLA2G4A_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA =       ((1 - mRNA_initial_concentration(15)) * rt + mRNA_initial_concentration(15) * 1 + mRNA_initial_concentration(15) * (1 - mRNA_initial_concentration(15)) * (3.17511224746704 * (1 - mRNA_initial_concentration(15)) + -0.34873046875 * mRNA_initial_concentration(15)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 1 + rt * 3.17511224746704 + rt * (1 - rt) * (-0.34873046875 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.17511224746704 + rt * 3.60657215118408 + rt * (1 - rt) * (0.0143644332885742 * (1 - rt) + -0.00615200136117677 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.60657215118408 + rt * 4.61313629150391 + rt * (1 - rt) * (-0.0665740251541138 * (1 - rt) + 0.00135930752804043 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 4.61313629150391 + rt * 5.29478406906128 + rt * (1 - rt) * (-0.0935064256191254 * (1 - rt) + -0.000523107460580426 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 5.29478406906128 + rt * 2.91782259941101 + rt * (1 - rt) * (0.0698046058416367 * (1 - rt) + -0.000219898468180831 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 2.91782259941101 + rt * 3.74826812744141 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + 0.000142028921339996 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PLA2G4A_MRNA = mRNA_initial_concentration(15) * ((1 - rt) * 3.74826812744141 + rt * 2.76914000511169 + rt * (1 - rt) * (-0.0144602696100871 * (1 - rt) + -2.52850055894199E-05 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PLA2G4A_MRNA;
end
max_predicted_values = max(Cyt_PLA2G4A);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(Cyt_PLA2G4A);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PLA2G4A_MRNA_exp_means = (Cyt_PLA2G4A_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PLA2G4A_MRNA_exp_means,Cyt_PLA2G4A_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(Cyt_PLA2G4A(1:length(Cyt_PLA2G4A))),max(Cyt_PLA2G4A_MRNA_exp_means+Cyt_PLA2G4A_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(15) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PTGDS in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PTGDS = statevar(:,8);
isRealNumber = ~isnan(GolgiMem_PTGDS);
GolgiMem_PTGDS = GolgiMem_PTGDS(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PTGDS','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PTGDS,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_PTGDS(1:length(GolgiMem_PTGDS)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(16);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_PTGDS_predicted_0min = statevar(1,8);
mRNA_initial_concentration(16) = GolgiMem_PTGDS_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_PTGDS_MRNA_exp_means = [1 1.240458 1.196795 1.173132 1.330135 1.060206 0.914498 0.906986 1 1.240458 1.196795 1.173132 1.330135 1.060206 0.914498 0.906986];
Cyt_PTGDS_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PTGDS_MRNA_exp_means = Cyt_PTGDS_MRNA_exp_means * mRNA_initial_concentration(16);
Cyt_PTGDS_MRNA_exp_sds   = Cyt_PTGDS_MRNA_exp_sds * mRNA_initial_concentration(16);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGDS_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGDS_MRNA =       ((1 - mRNA_initial_concentration(16)) * rt + mRNA_initial_concentration(16) * 1 + mRNA_initial_concentration(16) * (1 - mRNA_initial_concentration(16)) * (1.24045836925507 * (1 - mRNA_initial_concentration(16)) + -0.0568243741989136 * mRNA_initial_concentration(16)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1 + rt * 1.24045836925507 + rt * (1 - rt) * (-0.0568243741989136 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.24045836925507 + rt * 1.19679486751556 + rt * (1 - rt) * (0.00636640787124634 * (1 - rt) + -0.0010035367551502 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.19679486751556 + rt * 1.17313194274902 + rt * (1 - rt) * (0.0102164328098297 * (1 - rt) + 0.000225855407339904 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.17313194274902 + rt * 1.33013474941254 + rt * (1 - rt) * (-0.0145983576774597 * (1 - rt) + 3.64157512636015E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.33013474941254 + rt * 1.06020605564117 + rt * (1 - rt) * (0.00492686629295349 * (1 - rt) + -5.19010772969277E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.06020605564117 + rt * 0.914497971534729 + rt * (1 - rt) * (0.00179005116224289 * (1 - rt) + 1.58423756134847E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 0.914497971534729 + rt * 0.906985998153687 + rt * (1 - rt) * (0.00179005116224289 * (1 - rt) + -1.04797863801742E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGDS_MRNA;
end
max_predicted_values = max(GolgiMem_PTGDS);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_PTGDS);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGDS_MRNA_exp_means = (Cyt_PTGDS_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGDS_MRNA_exp_means,Cyt_PTGDS_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_PTGDS(1:length(GolgiMem_PTGDS))),max(Cyt_PTGDS_MRNA_exp_means+Cyt_PTGDS_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(16) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PTGDS in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGDS = statevar(:,46);
isRealNumber = ~isnan(ERMem_PTGDS);
ERMem_PTGDS = ERMem_PTGDS(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGDS','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGDS,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGDS(1:length(ERMem_PTGDS)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(16);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_PTGDS_predicted_0min = statevar(1,46);
mRNA_initial_concentration(16) = ERMem_PTGDS_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200 0 15 30 60 120 240 480 1200];
Cyt_PTGDS_MRNA_exp_means = [1 1.240458 1.196795 1.173132 1.330135 1.060206 0.914498 0.906986 1 1.240458 1.196795 1.173132 1.330135 1.060206 0.914498 0.906986];
Cyt_PTGDS_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PTGDS_MRNA_exp_means = Cyt_PTGDS_MRNA_exp_means * mRNA_initial_concentration(16);
Cyt_PTGDS_MRNA_exp_sds   = Cyt_PTGDS_MRNA_exp_sds * mRNA_initial_concentration(16);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGDS_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGDS_MRNA =       ((1 - mRNA_initial_concentration(16)) * rt + mRNA_initial_concentration(16) * 1 + mRNA_initial_concentration(16) * (1 - mRNA_initial_concentration(16)) * (1.24045836925507 * (1 - mRNA_initial_concentration(16)) + -0.0568243741989136 * mRNA_initial_concentration(16)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1 + rt * 1.24045836925507 + rt * (1 - rt) * (-0.0568243741989136 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.24045836925507 + rt * 1.19679486751556 + rt * (1 - rt) * (0.00636640787124634 * (1 - rt) + -0.0010035367551502 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.19679486751556 + rt * 1.17313194274902 + rt * (1 - rt) * (0.0102164328098297 * (1 - rt) + 0.000225855407339904 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.17313194274902 + rt * 1.33013474941254 + rt * (1 - rt) * (-0.0145983576774597 * (1 - rt) + 3.64157512636015E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.33013474941254 + rt * 1.06020605564117 + rt * (1 - rt) * (0.00492686629295349 * (1 - rt) + -5.19010772969277E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 1.06020605564117 + rt * 0.914497971534729 + rt * (1 - rt) * (0.00179005116224289 * (1 - rt) + 1.58423756134847E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGDS_MRNA = mRNA_initial_concentration(16) * ((1 - rt) * 0.914497971534729 + rt * 0.906985998153687 + rt * (1 - rt) * (0.00179005116224289 * (1 - rt) + -1.04797863801742E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGDS_MRNA;
end
max_predicted_values = max(ERMem_PTGDS);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_PTGDS);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGDS_MRNA_exp_means = (Cyt_PTGDS_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGDS_MRNA_exp_means,Cyt_PTGDS_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_PTGDS(1:length(ERMem_PTGDS))),max(Cyt_PTGDS_MRNA_exp_means+Cyt_PTGDS_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(16) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PTGES2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PTGES2 = statevar(:,9);
isRealNumber = ~isnan(GolgiMem_PTGES2);
GolgiMem_PTGES2 = GolgiMem_PTGES2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PTGES2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PTGES2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_PTGES2(1:length(GolgiMem_PTGES2)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(17);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_PTGES2_predicted_0min = statevar(1,9);
mRNA_initial_concentration(17) = GolgiMem_PTGES2_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_PTGES2_MRNA_exp_means = [1 1.086385 1.04784 0.9968584 1.162626 0.8618011 0.9752258 1.199262];
Cyt_PTGES2_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_PTGES2_MRNA_exp_means = Cyt_PTGES2_MRNA_exp_means * mRNA_initial_concentration(17);
Cyt_PTGES2_MRNA_exp_sds   = Cyt_PTGES2_MRNA_exp_sds * mRNA_initial_concentration(17);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGES2_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGES2_MRNA =       ((1 - mRNA_initial_concentration(17)) * rt + mRNA_initial_concentration(17) * 1 + mRNA_initial_concentration(17) * (1 - mRNA_initial_concentration(17)) * (1.08638501167297 * (1 - mRNA_initial_concentration(17)) + -0.0249859571456909 * mRNA_initial_concentration(17)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 1 + rt * 1.08638501167297 + rt * (1 - rt) * (-0.0249859571456909 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 1.08638501167297 + rt * 1.04784023761749 + rt * (1 - rt) * (0.0026107668876648 * (1 - rt) + -0.000434786243104946 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 1.04784023761749 + rt * 0.996858358383179 + rt * (1 - rt) * (0.0133865535259247 * (1 - rt) + 7.34144960403891E-05 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 0.996858358383179 + rt * 1.16262567043304 + rt * (1 - rt) * (-0.0158089801669121 * (1 - rt) + 8.41751963534656E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 1.16262567043304 + rt * 0.861801087856293 + rt * (1 - rt) * (0.00893842354416847 * (1 - rt) + -6.61236116485133E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 0.861801087856293 + rt * 0.975225806236267 + rt * (1 - rt) * (-0.000484323749939601 * (1 - rt) + 2.45417353778732E-05 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGES2_MRNA = mRNA_initial_concentration(17) * ((1 - rt) * 0.975225806236267 + rt * 1.19926226139069 + rt * (1 - rt) * (-0.000484323749939601 * (1 - rt) + -3.3199688753277E-06 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGES2_MRNA;
end
max_predicted_values = max(GolgiMem_PTGES2);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_PTGES2);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGES2_MRNA_exp_means = (Cyt_PTGES2_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGES2_MRNA_exp_means,Cyt_PTGES2_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_PTGES2(1:length(GolgiMem_PTGES2))),max(Cyt_PTGES2_MRNA_exp_means+Cyt_PTGES2_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(17) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PTGS1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGS1 = statevar(:,47);
isRealNumber = ~isnan(ERMem_PTGS1);
ERMem_PTGS1 = ERMem_PTGS1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGS1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGS1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGS1(1:length(ERMem_PTGS1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(18);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_PTGS1_predicted_0min = statevar(1,47);
mRNA_initial_concentration(18) = ERMem_PTGS1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_PTGS1_MRNA_exp_means = [1 0.783056 0.6489888 0.6219577 0.6259084 0.5634648 0.4983769 0.7054368];
Cyt_PTGS1_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_PTGS1_MRNA_exp_means = Cyt_PTGS1_MRNA_exp_means * mRNA_initial_concentration(18);
Cyt_PTGS1_MRNA_exp_sds   = Cyt_PTGS1_MRNA_exp_sds * mRNA_initial_concentration(18);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGS1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGS1_MRNA =       ((1 - mRNA_initial_concentration(18)) * rt + mRNA_initial_concentration(18) * 1 + mRNA_initial_concentration(18) * (1 - mRNA_initial_concentration(18)) * (0.783056020736694 * (1 - mRNA_initial_concentration(18)) + 0.0165753602981567 * mRNA_initial_concentration(18)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 1 + rt * 0.783056020736694 + rt * (1 - rt) * (0.0165753602981567 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.783056020736694 + rt * 0.648988842964172 + rt * (1 - rt) * (0.0241103172302246 * (1 - rt) + 0.000216348968791354 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.648988842964172 + rt * 0.621957659721375 + rt * (1 - rt) * (0.00290065407752991 * (1 - rt) + 0.000239628144711698 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.621957659721375 + rt * 0.625908374786377 + rt * (1 - rt) * (-0.00175862610340118 * (1 - rt) + -2.3381677523284E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.625908374786377 + rt * 0.563464760780334 + rt * (1 - rt) * (0.000747492164373398 * (1 - rt) + -1.32480516049854E-06 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.563464760780334 + rt * 0.498376905918121 + rt * (1 - rt) * (0.00167634760340055 * (1 - rt) + 1.01003671479443E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGS1_MRNA = mRNA_initial_concentration(18) * ((1 - rt) * 0.498376905918121 + rt * 0.705436766147614 + rt * (1 - rt) * (0.00167634760340055 * (1 - rt) + 7.46843120755149E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGS1_MRNA;
end
max_predicted_values = max(ERMem_PTGS1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_PTGS1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGS1_MRNA_exp_means = (Cyt_PTGS1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGS1_MRNA_exp_means,Cyt_PTGS1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_PTGS1(1:length(ERMem_PTGS1))),max(Cyt_PTGS1_MRNA_exp_means+Cyt_PTGS1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(18) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PTGS2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PTGS2 = statevar(:,10);
isRealNumber = ~isnan(GolgiMem_PTGS2);
GolgiMem_PTGS2 = GolgiMem_PTGS2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PTGS2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PTGS2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_PTGS2(1:length(GolgiMem_PTGS2)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(19);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
GolgiMem_PTGS2_predicted_0min = statevar(1,10);
mRNA_initial_concentration(19) = GolgiMem_PTGS2_predicted_0min;
exp_timepoints = [0 0 15 15 30 30 60 60 120 120 240 240 480 480 1200 1200 0 0 0 0 15 15 15 15 30 30 30 30 60 60 60 60 120 120 120 120 240 240 240 240 480 480 480 480 1200 1200 1200 1200];
Cyt_PTGS2_MRNA_exp_means = [1 1 199.5492 199.5492 356.7917 356.7917 451.305 451.305 1005.197 1005.197 492.8795 492.8795 188.5749 188.5749 72.75648 72.75648 1 1 1 1 199.5492 199.5492 199.5492 199.5492 356.7917 356.7917 356.7917 356.7917 451.305 451.305 451.305 451.305 1005.197 1005.197 1005.197 1005.197 492.8795 492.8795 492.8795 492.8795 188.5749 188.5749 188.5749 188.5749 72.75648 72.75648 72.75648 72.75648];
Cyt_PTGS2_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PTGS2_MRNA_exp_means = Cyt_PTGS2_MRNA_exp_means * mRNA_initial_concentration(19);
Cyt_PTGS2_MRNA_exp_sds   = Cyt_PTGS2_MRNA_exp_sds * mRNA_initial_concentration(19);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGS2_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGS2_MRNA =       ((1 - mRNA_initial_concentration(19)) * rt + mRNA_initial_concentration(19) * 1 + mRNA_initial_concentration(19) * (1 - mRNA_initial_concentration(19)) * (199.549240112305 * (1 - mRNA_initial_concentration(19)) + -8.26134643554688 * mRNA_initial_concentration(19)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 1 + rt * 199.549240112305 + rt * (1 - rt) * (-8.26134643554688 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 199.549240112305 + rt * 356.791748046875 + rt * (1 - rt) * (-21.9971801757812 * (1 - rt) + -0.0620777950192018 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 356.791748046875 + rt * 451.304962158203 + rt * (1 - rt) * (18.243293762207 * (1 - rt) + -0.302445248959651 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 451.304962158203 + rt * 1005.197265625 + rt * (1 - rt) * (-40.5025581359863 * (1 - rt) + 0.205135305195846 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 1005.197265625 + rt * 492.879547119141 + rt * (1 - rt) * (9.00413475036621 * (1 - rt) + -0.160128395070928 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 492.879547119141 + rt * 188.574890136719 + rt * (1 - rt) * (3.32123149236043 * (1 - rt) + 0.0402962148149746 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 188.574890136719 + rt * 72.756477355957 + rt * (1 - rt) * (3.32123149236043 * (1 - rt) + -0.0033072187829341 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGS2_MRNA;
end
max_predicted_values = max(GolgiMem_PTGS2);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(GolgiMem_PTGS2);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGS2_MRNA_exp_means = (Cyt_PTGS2_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGS2_MRNA_exp_means,Cyt_PTGS2_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(GolgiMem_PTGS2(1:length(GolgiMem_PTGS2))),max(Cyt_PTGS2_MRNA_exp_means+Cyt_PTGS2_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(19) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PTGS2 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGS2 = statevar(:,48);
isRealNumber = ~isnan(ERMem_PTGS2);
ERMem_PTGS2 = ERMem_PTGS2(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGS2','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGS2,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGS2(1:length(ERMem_PTGS2)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(19);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_PTGS2_predicted_0min = statevar(1,48);
mRNA_initial_concentration(19) = ERMem_PTGS2_predicted_0min;
exp_timepoints = [0 0 15 15 30 30 60 60 120 120 240 240 480 480 1200 1200 0 0 0 0 15 15 15 15 30 30 30 30 60 60 60 60 120 120 120 120 240 240 240 240 480 480 480 480 1200 1200 1200 1200];
Cyt_PTGS2_MRNA_exp_means = [1 1 199.5492 199.5492 356.7917 356.7917 451.305 451.305 1005.197 1005.197 492.8795 492.8795 188.5749 188.5749 72.75648 72.75648 1 1 1 1 199.5492 199.5492 199.5492 199.5492 356.7917 356.7917 356.7917 356.7917 451.305 451.305 451.305 451.305 1005.197 1005.197 1005.197 1005.197 492.8795 492.8795 492.8795 492.8795 188.5749 188.5749 188.5749 188.5749 72.75648 72.75648 72.75648 72.75648];
Cyt_PTGS2_MRNA_exp_sds = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Cyt_PTGS2_MRNA_exp_means = Cyt_PTGS2_MRNA_exp_means * mRNA_initial_concentration(19);
Cyt_PTGS2_MRNA_exp_sds   = Cyt_PTGS2_MRNA_exp_sds * mRNA_initial_concentration(19);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of PTGS2_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_PTGS2_MRNA =       ((1 - mRNA_initial_concentration(19)) * rt + mRNA_initial_concentration(19) * 1 + mRNA_initial_concentration(19) * (1 - mRNA_initial_concentration(19)) * (199.549240112305 * (1 - mRNA_initial_concentration(19)) + -8.26134643554688 * mRNA_initial_concentration(19)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 1 + rt * 199.549240112305 + rt * (1 - rt) * (-8.26134643554688 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 199.549240112305 + rt * 356.791748046875 + rt * (1 - rt) * (-21.9971801757812 * (1 - rt) + -0.0620777950192018 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 356.791748046875 + rt * 451.304962158203 + rt * (1 - rt) * (18.243293762207 * (1 - rt) + -0.302445248959651 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 451.304962158203 + rt * 1005.197265625 + rt * (1 - rt) * (-40.5025581359863 * (1 - rt) + 0.205135305195846 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 1005.197265625 + rt * 492.879547119141 + rt * (1 - rt) * (9.00413475036621 * (1 - rt) + -0.160128395070928 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 492.879547119141 + rt * 188.574890136719 + rt * (1 - rt) * (3.32123149236043 * (1 - rt) + 0.0402962148149746 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_PTGS2_MRNA = mRNA_initial_concentration(19) * ((1 - rt) * 188.574890136719 + rt * 72.756477355957 + rt * (1 - rt) * (3.32123149236043 * (1 - rt) + -0.0033072187829341 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_PTGS2_MRNA;
end
max_predicted_values = max(ERMem_PTGS2);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_PTGS2);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_PTGS2_MRNA_exp_means = (Cyt_PTGS2_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_PTGS2_MRNA_exp_means,Cyt_PTGS2_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_PTGS2(1:length(ERMem_PTGS2))),max(Cyt_PTGS2_MRNA_exp_means+Cyt_PTGS2_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(19) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot GolgiMem_PTGS2BACK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
GolgiMem_PTGS2BACK = statevar(:,11);
isRealNumber = ~isnan(GolgiMem_PTGS2BACK);
GolgiMem_PTGS2BACK = GolgiMem_PTGS2BACK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('GolgiMem_PTGS2BACK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,GolgiMem_PTGS2BACK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(GolgiMem_PTGS2BACK(1:length(GolgiMem_PTGS2BACK)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;



%%%%%%%%%%%%%%%%%% Plot ERMem_PTGS2BACK in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGS2BACK = statevar(:,49);
isRealNumber = ~isnan(ERMem_PTGS2BACK);
ERMem_PTGS2BACK = ERMem_PTGS2BACK(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGS2BACK','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGS2BACK,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGS2BACK(1:length(ERMem_PTGS2BACK)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot ERMem_PTGS2EXPORT in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGS2EXPORT = statevar(:,50);
isRealNumber = ~isnan(ERMem_PTGS2EXPORT);
ERMem_PTGS2EXPORT = ERMem_PTGS2EXPORT(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGS2EXPORT','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGS2EXPORT,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGS2EXPORT(1:length(ERMem_PTGS2EXPORT)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot ERMem_PTGS2INACT in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_PTGS2INACT = statevar(:,51);
isRealNumber = ~isnan(ERMem_PTGS2INACT);
ERMem_PTGS2INACT = ERMem_PTGS2INACT(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_PTGS2INACT','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_PTGS2INACT,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_PTGS2INACT(1:length(ERMem_PTGS2INACT)))*1.1]);
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%% Plot ERMem_TBXAS1 in Bmdm_kdo_lipida_atp
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
ERMem_TBXAS1 = statevar(:,52);
isRealNumber = ~isnan(ERMem_TBXAS1);
ERMem_TBXAS1 = ERMem_TBXAS1(isRealNumber);
current_time_2 = time_2(isRealNumber);
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strrep('ERMem_TBXAS1','_',' ')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(current_time_2,ERMem_TBXAS1,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 max(ERMem_TBXAS1(1:length(ERMem_TBXAS1)))*1.1]);
original_mRNA_expression = mRNA_initial_concentration(20);% save original mRNA initial concentration, since it will be mapped to protein concentration for better comparison
ERMem_TBXAS1_predicted_0min = statevar(1,52);
mRNA_initial_concentration(20) = ERMem_TBXAS1_predicted_0min;
exp_timepoints = [0 15 30 60 120 240 480 1200];
Cyt_TBXAS1_MRNA_exp_means = [1 0.4889346 0.5104922 0.5048272 0.4838524 0.3742522 0.2802287 0.3569818];
Cyt_TBXAS1_MRNA_exp_sds = [0 0 0 0 0 0 0 0];
Cyt_TBXAS1_MRNA_exp_means = Cyt_TBXAS1_MRNA_exp_means * mRNA_initial_concentration(20);
Cyt_TBXAS1_MRNA_exp_sds   = Cyt_TBXAS1_MRNA_exp_sds * mRNA_initial_concentration(20);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color); 
xlim([min(time_2)-10 max(time_2)+10]);
mRNA_time_vector = 1:1:max_time;
mRNA_timevector_length = length(mRNA_time_vector);
mRNA_values = zeros(mRNA_timevector_length,1);
for indexTime = 1:mRNA_timevector_length
  time = mRNA_time_vector(indexTime);
% Expression of TBXAS1_MRNA (Mrna) in Cytosol (Bmdm_kdo_lipida_atp)
if (time == 0)
   rt = (time - 0)/15;
   Cyt_TBXAS1_MRNA =       ((1 - mRNA_initial_concentration(20)) * rt + mRNA_initial_concentration(20) * 1 + mRNA_initial_concentration(20) * (1 - mRNA_initial_concentration(20)) * (0.488934576511383 * (1 - mRNA_initial_concentration(20)) + 0.106524610519409 * mRNA_initial_concentration(20)));
elseif (time > 0) && (time < 15)
   rt = (time - 0)/15;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 1 + rt * 0.488934576511383 + rt * (1 - rt) * (0.106524610519409 * (1 - rt) + 0 * rt));
elseif (time >= 15) && (time < 30)
   rt = (time - 15)/15;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.488934576511383 + rt * 0.510492205619812 + rt * (1 - rt) * (-0.00487802624702454 * (1 - rt) + 0.00187265991723648 * rt));
elseif (time >= 30) && (time < 60)
   rt = (time - 30)/30;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.510492205619812 + rt * 0.504827201366425 + rt * (1 - rt) * (-0.000482241809368134 * (1 - rt) + -0.000388998967651979 * rt));
elseif (time >= 60) && (time < 120)
   rt = (time - 60)/60;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.504827201366425 + rt * 0.483852356672287 + rt * (1 - rt) * (-0.0016912616789341 * (1 - rt) + 6.8066069436878E-05 * rt));
elseif (time >= 120) && (time < 240)
   rt = (time - 120)/120;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.483852356672287 + rt * 0.374252200126648 + rt * (1 - rt) * (0.00156471021473408 * (1 - rt) + -1.77360879741135E-05 * rt));
elseif (time >= 240) && (time < 480)
   rt = (time - 240)/240;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.374252200126648 + rt * 0.280228704214096 + rt * (1 - rt) * (0.00149509819845359 * (1 - rt) + 5.08138187945073E-06 * rt));
elseif (time >= 480) && (time <= 1200)
   rt = (time - 480)/720;
   Cyt_TBXAS1_MRNA = mRNA_initial_concentration(20) * ((1 - rt) * 0.280228704214096 + rt * 0.356981784105301 + rt * (1 - rt) * (0.00149509819845359 * (1 - rt) + 1.43524243429902E-07 * rt));
else
  Outside_of_timerange = true;
end

  mRNA_values(indexTime) = Cyt_TBXAS1_MRNA;
end
max_predicted_values = max(ERMem_TBXAS1);
max_mRNA_values = max(mRNA_values);
if (max(mRNA_values) * 2 < max_predicted_values)
   min_predicted_values = min(ERMem_TBXAS1);
   min_mRNA_values = min(mRNA_values);
   mRNA_values = (mRNA_values/max_mRNA_values) * max_predicted_values;
   Cyt_TBXAS1_MRNA_exp_means = (Cyt_TBXAS1_MRNA_exp_means/max_mRNA_values) * max_predicted_values;
end
errorbar(exp_timepoints,Cyt_TBXAS1_MRNA_exp_means,Cyt_TBXAS1_MRNA_exp_sds,'o','MarkerSize',10,'Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
plot(mRNA_time_vector,mRNA_values,'--','Color',Bmdm_kdo_lipida_atp_input_color,'LineWidth',2);
ylim([0 max(max(ERMem_TBXAS1(1:length(ERMem_TBXAS1))),max(Cyt_TBXAS1_MRNA_exp_means+Cyt_TBXAS1_MRNA_exp_sds))*1.1]);
mRNA_initial_concentration(20) = original_mRNA_expression;% restore original mRNA initial concentration
xlabel('time [min]');
ylabel({'concentration','[mol/l]'});
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relative compartment localization for ALOX15 in Cytosol
isNotNaN = ~isnan(statevar(:,77));
current_time_2 = time_2(isNotNaN);
n_ERMem_ALOX15 = statevar(isNotNaN,40) * 4.256858E-08;
n_Cyt_ALOX15 = statevar(isNotNaN,77) * 1.237002E-06;
n_total_ALOX15_Bmdm_kdo_lipida_atp = n_ERMem_ALOX15 + n_Cyt_ALOX15;
%%% Plot ERMem_ALOX15 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_ALOX15./n_total_ALOX15_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_ALOX15','_',' '),' vs total (ALOX15 (PFG no. 12))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot Cyt_ALOX15 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_Cyt_ALOX15./n_total_ALOX15_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('Cyt_ALOX15','_',' '),' vs total (ALOX15 (PFG no. 12))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relative compartment localization for ALOX5 in Cytosol
isNotNaN = ~isnan(statevar(:,78));
current_time_2 = time_2(isNotNaN);
n_ERMem_ALOX5 = statevar(isNotNaN,41) * 4.256858E-08;
n_Cyt_ALOX5 = statevar(isNotNaN,78) * 1.237002E-06;
n_total_ALOX5_Bmdm_kdo_lipida_atp = n_ERMem_ALOX5 + n_Cyt_ALOX5;
%%% Plot ERMem_ALOX5 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_ALOX5./n_total_ALOX5_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_ALOX5','_',' '),' vs total (ALOX5 (PFG no. 13))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot Cyt_ALOX5 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_Cyt_ALOX5./n_total_ALOX5_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('Cyt_ALOX5','_',' '),' vs total (ALOX5 (PFG no. 13))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relative compartment localization for HPGDS in Cytosol
isNotNaN = ~isnan(statevar(:,82));
current_time_2 = time_2(isNotNaN);
n_ERMem_HPGDS = statevar(isNotNaN,43) * 4.256858E-08;
n_Cyt_HPGDS = statevar(isNotNaN,82) * 1.237002E-06;
n_total_HPGDS_Bmdm_kdo_lipida_atp = n_ERMem_HPGDS + n_Cyt_HPGDS;
%%% Plot ERMem_HPGDS vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_HPGDS./n_total_HPGDS_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_HPGDS','_',' '),' vs total (HPGDS (PFG no. 18))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot Cyt_HPGDS vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_Cyt_HPGDS./n_total_HPGDS_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('Cyt_HPGDS','_',' '),' vs total (HPGDS (PFG no. 18))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relative compartment localization for PLA2G4A in Cytosol
isNotNaN = ~isnan(statevar(:,84));
current_time_2 = time_2(isNotNaN);
n_GolgiMem_PLA2G4A = statevar(isNotNaN,7) * 5.321072E-09;
n_ERMem_PLA2G4A = statevar(isNotNaN,45) * 4.256858E-08;
n_Cyt_PLA2G4A = statevar(isNotNaN,84) * 1.237002E-06;
n_total_PLA2G4A_Bmdm_kdo_lipida_atp = n_GolgiMem_PLA2G4A + n_ERMem_PLA2G4A + n_Cyt_PLA2G4A;
%%% Plot GolgiMem_PLA2G4A vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_GolgiMem_PLA2G4A./n_total_PLA2G4A_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('GolgiMem_PLA2G4A','_',' '),' vs total (PLA2G4A (PFG no. 23))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot ERMem_PLA2G4A vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_PLA2G4A./n_total_PLA2G4A_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_PLA2G4A','_',' '),' vs total (PLA2G4A (PFG no. 23))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot Cyt_PLA2G4A vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_Cyt_PLA2G4A./n_total_PLA2G4A_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('Cyt_PLA2G4A','_',' '),' vs total (PLA2G4A (PFG no. 23))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Relative compartment localization for PTGS2INACT in Er_membrane
isNotNaN = ~isnan(statevar(:,51));
current_time_2 = time_2(isNotNaN);
n_GolgiMem_PTGS2 = statevar(isNotNaN,10) * 5.321072E-09;
n_GolgiMem_PTGS2BACK = statevar(isNotNaN,11) * 5.321072E-09;
n_ERMem_PTGS2 = statevar(isNotNaN,48) * 4.256858E-08;
n_ERMem_PTGS2BACK = statevar(isNotNaN,49) * 4.256858E-08;
n_ERMem_PTGS2EXPORT = statevar(isNotNaN,50) * 4.256858E-08;
n_ERMem_PTGS2INACT = statevar(isNotNaN,51) * 4.256858E-08;
n_total_PTGS2INACT_Bmdm_kdo_lipida_atp = n_GolgiMem_PTGS2 + n_GolgiMem_PTGS2BACK + n_ERMem_PTGS2 + n_ERMem_PTGS2BACK + n_ERMem_PTGS2EXPORT + n_ERMem_PTGS2INACT;
%%% Plot GolgiMem_PTGS2 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_GolgiMem_PTGS2./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('GolgiMem_PTGS2','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot GolgiMem_PTGS2BACK vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_GolgiMem_PTGS2BACK./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('GolgiMem_PTGS2BACK','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot ERMem_PTGS2 vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_PTGS2./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_PTGS2','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot ERMem_PTGS2BACK vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_PTGS2BACK./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_PTGS2BACK','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot ERMem_PTGS2EXPORT vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_PTGS2EXPORT./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_PTGS2EXPORT','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

%%% Plot ERMem_PTGS2INACT vs Rest of 
indexSubplot = indexSubplot + 1;
if indexSubplot > (subplot_rows * subplot_cols)
  figure;
  indexSubplot = 1;
end
Percent_compartment = 100*n_ERMem_PTGS2INACT./n_total_PTGS2INACT_Bmdm_kdo_lipida_atp;
subplot(subplot_rows,subplot_cols,indexSubplot);
hold on;
plot(current_time_2,Percent_compartment,'-','Color',Bmdm_kdo_lipida_atp_predicted_color,'LineWidth',2);
ylim([0 100]);
title_name = {strrep('Bmdm_kdo_lipida_atp','_',' ');strcat(strrep('ERMem_PTGS2INACT','_',' '),' vs total (PTGS2 (PFG no. 28))')};
title(title_name,'FontWeight','bold','Color',Bmdm_kdo_lipida_atp_predicted_color);
ylabel({'# Molecules','[%]'});
xlabel('time [min]');
set(gca,'FontSize',15,'fontWeight','bold');
set(gca, 'linewidth', 1.5);
hold off;

% Assign statevar output to variables, define experimental values and calculate goodness of fit - END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

