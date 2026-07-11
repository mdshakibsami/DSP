clc;
clear;
close all;

% Sample index
n = -10:10;

% Unit Step
u = double(n >= 0);

% Unit Impulse
delta = double(n == 0);

% Ramp
r = n .* u;

% Sine and Cosine
f = 0.1;               % normalized frequency
s = sin(2*pi*f*n);
c = cos(2*pi*f*n);

figure;

subplot(5,1,1)
stem(n,u,'filled')
title('Unit Step Signal')
xlabel('n')
ylabel('u[n]')
grid on

subplot(5,1,2)
stem(n,delta,'filled')
title('Unit Impulse Signal')
xlabel('n')
ylabel('\delta[n]')
grid on

subplot(5,1,3)
stem(n,r,'filled')
title('Ramp Signal')
xlabel('n')
ylabel('r[n]')
grid on

subplot(5,1,4)
stem(n,s,'filled')
title('Sine Wave')
xlabel('n')
ylabel('Amplitude')
grid on

subplot(5,1,5)
stem(n,c,'filled')
title('Cosine Wave')
xlabel('n')
ylabel('Amplitude')
grid on
