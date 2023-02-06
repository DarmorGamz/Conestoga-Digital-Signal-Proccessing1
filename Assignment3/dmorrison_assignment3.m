clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

N = {11 21 31};
Wc = pi/4;

for k = 1:31
  w(k) = pi/(31*(k-1));

  for n:2:11
    Hhp(k) = (sin((n-1) * Wc)/(pi*(n-1))) * ((-1)^(n-1)) * (exp(-j*(n-1)*w(k)));
  end
end

figure
plot(w, abs(Hhp));
