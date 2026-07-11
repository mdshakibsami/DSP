%{
Problem 24: Signal Classification (Basic Intro)
    •   Generate multiple signal types
    •   Extract features (mean, variance, etc.)
    •   Classify based on properties
%}

clc;
clear;
close all;

% Sample index
n = 0:100;

%% Generate Signals
signal1 = sin(2*pi*0.05*n);      % Sine Wave
signal2 = randn(size(n));        % Random Noise
signal3 = n;                     % Ramp Signal

% Store signals
signals = {signal1, signal2, signal3};
names = {'Sine Wave','Noise','Ramp'};

figure;

for i = 1:3

    x = signals{i};

    % Plot Signal
    subplot(3,1,i);
    plot(n,x,'LineWidth',1.5);
    title(names{i});
    xlabel('Sample');
    ylabel('Amplitude');
    grid on;

    %% Feature Extraction
    Mean = mean(x);
    Variance = var(x);
    Std = std(x);

    %% Signal Classification
    if Variance > 500
        predicted = 'Ramp';

    elseif Std < 1
        predicted = 'Sine Wave';

    else
        predicted = 'Noise';
    end

    %% Display Results
    fprintf('\n-----------------------------\n');
    fprintf('Actual Signal     : %s\n', names{i});
    fprintf('Mean              : %.3f\n', Mean);
    fprintf('Variance          : %.3f\n', Variance);
    fprintf('Standard Deviation: %.3f\n', Std);
    fprintf('Predicted Class   : %s\n', predicted);

end
