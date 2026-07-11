%{
Problem 23: Aliasing + Filtering Combined
    •   Create aliased signal
    •   Apply anti-aliasing filter
    •   Analyze improvement
%}

clc; clear; close all;

Fs = 1000;
t = 0:1/Fs:1;

% Original signal
x = sin(2*pi*50*t) + 0.5*sin(2*pi*300*t);

% Anti-aliasing filter
[b,a] = butter(4,80/(Fs/2));
xf = filter(b,a,x);

% Low sampling rate
Fs2 = 200;
t2 = 0:1/Fs2:1;

% Sample signals
alias = interp1(t,x,t2);
filtered = interp1(t,xf,t2);

subplot(3,1,1)
plot(t,x)
title('Original Signal')

subplot(3,1,2)
stem(t2,alias)
title('Aliased Signal')

subplot(3,1,3)
stem(t2,filtered)
title('After Filtering')
