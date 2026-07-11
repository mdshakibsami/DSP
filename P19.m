%{
Problem 19: Frequency Response
    •   Plot magnitude and phase response using freqz
    •   Interpret cutoff frequency
%}

clc;
clear;
close all;

Fs = 1000;

order = 4;

cutoff = 100/(Fs/2);

[b,a] = butter(order, cutoff);

figure;
freqz(b,a,1024,Fs)
title('Frequency Response of Butterworth Filter')
