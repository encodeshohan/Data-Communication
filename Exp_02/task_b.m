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




 

f = 1; % Times at which to sample the sine function 
sig_x = 2*sin(2*pi*f*t); % Original signal, a sine wave 

Xmax = max(sig_x);
Xmin = min(sig_x);

L = 4;
step = (Xmax - Xmin)/(L-1);
codebook = Xmin : step : Xmax;
partition = (Xmin + step/2) : step : (Xmax - step/2);


[index,quants] = quantiz(sig_x,partition,codebook); % Quantize. 
figure 
plot(t,sig_x,'x',t,quants) 
legend('Original signal','Quantized signal'); 




