figure(2);

subplot(2,3,1);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_TVC, ...
    Arctic_Median_TVC - Arctic_IQR_25_TVC, ...
    Arctic_IQR_75_TVC - Arctic_Median_TVC, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_TVC, ...
    Default_Median_TVC - Default_IQR_25_TVC, ...
    Default_IQR_75_TVC - Default_Median_TVC, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_H, Arctic_IQR_25_H, Arctic_IQR_75_H, Default_Median_H, Default_IQR_25_H, Default_IQR_75_H}, 
    {Pit_Median_SS, Arctic_Median_SS, Arctic_IQR_25_SS, Arctic_IQR_75_SS, Default_Median_SS, Default_IQR_25_SS, Default_IQR_75_SS}, 
    {Pit_Median_UP, Arctic_Median_UP, Arctic_IQR_25_UP, Arctic_IQR_75_UP, Default_Median_UP, Default_IQR_25_UP, Default_IQR_75_UP},
    {Pit_Median_ST, Arctic_Median_ST, Arctic_IQR_25_ST, Arctic_IQR_75_ST, Default_Median_ST, Default_IQR_25_ST, Default_IQR_75_ST},
    {Pit_Median_MS, Arctic_Median_MS, Arctic_IQR_25_MS, Arctic_IQR_75_MS, Default_Median_MS, Default_IQR_25_MS, Default_IQR_75_MS},
    {Pit_Median_V, Arctic_Median_V, Arctic_IQR_25_V, Arctic_IQR_75_V, Default_Median_V, Default_IQR_25_V, Default_IQR_75_V},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_TVC_2023, Arctic_IQR_25_TVC_2023, Arctic_IQR_75_TVC_2023, Default_Median_TVC_2023, Default_IQR_25_TVC_2023, Default_IQR_75_TVC_2023}, 
    {Pit_Median_H_2023, Arctic_Median_H_2023, Arctic_IQR_25_H_2023, Arctic_IQR_75_H_2023, Default_Median_H_2023, Default_IQR_25_H_2023, Default_IQR_75_H_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_SS_2023, Arctic_IQR_25_SS_2023, Arctic_IQR_75_SS_2023, Default_Median_SS_2023, Default_IQR_25_SS_2023, Default_IQR_75_SS_2023},
    {Pit_Median_UP_2023, Arctic_Median_UP_2023, Arctic_IQR_25_UP_2023, Arctic_IQR_75_UP_2023, Default_Median_UP_2023, Default_IQR_25_UP_2023, Default_IQR_75_UP_2023},
    {Pit_Median_ST_2023, Arctic_Median_ST_2023, Arctic_IQR_25_ST_2023, Arctic_IQR_75_ST_2023, Default_Median_ST_2023, Default_IQR_25_ST_2023, Default_IQR_75_ST_2023},
    {Pit_Median_MS_2023, Arctic_Median_MS_2023, Arctic_IQR_25_MS_2023, Arctic_IQR_75_MS_2023, Default_Median_MS_2023, Default_IQR_25_MS_2023, Default_IQR_75_MS_2023},
    {Pit_Median_V_2023, Arctic_Median_V_2023, Arctic_IQR_25_V_2023, Arctic_IQR_75_V_2023, Default_Median_V_2023, Default_IQR_25_V_2023, Default_IQR_75_V_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);

%     d.Bar.LineStyle = 'dotted'
%     d1.Bar.LineStyle = 'dotted'
end

xlim([-15 -0]);
ylim([-15 -0]);

legend('Arctic', 'Default');
ylabel('SVS2 Simulated Backscatter (dB)');
xlabel('Pit Simulated Backscatter (dB)');
title('Original');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);

subplot(2,3,2);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_Scaled_TVC, ...
    Arctic_Median_Scaled_TVC - Arctic_IQR_25_Scaled_TVC, ...
    Arctic_IQR_75_Scaled_TVC - Arctic_Median_Scaled_TVC, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_Scaled_TVC, ...
    Default_Median_Scaled_TVC - Default_IQR_25_Scaled_TVC, ...
    Default_IQR_75_Scaled_TVC - Default_Median_Scaled_TVC, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_Scaled_H, Arctic_IQR_25_Scaled_H, Arctic_IQR_75_Scaled_H, Default_Median_Scaled_H, Default_IQR_25_Scaled_H, Default_IQR_75_Scaled_H}, 
    {Pit_Median_SS, Arctic_Median_Scaled_SS, Arctic_IQR_25_Scaled_SS, Arctic_IQR_75_Scaled_SS, Default_Median_Scaled_SS, Default_IQR_25_Scaled_SS, Default_IQR_75_Scaled_SS}, 
    {Pit_Median_UP, Arctic_Median_Scaled_UP, Arctic_IQR_25_Scaled_UP, Arctic_IQR_75_Scaled_UP, Default_Median_Scaled_UP, Default_IQR_25_Scaled_UP, Default_IQR_75_Scaled_UP},
    {Pit_Median_ST, Arctic_Median_Scaled_ST, Arctic_IQR_25_Scaled_ST, Arctic_IQR_75_Scaled_ST, Default_Median_Scaled_ST, Default_IQR_25_Scaled_ST, Default_IQR_75_Scaled_ST},
    {Pit_Median_MS, Arctic_Median_Scaled_MS, Arctic_IQR_25_Scaled_MS, Arctic_IQR_75_Scaled_MS, Default_Median_Scaled_MS, Default_IQR_25_Scaled_MS, Default_IQR_75_Scaled_MS},
    {Pit_Median_V, Arctic_Median_Scaled_V, Arctic_IQR_25_Scaled_V, Arctic_IQR_75_Scaled_V, Default_Median_Scaled_V, Default_IQR_25_Scaled_V, Default_IQR_75_Scaled_V},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_Scaled_TVC_2023, Arctic_IQR_25_Scaled_TVC_2023, Arctic_IQR_75_Scaled_TVC_2023, Default_Median_Scaled_TVC_2023, Default_IQR_25_Scaled_TVC_2023, Default_IQR_75_Scaled_TVC_2023}, 
    {Pit_Median_H_2023, Arctic_Median_Scaled_H_2023, Arctic_IQR_25_Scaled_H_2023, Arctic_IQR_75_Scaled_H_2023, Default_Median_Scaled_H_2023, Default_IQR_25_Scaled_H_2023, Default_IQR_75_Scaled_H_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_Scaled_SS_2023, Arctic_IQR_25_Scaled_SS_2023, Arctic_IQR_75_Scaled_SS_2023, Default_Median_Scaled_SS_2023, Default_IQR_25_Scaled_SS_2023, Default_IQR_75_Scaled_SS_2023},
    {Pit_Median_UP_2023, Arctic_Median_Scaled_UP_2023, Arctic_IQR_25_Scaled_UP_2023, Arctic_IQR_75_Scaled_UP_2023, Default_Median_Scaled_UP_2023, Default_IQR_25_Scaled_UP_2023, Default_IQR_75_Scaled_UP_2023},
    {Pit_Median_ST_2023, Arctic_Median_Scaled_ST_2023, Arctic_IQR_25_Scaled_ST_2023, Arctic_IQR_75_Scaled_ST_2023, Default_Median_Scaled_ST_2023, Default_IQR_25_Scaled_ST_2023, Default_IQR_75_Scaled_ST_2023},
    {Pit_Median_MS_2023, Arctic_Median_Scaled_MS_2023, Arctic_IQR_25_Scaled_MS_2023, Arctic_IQR_75_Scaled_MS_2023, Default_Median_Scaled_MS_2023, Default_IQR_25_Scaled_MS_2023, Default_IQR_75_Scaled_MS_2023},
    {Pit_Median_V_2023, Arctic_Median_Scaled_V_2023, Arctic_IQR_25_Scaled_V_2023, Arctic_IQR_75_Scaled_V_2023, Default_Median_Scaled_V_2023, Default_IQR_25_Scaled_V_2023, Default_IQR_75_Scaled_V_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);

end

xlim([-15 -0]);
ylim([-15 -0]);

% legend('Arctic', 'Default');
% ylabel('SVS2 Simulated Backscatter (dB)');
% xlabel('Pit Simulated Backscatter (dB)');
title('Scaled');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);

subplot(2,3,4);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_TVC_3, ...
    Arctic_Median_TVC_3 - Arctic_IQR_25_TVC_3, ...
    Arctic_IQR_75_TVC_3 - Arctic_Median_TVC_3, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_TVC_3, ...
    Default_Median_TVC_3 - Default_IQR_25_TVC_3, ...
    Default_IQR_75_TVC_3 - Default_Median_TVC_3, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_H_3, Arctic_IQR_25_H_3, Arctic_IQR_75_H_3, Default_Median_H_3, Default_IQR_25_H_3, Default_IQR_75_H_3}, 
    {Pit_Median_SS, Arctic_Median_SS_3, Arctic_IQR_25_SS_3, Arctic_IQR_75_SS_3, Default_Median_SS_3, Default_IQR_25_SS_3, Default_IQR_75_SS_3}, 
    {Pit_Median_UP, Arctic_Median_UP_3, Arctic_IQR_25_UP_3, Arctic_IQR_75_UP_3, Default_Median_UP_3, Default_IQR_25_UP_3, Default_IQR_75_UP_3},
    {Pit_Median_ST, Arctic_Median_ST_3, Arctic_IQR_25_ST_3, Arctic_IQR_75_ST_3, Default_Median_ST_3, Default_IQR_25_ST_3, Default_IQR_75_ST_3},
    {Pit_Median_MS, Arctic_Median_MS_3, Arctic_IQR_25_MS_3, Arctic_IQR_75_MS_3, Default_Median_MS_3, Default_IQR_25_MS_3, Default_IQR_75_MS_3},
    {Pit_Median_V, Arctic_Median_V_3, Arctic_IQR_25_V_3, Arctic_IQR_75_V_3, Default_Median_V_3, Default_IQR_25_V_3, Default_IQR_75_V_3},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_TVC_3_2023, Arctic_IQR_25_TVC_3_2023, Arctic_IQR_75_TVC_3_2023, Default_Median_TVC_3_2023, Default_IQR_25_TVC_3_2023, Default_IQR_75_TVC_3_2023}, 
    {Pit_Median_H_2023, Arctic_Median_H_3_2023, Arctic_IQR_25_H_3_2023, Arctic_IQR_75_H_3_2023, Default_Median_H_3_2023, Default_IQR_25_H_3_2023, Default_IQR_75_H_3_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_SS_3_2023, Arctic_IQR_25_SS_3_2023, Arctic_IQR_75_SS_3_2023, Default_Median_SS_3_2023, Default_IQR_25_SS_3_2023, Default_IQR_75_SS_3_2023},
    {Pit_Median_UP_2023, Arctic_Median_UP_3_2023, Arctic_IQR_25_UP_3_2023, Arctic_IQR_75_UP_3_2023, Default_Median_UP_3_2023, Default_IQR_25_UP_3_2023, Default_IQR_75_UP_3_2023},
    {Pit_Median_ST_2023, Arctic_Median_ST_3_2023, Arctic_IQR_25_ST_3_2023, Arctic_IQR_75_ST_3_2023, Default_Median_ST_3_2023, Default_IQR_25_ST_3_2023, Default_IQR_75_ST_3_2023},
    {Pit_Median_MS_2023, Arctic_Median_MS_3_2023, Arctic_IQR_25_MS_3_2023, Arctic_IQR_75_MS_3_2023, Default_Median_MS_3_2023, Default_IQR_25_MS_3_2023, Default_IQR_75_MS_3_2023},
    {Pit_Median_V_2023, Arctic_Median_V_3_2023, Arctic_IQR_25_V_3_2023, Arctic_IQR_75_V_3_2023, Default_Median_V_3_2023, Default_IQR_25_V_3_2023, Default_IQR_75_V_3_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);
end

xlim([-15 -0]);
ylim([-15 -0]);

% legend('Arctic', 'Default');
ylabel('SVS2 Simulated Backscatter (dB)');
xlabel('Pit Simulated Backscatter (dB)');
% title('Original SVS2 Output');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);

subplot(2,3,5);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_TVC_3_Scaled, ...
    Arctic_Median_TVC_3_Scaled - Arctic_IQR_25_TVC_3_Scaled, ...
    Arctic_IQR_75_TVC_3_Scaled - Arctic_Median_TVC_3_Scaled, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_TVC_3_Scaled, ...
    Default_Median_TVC_3_Scaled - Default_IQR_25_TVC_3_Scaled, ...
    Default_IQR_75_TVC_3_Scaled - Default_Median_TVC_3_Scaled, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_H_3_Scaled, Arctic_IQR_25_H_3_Scaled, Arctic_IQR_75_H_3_Scaled, Default_Median_H_3_Scaled, Default_IQR_25_H_3_Scaled, Default_IQR_75_H_3_Scaled}, 
    {Pit_Median_SS, Arctic_Median_SS_3_Scaled, Arctic_IQR_25_SS_3_Scaled, Arctic_IQR_75_SS_3_Scaled, Default_Median_SS_3_Scaled, Default_IQR_25_SS_3_Scaled, Default_IQR_75_SS_3_Scaled}, 
    {Pit_Median_UP, Arctic_Median_UP_3_Scaled, Arctic_IQR_25_UP_3_Scaled, Arctic_IQR_75_UP_3_Scaled, Default_Median_UP_3_Scaled, Default_IQR_25_UP_3_Scaled, Default_IQR_75_UP_3_Scaled},
    {Pit_Median_ST, Arctic_Median_ST_3_Scaled, Arctic_IQR_25_ST_3_Scaled, Arctic_IQR_75_ST_3_Scaled, Default_Median_ST_3_Scaled, Default_IQR_25_ST_3_Scaled, Default_IQR_75_ST_3_Scaled},
    {Pit_Median_MS, Arctic_Median_MS_3_Scaled, Arctic_IQR_25_MS_3_Scaled, Arctic_IQR_75_MS_3_Scaled, Default_Median_MS_3_Scaled, Default_IQR_25_MS_3_Scaled, Default_IQR_75_MS_3_Scaled},
    {Pit_Median_V, Arctic_Median_V_3_Scaled, Arctic_IQR_25_V_3_Scaled, Arctic_IQR_75_V_3_Scaled, Default_Median_V_3_Scaled, Default_IQR_25_V_3_Scaled, Default_IQR_75_V_3_Scaled},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_TVC_3_Scaled_2023, Arctic_IQR_25_TVC_3_Scaled_2023, Arctic_IQR_75_TVC_3_Scaled_2023, Default_Median_TVC_3_Scaled_2023, Default_IQR_25_TVC_3_Scaled_2023, Default_IQR_75_TVC_3_Scaled_2023}, 
    {Pit_Median_H_2023, Arctic_Median_H_3_Scaled_2023, Arctic_IQR_25_H_3_Scaled_2023, Arctic_IQR_75_H_3_Scaled_2023, Default_Median_H_3_Scaled_2023, Default_IQR_25_H_3_Scaled_2023, Default_IQR_75_H_3_Scaled_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_SS_3_Scaled_2023, Arctic_IQR_25_SS_3_Scaled_2023, Arctic_IQR_75_SS_3_Scaled_2023, Default_Median_SS_3_Scaled_2023, Default_IQR_25_SS_3_Scaled_2023, Default_IQR_75_SS_3_Scaled_2023},
    {Pit_Median_UP_2023, Arctic_Median_UP_3_Scaled_2023, Arctic_IQR_25_UP_3_Scaled_2023, Arctic_IQR_75_UP_3_Scaled_2023, Default_Median_UP_3_Scaled_2023, Default_IQR_25_UP_3_Scaled_2023, Default_IQR_75_UP_3_Scaled_2023},
    {Pit_Median_ST_2023, Arctic_Median_ST_3_Scaled_2023, Arctic_IQR_25_ST_3_Scaled_2023, Arctic_IQR_75_ST_3_Scaled_2023, Default_Median_ST_3_Scaled_2023, Default_IQR_25_ST_3_Scaled_2023, Default_IQR_75_ST_3_Scaled_2023},
    {Pit_Median_MS_2023, Arctic_Median_MS_3_Scaled_2023, Arctic_IQR_25_MS_3_Scaled_2023, Arctic_IQR_75_MS_3_Scaled_2023, Default_Median_MS_3_Scaled_2023, Default_IQR_25_MS_3_Scaled_2023, Default_IQR_75_MS_3_Scaled_2023},
    {Pit_Median_V_2023, Arctic_Median_V_3_Scaled_2023, Arctic_IQR_25_V_3_Scaled_2023, Arctic_IQR_75_V_3_Scaled_2023, Default_Median_V_3_Scaled_2023, Default_IQR_25_V_3_Scaled_2023, Default_IQR_75_V_3_Scaled_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);

end

xlim([-15 -0]);
ylim([-15 -0]);

% legend('Arctic', 'Default');
% ylabel('SVS2 Simulated Backscatter (dB)');
xlabel('Pit Simulated Backscatter (dB)');
% title('Original SVS2 Output');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);

subplot(2,3,3);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_TVC_Min, ...
    Arctic_Median_TVC_Min - Arctic_IQR_25_TVC_Min, ...
    Arctic_IQR_75_TVC_Min - Arctic_Median_TVC_Min, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_TVC_Min, ...
    Default_Median_TVC_Min - Default_IQR_25_TVC_Min, ...
    Default_IQR_75_TVC_Min - Default_Median_TVC_Min, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_H_Min, Arctic_IQR_25_H_Min, Arctic_IQR_75_H_Min, Default_Median_H_Min, Default_IQR_25_H_Min, Default_IQR_75_H_Min}, 
    {Pit_Median_SS, Arctic_Median_SS_Min, Arctic_IQR_25_SS_Min, Arctic_IQR_75_SS_Min, Default_Median_SS_Min, Default_IQR_25_SS_Min, Default_IQR_75_SS_Min}, 
    {Pit_Median_UP, Arctic_Median_UP_Min, Arctic_IQR_25_UP_Min, Arctic_IQR_75_UP_Min, Default_Median_UP_Min, Default_IQR_25_UP_Min, Default_IQR_75_UP_Min},
    {Pit_Median_ST, Arctic_Median_ST_Min, Arctic_IQR_25_ST_Min, Arctic_IQR_75_ST_Min, Default_Median_ST_Min, Default_IQR_25_ST_Min, Default_IQR_75_ST_Min},
    {Pit_Median_MS, Arctic_Median_MS_Min, Arctic_IQR_25_MS_Min, Arctic_IQR_75_MS_Min, Default_Median_MS_Min, Default_IQR_25_MS_Min, Default_IQR_75_MS_Min},
    {Pit_Median_V, Arctic_Median_V_Min, Arctic_IQR_25_V_Min, Arctic_IQR_75_V_Min, Default_Median_V_Min, Default_IQR_25_V_Min, Default_IQR_75_V_Min},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_TVC_Min_2023, Arctic_IQR_25_TVC_Min_2023, Arctic_IQR_75_TVC_Min_2023, Default_Median_TVC_Min_2023, Default_IQR_25_TVC_Min_2023, Default_IQR_75_TVC_Min_2023}, 
    {Pit_Median_H_2023, Arctic_Median_H_Min_2023, Arctic_IQR_25_H_Min_2023, Arctic_IQR_75_H_Min_2023, Default_Median_H_Min_2023, Default_IQR_25_H_Min_2023, Default_IQR_75_H_Min_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_SS_Min_2023, Arctic_IQR_25_SS_Min_2023, Arctic_IQR_75_SS_Min_2023, Default_Median_SS_Min_2023, Default_IQR_25_SS_Min_2023, Default_IQR_75_SS_Min_2023},
    {Pit_Median_UP_2023, Arctic_Median_UP_Min_2023, Arctic_IQR_25_UP_Min_2023, Arctic_IQR_75_UP_Min_2023, Default_Median_UP_Min_2023, Default_IQR_25_UP_Min_2023, Default_IQR_75_UP_Min_2023},
    {Pit_Median_ST_2023, Arctic_Median_ST_Min_2023, Arctic_IQR_25_ST_Min_2023, Arctic_IQR_75_ST_Min_2023, Default_Median_ST_Min_2023, Default_IQR_25_ST_Min_2023, Default_IQR_75_ST_Min_2023},
    {Pit_Median_MS_2023, Arctic_Median_MS_Min_2023, Arctic_IQR_25_MS_Min_2023, Arctic_IQR_75_MS_Min_2023, Default_Median_MS_Min_2023, Default_IQR_25_MS_Min_2023, Default_IQR_75_MS_Min_2023},
    {Pit_Median_V_2023, Arctic_Median_V_Min_2023, Arctic_IQR_25_V_Min_2023, Arctic_IQR_75_V_Min_2023, Default_Median_V_Min_2023, Default_IQR_25_V_Min_2023, Default_IQR_75_V_Min_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);

end

xlim([-15 -0]);
ylim([-15 -0]);

% legend('Arctic', 'Default');
% ylabel('SVS2 Simulated Backscatter (dB)');
% xlabel('Pit Simulated Backscatter (dB)');
title('Minimum Value');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);

subplot(2,3,6);

% Arctic and Default (2022 Data)
errorbar(Pit_Median_TVC, Arctic_Median_TVC_Min_3, ...
    Arctic_Median_TVC_Min_3 - Arctic_IQR_25_TVC_Min_3, ...
    Arctic_IQR_75_TVC_Min_3 - Arctic_Median_TVC_Min_3, ...
    'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
hold on;
errorbar(Pit_Median_TVC, Default_Median_TVC_Min_3, ...
    Default_Median_TVC_Min_3 - Default_IQR_25_TVC_Min_3, ...
    Default_IQR_75_TVC_Min_3 - Default_Median_TVC_Min_3, ...
    'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);

% Repeat for all other data points
datasets = {
    % Format: {Pit_Median, Arctic_Median, Arctic_IQR_25, Arctic_IQR_75, Default_Median, Default_IQR_25, Default_IQR_75}
    {Pit_Median_H, Arctic_Median_H_Min_3, Arctic_IQR_25_H_Min_3, Arctic_IQR_75_H_Min_3, Default_Median_H_Min_3, Default_IQR_25_H_Min_3, Default_IQR_75_H_Min_3}, 
    {Pit_Median_SS, Arctic_Median_SS_Min_3, Arctic_IQR_25_SS_Min_3, Arctic_IQR_75_SS_Min_3, Default_Median_SS_Min_3, Default_IQR_25_SS_Min_3, Default_IQR_75_SS_Min_3}, 
    {Pit_Median_UP, Arctic_Median_UP_Min_3, Arctic_IQR_25_UP_Min_3, Arctic_IQR_75_UP_Min_3, Default_Median_UP_Min_3, Default_IQR_25_UP_Min_3, Default_IQR_75_UP_Min_3},
    {Pit_Median_ST, Arctic_Median_ST_Min_3, Arctic_IQR_25_ST_Min_3, Arctic_IQR_75_ST_Min_3, Default_Median_ST_Min_3, Default_IQR_25_ST_Min_3, Default_IQR_75_ST_Min_3},
    {Pit_Median_MS, Arctic_Median_MS_Min_3, Arctic_IQR_25_MS_Min_3, Arctic_IQR_75_MS_Min_3, Default_Median_MS_Min_3, Default_IQR_25_MS_Min_3, Default_IQR_75_MS_Min_3},
    {Pit_Median_V, Arctic_Median_V_Min_3, Arctic_IQR_25_V_Min_3, Arctic_IQR_75_V_Min_3, Default_Median_V_Min_3, Default_IQR_25_V_Min_3, Default_IQR_75_V_Min_3},
};

for i = 1:length(datasets)
    data = datasets{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', 'r', 'MarkerSize', 8, 'LineWidth', 2.5);
    errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', 'b', 'MarkerSize', 8, 'LineWidth', 2.5);
end

% Arctic and Default (2023 Data with Dashed Lines)
datasets_2023 = {
    {Pit_Median_TVC_2023, Arctic_Median_TVC_Min_3_2023, Arctic_IQR_25_TVC_Min_3_2023, Arctic_IQR_75_TVC_Min_3_2023, Default_Median_TVC_Min_3_2023, Default_IQR_25_TVC_Min_3_2023, Default_IQR_75_TVC_Min_3_2023}, 
    {Pit_Median_H_2023, Arctic_Median_H_Min_3_2023, Arctic_IQR_25_H_Min_3_2023, Arctic_IQR_75_H_Min_3_2023, Default_Median_H_Min_3_2023, Default_IQR_25_H_Min_3_2023, Default_IQR_75_H_Min_3_2023}, 
    {Pit_Median_SS_2023, Arctic_Median_SS_Min_3_2023, Arctic_IQR_25_SS_Min_3_2023, Arctic_IQR_75_SS_Min_3_2023, Default_Median_SS_Min_3_2023, Default_IQR_25_SS_Min_3_2023, Default_IQR_75_SS_Min_3_2023},
    {Pit_Median_UP_2023, Arctic_Median_UP_Min_3_2023, Arctic_IQR_25_UP_Min_3_2023, Arctic_IQR_75_UP_Min_3_2023, Default_Median_UP_Min_3_2023, Default_IQR_25_UP_Min_3_2023, Default_IQR_75_UP_Min_3_2023},
    {Pit_Median_ST_2023, Arctic_Median_ST_Min_3_2023, Arctic_IQR_25_ST_Min_3_2023, Arctic_IQR_75_ST_Min_3_2023, Default_Median_ST_Min_3_2023, Default_IQR_25_ST_Min_3_2023, Default_IQR_75_ST_Min_3_2023},
    {Pit_Median_MS_2023, Arctic_Median_MS_Min_3_2023, Arctic_IQR_25_MS_Min_3_2023, Arctic_IQR_75_MS_Min_3_2023, Default_Median_MS_Min_3_2023, Default_IQR_25_MS_Min_3_2023, Default_IQR_75_MS_Min_3_2023},
    {Pit_Median_V_2023, Arctic_Median_V_Min_3_2023, Arctic_IQR_25_V_Min_3_2023, Arctic_IQR_75_V_Min_3_2023, Default_Median_V_Min_3_2023, Default_IQR_25_V_Min_3_2023, Default_IQR_75_V_Min_3_2023},
};

for i = 1:length(datasets_2023)
    data = datasets_2023{i};
    Pit = data{1};
    Arctic_Median = data{2}; Arctic_IQR_25 = data{3}; Arctic_IQR_75 = data{4};
    Default_Median = data{5}; Default_IQR_25 = data{6}; Default_IQR_75 = data{7};

    % Define lighter red and blue colors
    light_red = [1, 0.4, 0.4]; % Light red (RGB)
    light_blue = [0.4, 0.6, 1]; % Light blue (RGB)

    d = errorbar(Pit, Arctic_Median, Arctic_Median - Arctic_IQR_25, Arctic_IQR_75 - Arctic_Median, ...
        'x', 'Color', light_red, 'MarkerSize', 8, 'LineWidth', 2.5);
    d1 = errorbar(Pit, Default_Median, Default_Median - Default_IQR_25, Default_IQR_75 - Default_Median, ...
        'x', 'Color', light_blue, 'MarkerSize', 8, 'LineWidth', 2.5);

end

xlim([-15 -0]);
ylim([-15 -0]);

legend('Arctic', 'Default');
ylabel('SVS2 Simulated Backscatter (dB)');
xlabel('Pit Simulated Backscatter (dB)');
% title('Original SVS2 Output');
ax = gca;
set(ax, 'LineWidth', 2);
set(ax, 'FontSize', 18);