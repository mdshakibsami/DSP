%{
Problem 13: Statistical Measures
For a given signal:
    •   Mean
    •   Variance
    •   Standard deviation
    •   Skewness
    •   Kurtosis
Use MATLAB built-ins and manual formulas.
%}

clc;
clear;
close all;

%% Data
x = [2 4 6 8 10];

%% Built-in functions (Population formulas)
m = mean(x);
v = var(x,1);
s = std(x,1);
sk = skewness(x,1);
k = kurtosis(x,1);

disp('========== Built-in Results ==========')
disp(['Mean = ', num2str(m)])
disp(['Variance = ', num2str(v)])
disp(['Standard Deviation = ', num2str(s)])
disp(['Skewness = ', num2str(sk)])
disp(['Kurtosis = ', num2str(k)])

%% Manual calculations

N = length(x);

% Mean
mean_manual = sum(x)/N;

% Variance
variance_manual = sum((x - mean_manual).^2)/N;

% Standard Deviation
std_manual = sqrt(variance_manual);

% Skewness
skewness_manual = sum(((x - mean_manual)/std_manual).^3)/N;

% Kurtosis
kurtosis_manual = sum(((x - mean_manual)/std_manual).^4)/N;


disp(' ')
disp('========== Manual Results ==========')
disp(['Mean = ', num2str(mean_manual)])
disp(['Variance = ', num2str(variance_manual)])
disp(['Standard Deviation = ', num2str(std_manual)])
disp(['Skewness = ', num2str(skewness_manual)])
disp(['Kurtosis = ', num2str(kurtosis_manual)])
