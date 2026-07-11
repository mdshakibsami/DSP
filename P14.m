clc;
clear;
close all;

x = [1 2 3 4];
y = [2 4 6 8];

%% Auto-correlation
auto = xcorr(x);

%% Cross-correlation
cross = xcorr(x,y);

%% Covariance
cov_matrix = cov(x,y);

disp('Auto-correlation')
disp(auto)

disp('Cross-correlation')
disp(cross)

disp('Covariance Matrix')
disp(cov_matrix)

figure;

subplot(2,1,1)
stem(auto,'filled')
title('Auto-correlation')
grid on

subplot(2,1,2)
stem(cross,'filled')
title('Cross-correlation')
grid on
