clc
close all

%22-46026-1
%AB-CDEFG-H

%K1 = A + B
k1 = 4;
%K2 = G+H+2
k2 = 9;
% J1 = D+G+20
j1 = deg2rad(32);
% j2 = 30 degrees
j2 = deg2rad(30);

%f1 = E+F+5
f1 = 7;
% f2 = C+D+5
f2 = 15;

T = 0.1428;
t = 0: (T/100) : 3*T;

x1 = k1 * cos(2 * pi * f1 * t + j1);
x2 = k2 * cos(2 * pi * f2 * t + j2);

x3 = x1 + x2;


plot(t, x3)
title('plotting AC voltage over time')
xlabel('time')
ylabel('voltage')