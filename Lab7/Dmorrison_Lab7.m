clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

fc = 1.0e9;
C = 1e-9;
R = 2.672/(2*pi*fc*C)

N = 500;
fs = 4.0e9;
T = 1/fs;

RC = R*C;
a = 1;
b = 3/RC
c = 1/RC^2

s1 = -(-b - sqrt(b^2 - 4*a*c))/(2*a)
s2 = -(-b + sqrt(b^2 - 4*a*c))/(2*a)

for n = 1:N
    f(n) = fs/2/N*n;
    Wanalog = 2*pi*f(n);
    Hanalog(n) = Wanalog^2/(Wanalog^2 - j*Wanalog*3/(R*C) - 1/(R*C)^2)

    Wdigital = 2*pi*f(n)/fs;
    z = exp(1i*Wdigital);
    Hdigital(n) = (z - 1)^2/((z - exp(-s1*T))*(z-exp(-s2*T)));
  end

figure
subplot(2,1,1)
semilogx(f,20*log10(abs(Hanalog)), f, 20*log10(abs(Hdigital)))
title('magnitude plot');
ylabel('|H(f)|');
xlabel('f in Hz');
legend('analog', 'digital');

subplot(2,1,2)
semilogx(f, angle(Hanalog), f, angle(Hdigital))
title('phase plot');
ylabel('phase H(f)');
xlabel('f in Hz');
legend('analog', 'digital');
