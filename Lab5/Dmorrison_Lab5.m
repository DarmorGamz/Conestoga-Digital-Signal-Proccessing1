clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

% Get Poles and Zeroes
y = [10 0 0 0];
x = [1 0 0 0 -0.81];

z_pol = 10.^3*0;
z_zero = roots(x);
z_zero = [z_zero; z_pol];
figure(1)
plot(real(z_zero),imag(z_zero),'o');
grid on;

sys = tf(y,x);
figure(2)
pzmap(sys);

M = 200;
fs = 200;
[h,w] = freqz(y,x,M,fs);
figure(3)
subplot(2,1,1)
plot(w,abs(h));
grid on;
title('Magnitude Graph')
xlabel('n')
ylabel('Magnitude')

subplot(2,1,2)
plot(w,angle(h));
grid on;
title('Phase Graph');
xlabel('n');
ylabel('Phase');

n = 0:200;
for k=1:201
    w(k) = (pi/fs)*k;
    Hmagnitude(k) = 10/(sqrt(((cos(4*w(k))-0.81).^2)+(1j*sin(4*w(k)).^2)));
    Hphase(k) = (3*w(k))-atan((sin(4*w(k))./(cos(4*w(k)-0.81))));
end

figure(4)
subplot(2,1,1)
plot(n,Hmagnitude)
grid on;
title('Magnitude Graph');
xlabel('n');
ylabel('Magnitude');

subplot(2,1,2)
plot(n,Hphase);
grid on;
title('Phase Graph');
xlabel('n');
ylabel('Phase');
