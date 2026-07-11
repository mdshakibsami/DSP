clc;
clear;
close all;

% Input signal
x = [1 2 3 4];

% Built-in DFT
X_DFT = fft(x);

disp('DFT using fft():');
disp(X_DFT);

% ===== Manual DFT =====
N = length(x);
Xm = zeros(1, N);

for k = 0:N-1
    sum_value = 0;
    for n = 0:N-1
        sum_value = sum_value + x(n+1) * exp(-1j * 2 * pi * k * n / N);
    end
    Xm(k+1) = sum_value;
end

disp('Manual DFT:');
disp(Xm);

% Compare the results
disp('Difference:');
disp(X_DFT - Xm);
