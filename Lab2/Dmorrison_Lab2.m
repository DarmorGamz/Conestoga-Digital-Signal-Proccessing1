clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

n = -10:10;

for k = 1:21 % 20 Total values
  % Complex-values signal
  x(k) = exp((-0.1 + 0.3i) * n(k));

  % XMag/Phase by hand.
  xMag(k) = exp(-0.1*n(k));
  xPhase(k) = 0.3*n(k);

  % X Real/Img by hand.
  xReal(k) = exp(-0.1*n(k))*cos(0.3*n(k));
  xImg(k) = exp(-0.1*n(k))*sin(0.3*n(k));

  % XMag/Phase built in functions.
  xMag2(k) = abs(x(k));
  xPhase2(k) = angle(x(k));

  % X Real/Img built in functions.
  xReal2(k) = real(x(k));
  xImg2(k) = imag(x(k));
end

figure;

subplot(4, 4, 1);
plot(n, xMag);
title("Magnitude of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 2);
plot(n, xPhase);
title("Phase of Complex Function");
xlabel("n");
ylabel("Phase");

subplot(4, 4, 3);
plot(n, xReal);
title("Real part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 4);
plot(n, xImg);
title("Imaginary part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 5);
scatter(n, xMag);
title("Magnitude of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 6);
scatter(n, xPhase);
title("Phase of Complex Function");
xlabel("n");
ylabel("Phase");

subplot(4, 4, 7);
scatter(n, xReal);
title("Real part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 8);
scatter(n, xImg);
title("Imaginary part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 9);
plot(n, xMag2);
title("Magnitude of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 10);
plot(n, xPhase2);
title("Phase of Complex Function");
xlabel("n");
ylabel("Phase");

subplot(4, 4, 11);
plot(n, xReal2);
title("Real part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 12);
plot(n, xImg2);
title("Imaginary part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 13);
scatter(n, xMag2);
title("Magnitude of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 14);
scatter(n, xPhase2);
title("Phase of Complex Function");
xlabel("n");
ylabel("Phase");

subplot(4, 4, 15);
scatter(n, xReal2);
title("Real part of Complex Function");
xlabel("n");
ylabel("Magnitude");

subplot(4, 4, 16);
scatter(n, xImg2);
title("Imaginary part of Complex Function");
xlabel("n");
ylabel("Magnitude");



