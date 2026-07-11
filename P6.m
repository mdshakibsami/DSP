clc;
clear;
close all;

% Original continuous signal
f = 5;
t = 0:0.001:1;
x = sin(2*pi*f*t);

% Sampling
Fs = 20;
ts = 0:1/Fs:1;
xs = sin(2*pi*f*ts);

% Reconstruction using interpolation
xr = interp1(ts, xs, t, 'spline');

figure;

plot(t, x, 'b', 'LineWidth', 1.5)
hold on

stem(ts, xs, 'r', 'filled')

plot(t, xr, 'g--', 'LineWidth', 1.5)

legend('Original Signal', 'Sampled Signal', 'Reconstructed Signal')
title('Signal Reconstruction using interp1')
xlabel('Time (s)')
ylabel('Amplitude')
grid on
