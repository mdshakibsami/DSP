%{
Problem 16: Low-Pass Filter Design
    •   Design FIR low-pass filter using fir1
    •   Apply on noisy signal
    •   Show before/after filtering
%}

clc;
clear;
close all;

% Sampling parameters
Fs = 1000;
t = 0:1/Fs:1;

% Original signal
x = sin(2*pi*50*t);

% Add high-frequency noise
noise = 0.5*sin(2*pi*200*t);

x_noisy = x + noise;

% FIR Low-pass filter
order = 30;
cutoff = 100/(Fs/2);

b = fir1(order, cutoff);

% Apply filter
y = filter(b,1,x_noisy);

figure;

subplot(3,1,1)
plot(t,x)
title('Original Signal')
grid on

subplot(3,1,2)
plot(t,x_noisy)
title('Noisy Signal')
grid on

subplot(3,1,3)
plot(t,y)
title('Filtered Signal')
grid on
