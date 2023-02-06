clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

year = 2016:2045;
x = [0.1, 0.09,0.05,0.08,0.07,0.08,0.1,0.11,0.04,0.07,0.06,0.08,0.01,0.11,0.03,0.05,0.07,0.03,0.06,0.03,0.08,0.02,0.1,0.04,0.06,0.08,0.03,0.05,0.07,0.07];

Net(1) = 2000;
Principal(1) = 2000;
for n = 1:30
  % Complex-values signal
 Net(n+1) = (1+x(n))*Net((n+1)-1)+2000;
 Principal(n+1) = Principal(n)+2000;
end


figure;

subplot(1, 2, 1);
plot(year, Net);
hold on;
plot(year, Principal);
title("Compound Interest(30year)");
xlabel("Year");
ylabel("Magnitude($)");

subplot(1, 2, 2);
scatter(year, Net);
hold on;
scatter(year, Principal);
title("Compound Interest(30year)");
xlabel("Year");
ylabel("Magnitude($)");
