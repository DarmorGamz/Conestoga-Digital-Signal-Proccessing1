clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

n = 1:100;
x = 0.8.^(n+1);
y(1) = 2; y(2) = 3;

for i = 3:100
  y(i) = 0.6*y(i-1)-0.05*y(i-2)+2*x(i)+x(i-1);
end

a = [1 -0.6 0.05];
b = [2 1];
z = [2 3];

figure(1)
plot(n, y, '-o');
title('Iterative')'
xlabel('n');
ylabel('y');

figure(2)
plot(n, filter(b, a, x, z), '-o');
title('Iterative')'
xlabel('n');
ylabel('y');
