%{
Problem 9: Effect of Bit Resolution
    •   Quantize signal using 2, 4, 8 bits
    •   Compare signal quality and error
%}

clc;
clear;
close all;

% Original signal
t = 0:0.001:1;
x = sin(2*pi*5*t);

% Bit resolutions
bits = [2 4 8];

figure;

for i = 1:length(bits)

    b = bits(i);

    % Number of levels
    L = 2^b;

    % Step size
    delta = 2/L;

    % Quantization
    xq = round(x/delta)*delta;

    subplot(3,1,i)

    plot(t,x,'b')
    hold on
    stairs(t,xq,'r')

    title([num2str(b) ' Bit Quantization'])
    legend('Original','Quantized')
    grid on

end
