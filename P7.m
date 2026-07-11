clc;
clear;
close all;

% Original signal
t = 0:0.001:1;
x = sin(2*pi*5*t);

% Number of quantization levels
L = 8;

% Step size
delta = 2/L;

% Quantization
xq = round(x/delta)*delta;

figure;

subplot(2,1,1)
plot(t,x,'b','LineWidth',1.5)
title('Original Signal')
xlabel('Time')
ylabel('Amplitude')
grid on

subplot(2,1,2)
stairs(t,xq,'r','LineWidth',1.5)
title('Quantized Signal')
xlabel('Time')
ylabel('Amplitude')
grid on
