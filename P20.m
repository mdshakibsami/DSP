clc;
clear;
close all;

Fs = 1000;

order = 30;
cutoff = 100/(Fs/2);

%% FIR Filter
b_fir = fir1(order,cutoff);

%% IIR Butterworth Filter
[b_iir,a_iir] = butter(4,cutoff);

figure;

subplot(2,1,1)
freqz(b_fir,1,1024,Fs)
title('FIR Low-Pass Filter')

subplot(2,1,2)
freqz(b_iir,a_iir,1024,Fs)
title('Butterworth IIR Filter')
