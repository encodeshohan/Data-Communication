clc
clear all 
close all

% Group 8
Z = 8;
f = Z * 250;
fs = 20 * f;

t = 0: 1/fs: 1; 
x = (Z+20) * sin(2*pi * (Z*250*t + pi/Z));


plot(t, x)
title('Amplitude vs Time')
xlabel('time')
ylabel('amplitude')
xlim([0 0.0011])