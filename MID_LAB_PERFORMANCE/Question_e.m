clc
clear all 
close all

% Group 8
Z = 8;
f = Z * 250;
fs = 20 * f;

t = 0: 1/fs: 1; 

x1 = (Z+20) * sin(2*pi * (Z*250*t + pi/Z));
x_h = (Z+20)/2 * sin(2*pi * (2*Z*250*t + pi/Z));

s = (Z+5)/20;
noise = s*randn(size(t));

x = x1 + x_h + noise;


sig_x = (Z+20) * sin(2*pi * (Z*250*t + pi/Z));                % Original signal, a sine wave 

Xmax = max(sig_x);
Xmin = min(sig_x);

L = 4;
step = (Xmax - Xmin)/(L-1);
codebook = Xmin : step : Xmax;
partition = (Xmin + step/2) : step : (Xmax - step/2);


[index,quants] = quantiz(sig_x,partition, codebook);                % Quantize. 

figure 
plot(t,sig_x,'x',t,quants) 
legend('Original signal','Quantized signal');
xlim([0 0.002])

