clc;
clear;
close all;

% Original signal
f = 10;
t = 0:0.001:1;
x = sin(2*pi*f*t);

% Sampling frequencies
Fs1 = 40;
Fs2 = 20;
Fs3 = 12;    % Below Nyquist (Aliasing)

% Sampled signals
t1 = 0:1/Fs1:1;
x1 = sin(2*pi*f*t1);

t2 = 0:1/Fs2:1;
x2 = sin(2*pi*f*t2);

t3 = 0:1/Fs3:1;
x3 = sin(2*pi*f*t3);

figure;

subplot(3,1,1)
plot(t,x,'b')
hold on
stem(t1,x1,'r','filled')
title('Sampling Above Nyquist (40 Hz)')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

subplot(3,1,2)
plot(t,x,'b')
hold on
stem(t2,x2,'r','filled')
title('Sampling at Nyquist (20 Hz)')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

subplot(3,1,3)
plot(t,x,'b')
hold on
stem(t3,x3,'r','filled')
title('Sampling Below Nyquist (12 Hz) - Aliasing')
xlabel('Time (s)')
ylabel('Amplitude')
grid on
