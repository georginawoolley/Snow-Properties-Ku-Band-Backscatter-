figure(1);
subplot(2,4,1);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

plot(b_Final_Pit_2023{5,2},a_Final_Pit_2023{5,2},'k','LineWidth',2,'Color', [0.2 0.2 0.2], 'LineWidth', 2); % Dark grey;);
hold on;
plot(b_Final_Pit_2023{6,2},a_Final_Pit_2023{6,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey;);
hold on;
plot(b_Final_Pit_2023{7,2},a_Final_Pit_2023{7,2},'k','LineWidth',2,'Color', [0.8 0.8 0.8], 'LineWidth', 2); % Light grey););
% hold on; 
% plot(b_Final_Pit_2023{4,2},a_Final_Pit_2023{4,2},'k','LineWidth',2);
hold on; 

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('TVC 2023');

subplot(2,4,5);

load('D:\Paper 2\SSA_LV\TVC_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\TVC_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
% legend('Default Ensemble', 'Default Ensemble Mean', 'Arctic Ensemble', 'Arctic Ensemble Mean');
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,4,2);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

plot(b_Final_Pit_2023{11,2},a_Final_Pit_2023{11,2},'k','LineWidth',2,'Color', [0.2 0.2 0.2], 'LineWidth', 2); % Dark grey;);
hold on;
plot(b_Final_Pit_2023{12,2},a_Final_Pit_2023{12,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey;);
hold on;
plot(b_Final_Pit_2023{13,2},a_Final_Pit_2023{13,2},'k','LineWidth',2,'Color', [0.8 0.8 0.8], 'LineWidth', 2); % Light grey););
% hold on; 
% plot(b_Final_Pit_2023{4,2},a_Final_Pit_2023{4,2},'k','LineWidth',2);
hold on; 

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Valley 2023');

subplot(2,4,6);

load('D:\Paper 2\SSA_LV\Valley_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\Valley_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,4,3);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

plot(b_Final_Pit_2023{20,2},a_Final_Pit_2023{20,2},'k','LineWidth',2,'Color', [0.3 0.3 0.3], 'LineWidth', 2); % Dark grey);
hold on;
plot(b_Final_Pit_2023{21,2},a_Final_Pit_2023{21,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey););
hold on;
plot(b_Final_Pit_2023{22,2},a_Final_Pit_2023{22,2},'k','LineWidth',2,'Color', [0.6 0.6 0.6], 'LineWidth', 2); % Light grey););
hold on;

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Mixed Shrub 2023');

subplot(2,4,7);

load('D:\Paper 2\SSA_LV\MixedShrub_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\MixedShrub_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
% legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,4,4);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

plot(b_Final_Pit_2023{23,2},a_Final_Pit_2023{23,2},'k','LineWidth',2,'Color', [0.3 0.3 0.3], 'LineWidth', 2); % Dark grey);
hold on;
plot(b_Final_Pit_2023{24,2},a_Final_Pit_2023{24,2},'k','LineWidth',2,'Color', [0.5 0.5 0.5], 'LineWidth', 2); % Medium grey););
hold on;
plot(b_Final_Pit_2023{25,2},a_Final_Pit_2023{25,2},'k','LineWidth',2,'Color', [0.6 0.6 0.6], 'LineWidth', 2); % Light grey););
hold on; 

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
yticklabels({'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
legend('Pit Measurements','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Shrub Tree 2023');

subplot(2,4,8);

load('D:\Paper 2\SSA_HV\ShrubTree_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_HV\ShrubTree_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]);
xticklabels({'1','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0'});
xlabel('Normalised Depth','FontSize',12);
legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

%% 2023
figure(1);
subplot(2,4,1);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

% Lighter to darker shades of grey
greyShades = [0.7 0.7 0.7;
              0.6 0.6 0.6;
              0.5 0.5 0.5;
              0.4 0.4 0.4;
              0.3 0.3 0.3;
              0.2 0.2 0.2];

plot(b_Final_Pit_2023{1,2},a_Final_Pit_2023{1,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{2,2},a_Final_Pit_2023{2,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{3,2},a_Final_Pit_2023{3,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{4,2},a_Final_Pit_2023{4,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{5,2},a_Final_Pit_2023{5,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{6,2},a_Final_Pit_2023{6,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on;

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.2 0.4 0.6 0.8 1.0]);
yticklabels({'0','0.2','0.4','0.6','0.8','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('TVC 2023');

subplot(2,4,5);

load('D:\Paper 2\SSA_LV\TVC_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\TVC_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.2 0.4 0.6 0.8 1.0]);
xticklabels({'1','0.8','0.6','0.4','0.2','0'});

xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,4,2);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

plot(b_Final_Pit_2023{7,2},a_Final_Pit_2023{7,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{8,2},a_Final_Pit_2023{8,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{9,2},a_Final_Pit_2023{9,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{10,2},a_Final_Pit_2023{10,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{11,2},a_Final_Pit_2023{11,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{12,2},a_Final_Pit_2023{12,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on;

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.2 0.4 0.6 0.8 1.0]);
yticklabels({'0','0.2','0.4','0.6','0.8','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Valley 2023');

subplot(2,4,6);

load('D:\Paper 2\SSA_LV\Valley_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\Valley_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.2 0.4 0.6 0.8 1.0]);
xticklabels({'1','0.8','0.6','0.4','0.2','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

subplot(2,4,3);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

% Lighter to darker shades of grey
greyShades = [0.9 0.9 0.9;
              0.8 0.8 0.8;
              0.7 0.7 0.7;
              0.6 0.6 0.6;
              0.5 0.5 0.5;
              0.4 0.4 0.4;
              0.3 0.3 0.3;
              0.2 0.2 0.2];

plot(b_Final_Pit_2023{31,2},a_Final_Pit_2023{31,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{32,2},a_Final_Pit_2023{32,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{33,2},a_Final_Pit_2023{33,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{34,2},a_Final_Pit_2023{34,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{35,2},a_Final_Pit_2023{35,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{36,2},a_Final_Pit_2023{36,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on; 
% plot(b_Final_Pit_2023{57,2},a_Final_Pit_2023{57,2},'Color', greyShades(7,:), 'LineWidth',2);
% hold on; 
% plot(b_Final_Pit_2023{58,2},a_Final_Pit_2023{58,2},'Color', greyShades(8,:), 'LineWidth',2);
% hold on;

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.2 0.4 0.6 0.8 1.0]);
yticklabels({'0','0.2','0.4','0.6','0.8','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Mixed Shrub 2023');

subplot(2,4,7);

load('D:\Paper 2\SSA_LV\MixedShrub_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_LV\MixedShrub_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.2 0.4 0.6 0.8 1.0]);
xticklabels({'1','0.8','0.6','0.4','0.2','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);
% legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');

subplot(2,4,4);

load('D:\Paper 2\SSA_LV\Rescaled_SSA_2023.mat');

% Lighter to darker shades of grey
greyShades = [0.9 0.9 0.9;
              0.8 0.8 0.8;
              0.7 0.7 0.7;
              0.6 0.6 0.6;
              0.5 0.5 0.5;
              0.4 0.4 0.4;
              0.3 0.3 0.3;
              0.2 0.2 0.2];

plot(b_Final_Pit_2023{37,2},a_Final_Pit_2023{37,2},'Color', greyShades(1,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{38,2},a_Final_Pit_2023{38,2},'Color', greyShades(2,:), 'LineWidth',2);
hold on;
plot(b_Final_Pit_2023{39,2},a_Final_Pit_2023{39,2},'Color', greyShades(3,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{40,2},a_Final_Pit_2023{40,2},'Color', greyShades(4,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{41,2},a_Final_Pit_2023{41,2},'Color', greyShades(5,:), 'LineWidth',2);
hold on; 
plot(b_Final_Pit_2023{42,2},a_Final_Pit_2023{42,2},'Color', greyShades(6,:), 'LineWidth',2);
hold on; 
% plot(b_Final_Pit_2023{57,2},a_Final_Pit_2023{57,2},'Color', greyShades(7,:), 'LineWidth',2);
% hold on; 
% plot(b_Final_Pit_2023{58,2},a_Final_Pit_2023{58,2},'Color', greyShades(8,:), 'LineWidth',2);
% hold on;

xlim([0 60]);
xticks([0 10 20 30 40 50 60]);
xticklabels({'0','10','20','30','40','50','60'});
ylim([0 1]);
yticks([0 0.2 0.4 0.6 0.8 1.0]);
yticklabels({'0','0.2','0.4','0.6','0.8','1'});
xlabel('SSA (kg m^-^3)','FontSize',12);
ylabel('Normalised Depth','FontSize',12);
% legend('Pit Measurements');
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);

title('Shrub Tree 2023');

subplot(2,4,8);

load('D:\Paper 2\SSA_HV\ShrubTree_Arctic\2023\IQR_2023_A.mat');

load('D:\Paper 2\SSA_HV\ShrubTree_Default\2023\IQR_2023.mat');

load('D:\Paper 2\SSA_LV\b_Final_CDP.mat');

jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023', IQR_25_2023', 'b', 'b', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023, 'b', 'LineWidth', 2); % Plot mean
hold on;
jbfill(flipud(b_Final_CDP(:,1))', IQR_75_2023_A', IQR_25_2023_A', 'r', 'r', 1, 0.2);
hold on;
plot(flipud(b_Final_CDP(:,1)), Median_SSA_2023_A, 'r', 'LineWidth', 2); % Plot mean

camroll(-90);
set(gca, 'yticklabel', []);
ylim([0 60]);
yticks([0 10 20 30 40 50 60]);
yticklabels({'0','10','20','30','40','50','60'});
xlim([0 1]);
xticks([0 0.2 0.4 0.6 0.8 1.0]);
xticklabels({'1','0.8','0.6','0.4','0.2','0'});
xlabel('Normalised Depth','FontSize',12);
ax = gca; % Get current axes
set(ax, 'LineWidth', 2); % Set the border line width to 2
set(ax, 'FontSize', 18);
% legend('Default Ensemble', 'Default Ensemble Median', 'Arctic Ensemble', 'Arctic Ensemble Median','Location','Best');