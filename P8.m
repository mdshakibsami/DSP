%{
Problem 8: Quantization Error Analysis
    •   Compute quantization error
    •   Plot error signal
    •   Calculate Mean Squared Error (MSE)
%}

clc;
clear;
close all;

% Original signal
t = 0:0.001:1;
x = sin(2*pi*5*t);

% Quantization
L = 8;
delta = 2/L;
xq = round(x/delta)*delta;

% Quantization error
e = x - xq;

% Mean Squared Error
MSE = mean(e.^2);

disp(['Mean Squared Error = ', num2str(MSE)])

figure;

subplot(3,1,1)
plot(t,x,'b')
title('Original Signal')
grid on

subplot(3,1,2)
stairs(t,xq,'r')
title('Quantized Signal')
grid on

subplot(3,1,3)
plot(t,e,'k')
title('Quantization Error')
xlabel('Time')
ylabel('Error')
grid on
