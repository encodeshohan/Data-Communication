clc
close all
clear all

% x1 = a1*cos(2*pi*f1*t), x2 = a2*sin(2*pi*f2*t), x3 = a3*cos(2*pi*f3*t)
% signal_x = x1 + x2 + x3
% a1 = G + 1, a2 = F + 2, a3 = E + 3, f1 = E + 1, f2 = F + 2, f3 = G + 3.

% ID = 22-46013-1
% ID = AB-CDEFG-H

a1 = 4;
a2 = 3;
a3 = 3;

f1 = 1;
f2 = 3;
f3 = 6;






%Define number of samples to take 
fs = 8000;  
%Define signal 
t = 0: 1/fs: 1; 


x1 = a1*cos(2*pi*f1*t);
x2 = a2*cos(2*pi*f2*t);
x3 = a3*cos(2*pi*f3*t);
signal_x = x1 + x2 + x3; 
nx = length(t); % Total number of samples 
%Plot to illustrate that it is a sine wave 



n = 3; 
L =(2^n); 
Xmax = max(signal_x);
Xmin = min(signal_x);

step = (Xmax-Xmin)/(L-1); 
index = round((signal_x - Xmin)/step);
xq = Xmin + index * step;



plot(t,signal_x,'r-.', 'linewidth',1.5); 
hold on; 
plot(t,xq,'k-.', 'linewidth',1.5); 
%plotting wave forms. 
xlabel('time') 
ylabel('amplitude') 
title('example of manual quantization') 
legend('Original signal','quantized signal')

