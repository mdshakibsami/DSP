clc;
clear;
close all;

Fs = 1000;
t = 0:1/Fs:2;

% Stationary signal (constant frequency)
x1 = sin(2*pi*50*t);

% Non-stationary signal (frequency changes at t = 1 s)
x2 = sin(2*pi*50*t);        % First, 50 Hz everywhere
x2(t >= 1) = sin(2*pi*150*t(t >= 1));   % Change to 150 Hz after 1 s

figure;

subplot(2,1,1)
spectrogram(x1,128,120,128,Fs,'yaxis')
title('STFT of Stationary Signal')

subplot(2,1,2)
spectrogram(x2,128,120,128,Fs,'yaxis')
title('STFT of Non-Stationary Signal')
