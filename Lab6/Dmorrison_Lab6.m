clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

b = [1 1 1]; % Numerator Polynomial
a = [3];     % Denominator Polynomial

freqz(b,a,256,2000)

%---------------------
N = 256;

for n = 0:N-1
  w(n+1) = pi/N*n;
end

for n = 0:N-1
  H(n+1) = 1/3 * (1 + exp (-j * w(n+1)) + exp(-j * 2 *w(n+1)));
end

figure
subplot(2, 1, 1)
plot(w, abs(H))
grid on
title('Magnitude of tranfer function')
xlabel('w')
ylabel('Magnitude')

subplot(2, 1, 2)
plot(w, angle(H))
grid on
title('Phase of tranfer function')
xlabel('w')
ylabel('Phase')
