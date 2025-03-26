%% Plot box plot of SS, SS & CRPS; 

% Define the directory where the IQR results are saved
results_dir = 'Density_LV/IQR_Statistics';

% Define the s to loop through
years = {'y2022'};

% Define the sites and their respective pairs
arctic_sites = {'TVC_Arctic', 'UpperPlateau_Arctic', 'Valley_Arctic', 'SmallShrub_Arctic', 'MixedShrub_Arctic', 'Havikpak_Arctic', 'ShrubTree_Arctic'};
default_sites = {'TVC_Default', 'UpperPlateau_Default', 'Valley_Default', 'SmallShrub_Default', 'MixedShrub_Default', 'Havikpak_Default', 'ShrubTree_Default'};

% Define colors for plotting
colors = {'r', 'b'};

% Loop through each year
for i = 1:length(years)
    year = years{i};

    % Load the RMSE data
    load(fullfile(results_dir, 'IQR_RMSE_Tundra_Combined.mat'));
    RMSE_results = results;

    % Load the SS data
    load(fullfile(results_dir, 'IQR_SS_Tundra_Combined.mat'));
    SS_results = results;

    % Load the RMSE data
    load(fullfile(results_dir, 'SSA_RMSE_Tundra_Combined.mat'));
    RMSE_results_SSA = results;

    % Load the SS data
    load(fullfile(results_dir, 'SSA_SS_Tundra_Combined.mat'));
    SS_results_SSA = results;

    % Load the RMSE data
    load(fullfile(results_dir, 'IQR_RMSE_DS_Combined.mat'));
    RMSE_results_DS = results;

    % Load the SS data
    load(fullfile(results_dir, 'IQR_SS_DS_Combined.mat'));
    SS_results_DS = results;

    % Load the RMSE data
    load(fullfile(results_dir, 'SSA_RMSE_DS_Combined.mat'));
    RMSE_results_DS_SSA = results;

    % Load the SS data
    load(fullfile(results_dir, 'SSA_SS_DS_Combined.mat'));
    SS_results_DS_SSA = results;

    % Load the RMSE data
    load(fullfile(results_dir, 'IQR_RMSE_F_Combined.mat'));
    RMSE_results_F = results;

    % Load the SS dataUP
    load(fullfile(results_dir, 'IQR_SS_F_Combined.mat'));
    SS_results_F = results;

    % Load the RMSE data
    load(fullfile(results_dir, 'SSA_RMSE_F_Combined.mat'));
    RMSE_results_F_SSA = results;

    % Load the SS dataUP
    load(fullfile(results_dir, 'SSA_SS_F_Combined.mat'));
    SS_results_F_SSA = results;

    % Create a new figure for each year
    figure;

    % Subplot for the RMSE (DHF) data
    subplot(2, 2, 1);
    hold on;

    % Arctic data for RMSE (DHF)
    PCT25_arctic_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT25_DHF;
    MEDIAN_arctic_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.MEDIAN_DHF;
    PCT75_arctic_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.PCT25_DHF;
    MEDIAN_default_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.MEDIAN_DHF;
    PCT75_default_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.PCT75_DHF;

    PCT25_arctic_RMSE_DS = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_DHF;
    MEDIAN_arctic_RMSE_DS  = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_DHF;
    PCT75_arctic_RMSE_DS  = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_DHF;
    MEDIAN_default_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_DHF;
    PCT75_default_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_DHF;

    PCT25_arctic_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT25_DHF;
    MEDIAN_arctic_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.MEDIAN_DHF;
    PCT75_arctic_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT25_DHF;
    MEDIAN_default_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.MEDIAN_DHF;
    PCT75_default_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT75_DHF;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.05, MEDIAN_arctic_RMSE, MEDIAN_arctic_RMSE - PCT25_arctic_RMSE, PCT75_arctic_RMSE - MEDIAN_arctic_RMSE, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE - DHF)
    errorbar(0.1, MEDIAN_default_RMSE, MEDIAN_default_RMSE - PCT25_default_RMSE, PCT75_default_RMSE - MEDIAN_default_RMSE, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.15, MEDIAN_arctic_RMSE_DS, MEDIAN_arctic_RMSE_DS - PCT25_arctic_RMSE_DS, PCT75_arctic_RMSE_DS - MEDIAN_arctic_RMSE_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_DS - DHF)
    errorbar(0.2, MEDIAN_default_RMSE_DS, MEDIAN_default_RMSE_DS - PCT25_default_RMSE_DS, PCT75_default_RMSE_DS - MEDIAN_default_RMSE_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.25, MEDIAN_arctic_RMSE_F, MEDIAN_arctic_RMSE_F - PCT25_arctic_RMSE_F, PCT75_arctic_RMSE_F - MEDIAN_arctic_RMSE_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_F - DHF)
    errorbar(0.3, MEDIAN_default_RMSE_F, MEDIAN_default_RMSE_F - PCT25_default_RMSE_F, PCT75_default_RMSE_F - MEDIAN_default_RMSE_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Arctic data for RMSE (WS)
    PCT25_arctic_WS_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_RMSE = RMSE_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.PCT25_WS;
    MEDIAN_default_WS_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.MEDIAN_WS;
    PCT75_default_WS_RMSE = RMSE_results.(default_sites{1}).(default_sites{2}).Combined.PCT75_WS;

    PCT25_arctic_WS_RMSE_DS = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_RMSE_DS  = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_RMSE_DS  = RMSE_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_WS;
    MEDIAN_default_WS_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_WS;
    PCT75_default_WS_RMSE_DS  = RMSE_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_WS;

    PCT25_arctic_WS_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_RMSE_F = RMSE_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT25_WS;
    MEDIAN_default_WS_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.MEDIAN_WS;
    PCT75_default_WS_RMSE_F = RMSE_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT75_WS;

    % Plot the Arctic data (RMSE - WS)
    errorbar(0.35, MEDIAN_arctic_WS_RMSE, MEDIAN_arctic_WS_RMSE - PCT25_arctic_WS_RMSE, PCT75_arctic_WS_RMSE - MEDIAN_arctic_WS_RMSE, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE - WS)
    errorbar(0.4, MEDIAN_default_WS_RMSE, MEDIAN_default_WS_RMSE - PCT25_default_WS_RMSE, PCT75_default_WS_RMSE - MEDIAN_default_WS_RMSE, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.45, MEDIAN_arctic_WS_RMSE_DS, MEDIAN_arctic_WS_RMSE_DS - PCT25_arctic_WS_RMSE_DS, PCT75_arctic_WS_RMSE_DS - MEDIAN_arctic_WS_RMSE_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_DS - DHF)
    errorbar(0.5, MEDIAN_default_WS_RMSE_DS, MEDIAN_default_WS_RMSE_DS - PCT25_default_WS_RMSE_DS, PCT75_default_WS_RMSE_DS - MEDIAN_default_WS_RMSE_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.55, MEDIAN_arctic_WS_RMSE_F, MEDIAN_arctic_WS_RMSE_F - PCT25_arctic_WS_RMSE_F, PCT75_arctic_WS_RMSE_F - MEDIAN_arctic_WS_RMSE_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_F - DHF)
    errorbar(0.6, MEDIAN_default_WS_RMSE_F, MEDIAN_default_WS_RMSE_F - PCT25_default_WS_RMSE_F, PCT75_default_WS_RMSE_F - MEDIAN_default_WS_RMSE_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Set axis limits for better visibility
    xlim([0 0.65]);
    ylim([0 250]);

    ax = gca; % Get current axes
    set(ax, 'LineWidth', 2); % Set the border line width to 2
    set(ax, 'FontSize', 18);

    % Label the axes and title the plot
    ylabel('RMSE');
    title('RMSE');

    % Add a legend
    legend({'Arctic SVS2-Crocus', 'Default SVS2-Crocus'});

    % Subplot for the RMSE (DHF) data
    subplot(2, 2, 3);
    hold on;

    % Arctic data for RMSE (DHF)
    PCT25_arctic_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT25_DHF;
    MEDIAN_arctic_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.MEDIAN_DHF;
    PCT75_arctic_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.PCT25_DHF;
    MEDIAN_default_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.MEDIAN_DHF;
    PCT75_default_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.PCT75_DHF;

    PCT25_arctic_SS_DS = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_DHF;
    MEDIAN_arctic_SS_DS  = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_DHF;
    PCT75_arctic_SS_DS  = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_DHF;
    MEDIAN_default_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_DHF;
    PCT75_default_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_DHF;

    PCT25_arctic_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT25_DHF;
    MEDIAN_arctic_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.MEDIAN_DHF;
    PCT75_arctic_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT25_DHF;
    MEDIAN_default_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.MEDIAN_DHF;
    PCT75_default_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT75_DHF;

    % Plot the Arctic data (SS - DHF)
    errorbar(0.05, MEDIAN_arctic_SS, MEDIAN_arctic_SS - PCT25_arctic_SS, PCT75_arctic_SS - MEDIAN_arctic_SS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS - DHF)
    errorbar(0.1, MEDIAN_default_SS, MEDIAN_default_SS - PCT25_default_SS, PCT75_default_SS - MEDIAN_default_SS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.15, MEDIAN_arctic_SS_DS, MEDIAN_arctic_SS_DS - PCT25_arctic_SS_DS, PCT75_arctic_SS_DS - MEDIAN_arctic_SS_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_DS - DHF)
    errorbar(0.2, MEDIAN_default_SS_DS, MEDIAN_default_SS_DS - PCT25_default_SS_DS, PCT75_default_SS_DS - MEDIAN_default_SS_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (SS - DHF)
    errorbar(0.25, MEDIAN_arctic_SS_F, MEDIAN_arctic_SS_F - PCT25_arctic_SS_F, PCT75_arctic_SS_F - MEDIAN_arctic_SS_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_F - DHF)
    errorbar(0.3, MEDIAN_default_SS_F, MEDIAN_default_SS_F - PCT25_default_SS_F, PCT75_default_SS_F - MEDIAN_default_SS_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Arctic data for SS (WS)
    PCT25_arctic_WS_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_SS = SS_results.(arctic_sites{1}).(arctic_sites{2}).Combined.PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.PCT25_WS;
    MEDIAN_default_WS_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.MEDIAN_WS;
    PCT75_default_WS_SS = SS_results.(default_sites{1}).(default_sites{2}).Combined.PCT75_WS;

    PCT25_arctic_WS_SS_DS = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_SS_DS  = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_SS_DS  = SS_results_DS.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_WS;
    MEDIAN_default_WS_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_WS;
    PCT75_default_WS_SS_DS  = SS_results_DS.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_WS;

    PCT25_arctic_WS_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_SS_F = SS_results_F.(arctic_sites{6}).(arctic_sites{7}).Combined.PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT25_WS;
    MEDIAN_default_WS_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.MEDIAN_WS;
    PCT75_default_WS_SS_F = SS_results_F.(default_sites{6}).(default_sites{7}).Combined.PCT75_WS;

    % Plot the Arctic data (SS - WS)
    errorbar(0.35, MEDIAN_arctic_WS_SS, MEDIAN_arctic_WS_SS - PCT25_arctic_WS_SS, PCT75_arctic_WS_SS - MEDIAN_arctic_WS_SS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS - WS)
    errorbar(0.4, MEDIAN_default_WS_SS, MEDIAN_default_WS_SS - PCT25_default_WS_SS, PCT75_default_WS_SS - MEDIAN_default_WS_SS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.45, MEDIAN_arctic_WS_SS_DS, MEDIAN_arctic_WS_SS_DS - PCT25_arctic_WS_SS_DS, PCT75_arctic_WS_SS_DS - MEDIAN_arctic_WS_SS_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_DS - DHF)
    errorbar(0.5, MEDIAN_default_WS_SS_DS, MEDIAN_default_WS_SS_DS - PCT25_default_WS_SS_DS, PCT75_default_WS_SS_DS - MEDIAN_default_WS_SS_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (SS - DHF)
    errorbar(0.55, MEDIAN_arctic_WS_SS_F, MEDIAN_arctic_WS_SS_F - PCT25_arctic_WS_SS_F, PCT75_arctic_WS_SS_F - MEDIAN_arctic_WS_SS_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_F - DHF)
    errorbar(0.6, MEDIAN_default_WS_SS_F, MEDIAN_default_WS_SS_F - PCT25_default_WS_SS_F, PCT75_default_WS_SS_F - MEDIAN_default_WS_SS_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Set axis limits for better visibility
    xlim([0 0.65]);
    ylim([0 2]);
    ax = gca; % Get current axes
    set(ax, 'LineWidth', 2); % Set the border line width to 2
    set(ax, 'FontSize', 18);

    set(gca, 'XTick', [0.075 0.175 0.275 0.375 0.475 0.575]);  % Ticks for sites
    set(gca, 'XTickLabel', {'Tundra', 'Deciduous\newlineShrubs', 'Evergreen\newlineNeedleleaf', ...
                        'Tundra', 'Deciduous\newlineShrubs', 'Evergreen\newlineNeedleleaf'}, ...
                        'TickLabelInterpreter', 'tex');

    % Label the axes and title the plot
    xlabel('Site');
    ylabel('SS');
    title('SS');

    % Subplot for the RMSE (DHF) data
    subplot(2, 2, 2);
    hold on;

    % Arctic data for RMSE (DHF)
    PCT25_arctic_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT25_DHF;
    MEDIAN_arctic_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).MEDIAN_DHF;
    PCT75_arctic_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).PCT25_DHF;
    MEDIAN_default_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).MEDIAN_DHF;
    PCT75_default_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).PCT75_DHF;

    PCT25_arctic_RMSE_DS = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_DHF;
    MEDIAN_arctic_RMSE_DS  = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_DHF;
    PCT75_arctic_RMSE_DS  = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_DHF;
    MEDIAN_default_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_DHF;
    PCT75_default_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_DHF;

    PCT25_arctic_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT25_DHF;
    MEDIAN_arctic_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).MEDIAN_DHF;
    PCT75_arctic_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT75_DHF;

    % Default data for RMSE (DHF)
    PCT25_default_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT25_DHF;
    MEDIAN_default_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).MEDIAN_DHF;
    PCT75_default_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT75_DHF;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.05, MEDIAN_arctic_RMSE, MEDIAN_arctic_RMSE - PCT25_arctic_RMSE, PCT75_arctic_RMSE - MEDIAN_arctic_RMSE, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE - DHF)
    errorbar(0.1, MEDIAN_default_RMSE, MEDIAN_default_RMSE - PCT25_default_RMSE, PCT75_default_RMSE - MEDIAN_default_RMSE, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.15, MEDIAN_arctic_RMSE_DS, MEDIAN_arctic_RMSE_DS - PCT25_arctic_RMSE_DS, PCT75_arctic_RMSE_DS - MEDIAN_arctic_RMSE_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_DS - DHF)
    errorbar(0.2, MEDIAN_default_RMSE_DS, MEDIAN_default_RMSE_DS - PCT25_default_RMSE_DS, PCT75_default_RMSE_DS - MEDIAN_default_RMSE_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.25, MEDIAN_arctic_RMSE_F, MEDIAN_arctic_RMSE_F - PCT25_arctic_RMSE_F, PCT75_arctic_RMSE_F - MEDIAN_arctic_RMSE_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_F - DHF)
    errorbar(0.3, MEDIAN_default_RMSE_F, MEDIAN_default_RMSE_F - PCT25_default_RMSE_F, PCT75_default_RMSE_F - MEDIAN_default_RMSE_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Arctic data for RMSE (WS)
    PCT25_arctic_WS_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT25_WS;
    MEDIAN_arctic_WS_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).MEDIAN_WS;
    PCT75_arctic_WS_RMSE = RMSE_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).PCT25_WS;
    MEDIAN_default_WS_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).MEDIAN_WS;
    PCT75_default_WS_RMSE = RMSE_results_SSA.(default_sites{1}).(default_sites{2}).PCT75_WS;

    PCT25_arctic_WS_RMSE_DS = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_RMSE_DS  = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_RMSE_DS  = RMSE_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_WS;
    MEDIAN_default_WS_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_WS;
    PCT75_default_WS_RMSE_DS  = RMSE_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_WS;

    PCT25_arctic_WS_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT25_WS;
    MEDIAN_arctic_WS_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).MEDIAN_WS;
    PCT75_arctic_WS_RMSE_F = RMSE_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT75_WS;

    % Default data for RMSE (WS)
    PCT25_default_WS_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT25_WS;
    MEDIAN_default_WS_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).MEDIAN_WS;
    PCT75_default_WS_RMSE_F = RMSE_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT75_WS;

    % Plot the Arctic data (RMSE - WS)
    errorbar(0.35, MEDIAN_arctic_WS_RMSE, MEDIAN_arctic_WS_RMSE - PCT25_arctic_WS_RMSE, PCT75_arctic_WS_RMSE - MEDIAN_arctic_WS_RMSE, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE - WS)
    errorbar(0.4, MEDIAN_default_WS_RMSE, MEDIAN_default_WS_RMSE - PCT25_default_WS_RMSE, PCT75_default_WS_RMSE - MEDIAN_default_WS_RMSE, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.45, MEDIAN_arctic_WS_RMSE_DS, MEDIAN_arctic_WS_RMSE_DS - PCT25_arctic_WS_RMSE_DS, PCT75_arctic_WS_RMSE_DS - MEDIAN_arctic_WS_RMSE_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_DS - DHF)
    errorbar(0.5, MEDIAN_default_WS_RMSE_DS, MEDIAN_default_WS_RMSE_DS - PCT25_default_WS_RMSE_DS, PCT75_default_WS_RMSE_DS - MEDIAN_default_WS_RMSE_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (RMSE - DHF)
    errorbar(0.55, MEDIAN_arctic_WS_RMSE_F, MEDIAN_arctic_WS_RMSE_F - PCT25_arctic_WS_RMSE_F, PCT75_arctic_WS_RMSE_F - MEDIAN_arctic_WS_RMSE_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (RMSE_F - DHF)
    errorbar(0.6, MEDIAN_default_WS_RMSE_F, MEDIAN_default_WS_RMSE_F - PCT25_default_WS_RMSE_F, PCT75_default_WS_RMSE_F - MEDIAN_default_WS_RMSE_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Set axis limits for better visibility
    xlim([0 0.65]);
    ylim([0 20]);

    ax = gca; % Get current axes
    set(ax, 'LineWidth', 2); % Set the border line width to 2
    set(ax, 'FontSize', 18);

    % Label the axes and title the plot
%     xlabel('Tundra');
    ylabel('RMSE');
    title('RMSE');

    % Add a legend
    legend({'Arctic SVS2-Crocus', 'Default SVS2-Crocus'});

    % Subplot for the RMSE (DHF) data
    subplot(2, 2, 4);
    hold on;

    % Arctic data for RMSE (DHF)
    PCT25_arctic_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT25_DHF;
    MEDIAN_arctic_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).MEDIAN_DHF;
    PCT75_arctic_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).PCT25_DHF;
    MEDIAN_default_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).MEDIAN_DHF;
    PCT75_default_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).PCT75_DHF;

    PCT25_arctic_SS_DS = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_DHF;
    MEDIAN_arctic_SS_DS  = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_DHF;
    PCT75_arctic_SS_DS  = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_DHF;
    MEDIAN_default_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_DHF;
    PCT75_default_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_DHF;

    PCT25_arctic_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT25_DHF;
    MEDIAN_arctic_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).MEDIAN_DHF;
    PCT75_arctic_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT75_DHF;

    % Default data for SS (DHF)
    PCT25_default_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT25_DHF;
    MEDIAN_default_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).MEDIAN_DHF;
    PCT75_default_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT75_DHF;

    % Plot the Arctic data (SS - DHF)
    errorbar(0.05, MEDIAN_arctic_SS, MEDIAN_arctic_SS - PCT25_arctic_SS, PCT75_arctic_SS - MEDIAN_arctic_SS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS - DHF)
    errorbar(0.1, MEDIAN_default_SS, MEDIAN_default_SS - PCT25_default_SS, PCT75_default_SS - MEDIAN_default_SS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.15, MEDIAN_arctic_SS_DS, MEDIAN_arctic_SS_DS - PCT25_arctic_SS_DS, PCT75_arctic_SS_DS - MEDIAN_arctic_SS_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_DS - DHF)
    errorbar(0.2, MEDIAN_default_SS_DS, MEDIAN_default_SS_DS - PCT25_default_SS_DS, PCT75_default_SS_DS - MEDIAN_default_SS_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (SS - DHF)
    errorbar(0.25, MEDIAN_arctic_SS_F, MEDIAN_arctic_SS_F - PCT25_arctic_SS_F, PCT75_arctic_SS_F - MEDIAN_arctic_SS_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_F - DHF)
    errorbar(0.3, MEDIAN_default_SS_F, MEDIAN_default_SS_F - PCT25_default_SS_F, PCT75_default_SS_F - MEDIAN_default_SS_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Arctic data for SS (WS)
    PCT25_arctic_WS_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT25_WS;
    MEDIAN_arctic_WS_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).MEDIAN_WS;
    PCT75_arctic_WS_SS = SS_results_SSA.(arctic_sites{1}).(arctic_sites{2}).PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).PCT25_WS;
    MEDIAN_default_WS_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).MEDIAN_WS;
    PCT75_default_WS_SS = SS_results_SSA.(default_sites{1}).(default_sites{2}).PCT75_WS;

    PCT25_arctic_WS_SS_DS = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT25_WS;
    MEDIAN_arctic_WS_SS_DS  = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.MEDIAN_WS;
    PCT75_arctic_WS_SS_DS  = SS_results_DS_SSA.(arctic_sites{3}).(arctic_sites{4}).(arctic_sites{5}).Combined.PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT25_WS;
    MEDIAN_default_WS_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.MEDIAN_WS;
    PCT75_default_WS_SS_DS  = SS_results_DS_SSA.(default_sites{3}).(default_sites{4}).(default_sites{5}).Combined.PCT75_WS;

    PCT25_arctic_WS_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT25_WS;
    MEDIAN_arctic_WS_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).MEDIAN_WS;
    PCT75_arctic_WS_SS_F = SS_results_F_SSA.(arctic_sites{6}).(arctic_sites{7}).PCT75_WS;

    % Default data for SS (WS)
    PCT25_default_WS_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT25_WS;
    MEDIAN_default_WS_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).MEDIAN_WS;
    PCT75_default_WS_SS_F = SS_results_F_SSA.(default_sites{6}).(default_sites{7}).PCT75_WS;

    % Plot the Arctic data (SS - WS)
    errorbar(0.35, MEDIAN_arctic_WS_SS, MEDIAN_arctic_WS_SS - PCT25_arctic_WS_SS, PCT75_arctic_WS_SS - MEDIAN_arctic_WS_SS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS - WS)
    errorbar(0.4, MEDIAN_default_WS_SS, MEDIAN_default_WS_SS - PCT25_default_WS_SS, PCT75_default_WS_SS - MEDIAN_default_WS_SS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Arctic data (RMSE - DHF)
    errorbar(0.45, MEDIAN_arctic_WS_SS_DS, MEDIAN_arctic_WS_SS_DS - PCT25_arctic_WS_SS_DS, PCT75_arctic_WS_SS_DS - MEDIAN_arctic_WS_SS_DS, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_DS - DHF)
    errorbar(0.5, MEDIAN_default_WS_SS_DS, MEDIAN_default_WS_SS_DS - PCT25_default_WS_SS_DS, PCT75_default_WS_SS_DS - MEDIAN_default_WS_SS_DS, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

        % Plot the Arctic data (SS - DHF)
    errorbar(0.55, MEDIAN_arctic_WS_SS_F, MEDIAN_arctic_WS_SS_F - PCT25_arctic_WS_SS_F, PCT75_arctic_WS_SS_F - MEDIAN_arctic_WS_SS_F, ...
        'x', 'Color', colors{1}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Plot the Default data (SS_F - DHF)
    errorbar(0.6, MEDIAN_default_WS_SS_F, MEDIAN_default_WS_SS_F - PCT25_default_WS_SS_F, PCT75_default_WS_SS_F - MEDIAN_default_WS_SS_F, ...
        'x', 'Color', colors{2}, 'MarkerSize', 8, 'LineWidth', 2.5);
    hold on;

    % Set axis limits for better visibility
    xlim([0 0.65]);
    ylim([0 2]);
    ax = gca; % Get current axes
    set(ax, 'LineWidth', 2); % Set the border line width to 2
    set(ax, 'FontSize', 18);

    set(gca, 'XTick', [0.075 0.175 0.275 0.375 0.475 0.575]);  % Ticks for sites
    set(gca, 'XTickLabel', {'Tundra', 'Deciduous\newlineShrubs', 'Evergreen\newlineNeedleleaf', ...
                        'Tundra', 'Deciduous\newlineShrubs', 'Evergreen\newlineNeedleleaf'}, ...
                        'TickLabelInterpreter', 'tex');

    % Label the axes and title the plot
    xlabel('Site');
    ylabel('SS');
    title('SS');

end