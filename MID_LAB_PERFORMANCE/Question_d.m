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

SNR = snr(x)
bandwidth = obw(x, fs);
C =  bandwidth*log2(1+SNR)
% plot(t, x)
% title('Amplitude vs Time')
% xlabel('time')
% ylabel('amplitude')
% xlim([0 0.002])