clc;
clear;
close all;

% Generate White Gaussian Noise
N = 1000;
noise = randn(1,N);

% Statistical properties
m = mean(noise);
v = var(noise,1);
s = std(noise,1);

disp(['Mean = ',num2str(m)])
disp(['Variance = ',num2str(v)])
disp(['Standard Deviation = ',num2str(s)])

figure;

subplot(2,1,1)
plot(noise)
title('White Gaussian Noise')
xlabel('Sample')
ylabel('Amplitude')
grid on

subplot(2,1,2)
histogram(noise,30)
title('Histogram of Noise')
xlabel('Amplitude')
ylabel('Count')
grid on
