%{
Problem 22: Speech Signal Analysis (Optional Advanced)
    •   Load audio file (audioread)
    •   Apply:
        o STFT
        o Filtering
    •   Observe real-world signal behavior
%}

clc;
clear;
close all;

% Load speech file
[x, Fs] = audioread('sample.wav');

% Time vector
t = (0:length(x)-1)/Fs;

figure;

subplot(3,1,1)
plot(t,x)
title('Speech Signal')
xlabel('Time (s)')
ylabel('Amplitude')
grid on


% Low-pass Butterworth filter
[b,a] = butter(4,300/(Fs/2));

y = filter(b,a,x);

subplot(3,1,3)
plot(t,y)
title('Filtered Speech Signal')
xlabel('Time (s)')
ylabel('Amplitude')
grid on
