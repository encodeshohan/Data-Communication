close all; 
clc; 

 %22-46947-1
 %AB-CDEFG-H
 
 A1= 5;
 A2 = 9;
 s = (11/30);
 


%Define number of samples to take 
fs = 20000; % Sampling frequency 
f1 = 1100; %Hz 
f2 = 1600;
%Define signal 

t = 0 :1/fs: 1-1/fs; 

%  
% powfund = A1^2/2 + A2^2/2 
% % s = 0.1; 
% varnoise = s^2; 
x = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) + s*randn(size(t)); 
%noise 
signal = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t) ; 
noise = s*randn(size(t)); 
%noisy signal 
noisySignal = signal + noise;   
SNR = snr(noisySignal) %Calculation of SNR using snr 

% defSNR = 10*log10(powfund/varnoise)


subplot(211);
plot(t, signal)
title("time vs Signal")
xlabel("time")
ylabel("Signal")
axis([0 0.02 -15 15])
subplot(212);
plot(t, noisySignal)
title("time vs noisy signal")
xlabel("time")
ylabel("noisy signal")
axis([0 0.02 -15 15])
