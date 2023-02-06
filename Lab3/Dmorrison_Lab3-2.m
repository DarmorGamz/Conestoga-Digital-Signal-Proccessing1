clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.

N = 50;
nT = 0:N;
iMax = 20;

for k = 0:N
    % Impulse response.
    x(k+1) = sin(0.1 *pi*k) - 2*cos(0.2 *pi*k) + 3*sin(0.3 *pi*k);

    if k <= iMax
        h(k+1) = ((-1).^k/(10 + k.^2));
    else
        h(k+1) = 0;
    end
end

% Summative function using filter.
for k = 0:N
    ys = 0;
    for i = 0:k
        ys = ys +h(k+1 - i) * x(i+1);
    end
    yz(k+1) = ys;
end

for k = 0:N
    if k <= 100
        x2(k+1)= sin(0.1*pi*k) - 2*cos(0.2*pi*k) + 3*sin(0.3*pi*k);
    else
        x2(k+1)=0;
    end
end

% Filter using built in function.
i = 0:20;
b = (-1).^i./(10+i.^2);
a = [1];
delta = [1, zeros(1,N)];
HF = filter(b, a, delta);

% Conv using built in function.
nT2 = 0:100;
yConv = conv(x2, h)

figure

subplot(4, 2, 1);
plot(nT,x);
grid on;
title('X-function')
xlabel('n')
ylabel('h(k)')

subplot(4, 2, 3);
plot(nT,h);
grid on;
title('Impulse response filter using first principles')
xlabel('n')
ylabel('h(k)')

subplot(4, 2, 4);
plot(nT,HF);
grid on;
title('Impulse response filter using built in functions')
xlabel('n')
ylabel('h(k)')

subplot(4, 2, 5);
plot(nT2,yConv);
grid on;
title('Zero state plot using conv function')
xlabel('n')
ylabel('yz(k)')

subplot(4, 2, 7);
plot(nT,yz);
grid on;
title('Zero State Plot')
xlabel('n')
ylabel('h(k)')

subplot(4, 2, 8);
plot(nT, filter(HF, a, x));
grid on;
title('y(k) filtered using built in function')
xlabel('n')
ylabel('y==(k)')


