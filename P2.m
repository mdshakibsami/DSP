clc;
clear;
close all;

% Original signal
x = [1 2 3 4];
n = 0:3;

% Time delay
n_delay = n + 1;

% Time advance
n_advance = n - 1;

% Time reversal
x_rev = fliplr(x);
n_rev = -fliplr(n);

figure;

subplot(4,1,1)
stem(n, x, 'filled')
title('Original Signal')
grid on

subplot(4,1,2)
stem(n_delay, x, 'filled')
title('Time Delay')
grid on

subplot(4,1,3)
stem(n_advance, x, 'filled')
title('Time Advance')
grid on

subplot(4,1,4)
stem(n_rev, x_rev, 'filled')
title('Time Reversal')
grid on
