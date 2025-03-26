figure(1);
subplot(2,3,1);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2022.mat');

plot(b_Final_Pit_2022{14,2},a_Final_Pit_2022{14,2},'k','LineWidth',2,'Color', [0.2 0.2 0.2], 'LineWidth', 2); % Dark grey;);
hold on;
plot(b_Final_Pit_2022{15,2},a_Final_Pit_2022{15,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey;);
hold on;
plot(b_Final_Pit_2022{16,2},a_Final_Pit_2022{16,2},'k','LineWidth',2,'Color', [0.8 0.8 0.8], 'LineWidth', 2); % Light grey););
% hold on; 
% plot(b_Final_Pit_2022{4,2},a_Final_Pit_2022{4,2},'k','LineWidth',2);
hold on; 

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Upper Plateau 2022');

subplot(2,3,4);

load('D:\Paper 2\Density_LV\UpperPlateau_Default\2022\IQR_2022.mat');

load('D:\Paper 2\Density_LV\UpperPlateau_Arctic\2022\IQR_2022_A.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022', IQR_25_2022', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022_A', IQR_25_2022_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
% legend('Default Ensemble', 'Default Ensemble Mean', 'Arctic Ensemble', 'Arctic Ensemble Mean');
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,3,2);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2022.mat');

plot(b_Final_Pit_2022{17,2},a_Final_Pit_2022{17,2},'k','LineWidth',2,'Color', [0.2 0.2 0.2], 'LineWidth', 2); % Dark grey;);
hold on;
plot(b_Final_Pit_2022{18,2},a_Final_Pit_2022{18,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey;);
hold on;
plot(b_Final_Pit_2022{19,2},a_Final_Pit_2022{19,2},'k','LineWidth',2,'Color', [0.8 0.8 0.8], 'LineWidth', 2); % Light grey););
% hold on; 
% plot(b_Final_Pit_2022{4,2},a_Final_Pit_2022{4,2},'k','LineWidth',2);
hold on; 

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Small Shrub 2022');

subplot(2,3,5);

load('D:\Paper 2\Density_LV\SmallShrub_Default\2022\IQR_2022.mat');

load('D:\Paper 2\Density_LV\SmallShrub_Arctic\2022\IQR_2022_A.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022', IQR_25_2022', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022_A', IQR_25_2022_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,3,3);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2022.mat');

plot(b_Final_Pit_2022{1,2},a_Final_Pit_2022{1,2},'k','LineWidth',2,'Color', [0.3 0.3 0.3], 'LineWidth', 2); % Dark grey);
hold on;
plot(b_Final_Pit_2022{2,2},a_Final_Pit_2022{3,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey););
hold on;
plot(b_Final_Pit_2022{3,2},a_Final_Pit_2022{3,2},'k','LineWidth',2,'Color', [0.6 0.6 0.6], 'LineWidth', 2); % Light grey););
hold on; 
plot(b_Final_Pit_2022{4,2},a_Final_Pit_2022{4,2},'k','LineWidth',2,'Color', [0.7 0.7 0.7], 'LineWidth', 2); % Lighter grey);
hold on; 

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
legend('Pit Measurements','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Havikpak 2022');

subplot(2,3,6);

load('D:\Paper 2\Density_HV\Havikpak_Arctic\2022\IQR_2022_A.mat');

load('D:\Paper 2\Density_HV\Havikpak_Default\2022\IQR_2022.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022', IQR_25_2022', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2022_A', IQR_25_2022_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2022_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

%% 2023; 
figure(1);
subplot(2,3,1);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2023.mat');

% Lighter to darker shades of grey
greyShades = [0.7 0.7 0.7;
              0.6 0.6 0.6;
              0.5 0.5 0.5;
              0.4 0.4 0.4;
              0.3 0.3 0.3;
              0.2 0.2 0.2];

plot(b_Final_Pit_2023{27,2},a_Final_Pit_2023{27,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{28,2},a_Final_Pit_2023{28,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{29,2},a_Final_Pit_2023{29,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{30,2},a_Final_Pit_2023{30,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{31,2},a_Final_Pit_2023{31,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{32,2},a_Final_Pit_2023{32,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on;

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Upper Plateau 2023');

subplot(2,3,4);

load('D:\Paper 2\Density_LV\UpperPlateau_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\Density_LV\UpperPlateau_Default\2023\IQR_2023.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});

xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,3,2);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2023.mat');

plot(b_Final_Pit_2023{33,2},a_Final_Pit_2023{33,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{34,2},a_Final_Pit_2023{34,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{35,2},a_Final_Pit_2023{35,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{36,2},a_Final_Pit_2023{36,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{37,2},a_Final_Pit_2023{37,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{38,2},a_Final_Pit_2023{38,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on;

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Small Shrub 2023');

subplot(2,3,5);

load('D:\Paper 2\Density_LV\SmallShrub_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\Density_LV\SmallShrub_Default\2023\IQR_2023.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,3,3);

load('D:\Paper 2\Density_LV\Rescaled_Pits_2023.mat');

% Lighter to darker shades of grey
greyShades = [0.9 0.9 0.9;
              0.8 0.8 0.8;
              0.7 0.7 0.7;
              0.6 0.6 0.6;
              0.5 0.5 0.5;
              0.4 0.4 0.4;
              0.3 0.3 0.3;
              0.2 0.2 0.2];

plot(b_Final_Pit_2023{51,2},a_Final_Pit_2023{51,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{52,2},a_Final_Pit_2023{52,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{53,2},a_Final_Pit_2023{54,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{54,2},a_Final_Pit_2023{54,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{55,2},a_Final_Pit_2023{55,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{56,2},a_Final_Pit_2023{56,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{57,2},a_Final_Pit_2023{57,2},'Color', greyShades(7,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{58,2},a_Final_Pit_2023{58,2},'Color', greyShades(8,:), 'LineWidth',2);
hold on;

xlim([0 500]);
xticks([0 100 200 300 400 500]);
xticklabels({'0','100','200','300','400','500'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('Density (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Havikpak 2023');

subplot(2,3,6);

load('D:\Paper 2\Density_HV\Havikpak_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\Density_HV\Havikpak_Default\2023\IQR_2023.mat');

load('D:\Paper 2\Density_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_Density_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 500]);
yticks([0 100 200 300 400 500]);
yticklabels({'0','100','200','300','400','500'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);
% legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');