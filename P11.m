%{
Problem 11: Frequency Spectrum Analysis
    •   Generate composite signal (multiple sinusoids)
    •   Plot magnitude spectrum
    •   Identify frequency components
%}

clc;
clear;
close all;

Fs = 100;
t = 0:1/Fs:1-1/Fs;

% Composite signal (10 Hz and 30 Hz)
x = sin(2*pi*10*t) + 0.5*sin(2*pi*30*t);

% FFT
N = length(x);
X = fft(x);

% Magnitude spectrum
P = abs(X)/N;

% Frequency axis
f = (0:N-1)*(Fs/N);

% Plot composite signal
subplot(2,1,1)
plot(t, x)
title('Composite Signal')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

% Plot magnitude spectrum
subplot(2,1,2)
stem(f, P, 'filled')
title('Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
grid on
xlim([0 Fs/2])

