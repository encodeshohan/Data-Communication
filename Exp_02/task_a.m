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

subplot(2,1,1);
plot(t, signal_x,'linewidth',1); 
title('Time-Domain Representation of Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
% Take fourier transform 
fftSignal_x = fft(signal_x); 
% Apply fftshift to put it in the form 
% we are used to (see documentation) 
fftSignal_x = fftshift(fftSignal_x)/(nx/2); 
% Scaling done by dividing with (fs/2) 
% Next, calculate the frequency axis, 
% which is defined by the sampling rate 
f = linspace(-fs/2,fs/2,nx); 
% Since the signal is complex, we need to 
% plot the magnitude to get it to 
% look right, so we use abs (absolute value) 

subplot(2, 1, 2)
plot(f, abs(fftSignal_x),'linewidth',2); 
title('Frequency-Domain Representation of Signal'); 
xlabel('Frequency (Hz)'); 
ylabel('Amplitude'); 
xlim([-20 20]) 

