%{
Problem 21: Noise Removal Project
    •   Add noise to signal
    •   Apply appropriate filter
    •   Evaluate performance using SNR
%}

clc; clear; close all;

Fs = 1000;
t = 0:1/Fs:1;

% Original signal
x = sin(2*pi*50*t);

% Add 200 Hz noise
xNoisy = x + 0.5*sin(2*pi*200*t);

% FIR low-pass filter
b = fir1(30,100/(Fs/2));
y = filter(b,1,xNoisy);

% SNR
snrBeforeFilter = 10*log10(mean(x.^2)/mean((xNoisy-x).^2));
snrAfterFilter = 10*log10(mean(x.^2)/mean((y-x).^2));

fprintf("SNR Before = %.2f dB\n", snrBeforeFilter);
fprintf("SNR After = %.2f dB\n", snrAfterFilter);

% Plot
subplot(3,1,1), plot(t,x), title('Original Signal')
subplot(3,1,2), plot(t,xNoisy), title('Noisy Signal')
subplot(3,1,3), plot(t,y), title('Filtered Signal')
