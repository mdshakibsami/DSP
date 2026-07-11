clc;
clear;
close all;

% Sampling parameters
Fs = 1000;
t = 0:1/Fs:1;

% Signal with DC offset
x = sin(2*pi*50*t) + 2;

% High-pass FIR filter
order = 30;
cutoff = 20/(Fs/2);

b = fir1(order, cutoff, 'high');

% Apply filter
y = filter(b,1,x);

figure;

subplot(2,1,1)
plot(t,x)
title('Original Signal with DC Offset')
grid on

subplot(2,1,2)
plot(t,y)
title('Signal After High-Pass Filtering')
grid on
