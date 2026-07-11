%{
Problem 3: Even and Odd Decomposition
Take any discrete signal and:
    •   Decompose into even and odd components
    •   Verify: x[n]=xe[n]+xo[n]
%}

clc;
clear;
close all;

% Original signal
n = -2:2;
x = [1 2 3 4 5];

% Reverse the signal
x_rev = fliplr(x);

% Even component
xe = (x + x_rev)/2;

% Odd component
xo = (x - x_rev)/2;

% Verification
x_check = xe + xo;

figure;

subplot(4,1,1)
stem(n,x,'filled')
title('Original Signal')
grid on

subplot(4,1,2)
stem(n,xe,'filled')
title('Even Component')
grid on

subplot(4,1,3)
stem(n,xo,'filled')
title('Odd Component')
grid on

subplot(4,1,4)
stem(n,x_check,'filled')
title('Verification: xe + xo')
grid on
