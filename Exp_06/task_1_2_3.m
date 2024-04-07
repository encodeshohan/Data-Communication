close all; 
clc; 
A=5;
f=5;  

x=[001 100 000 011 000 000 110 110]; % input signal ; 
nx=size(x,2); 
 
i=1; 
while i<nx+1 
     t = i:0.001:i+1; 
    if x(i)==000 
       ask=0*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*1*t); 
       psk=A*sin(2*pi*f*t+0); 
    elseif x(i)==001
       ask=1*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*2*t); 
       psk=A*sin(2*pi*f*t+(pi/4));
    elseif x(i)==010
       ask=2*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*3*t); 
       psk=A*sin(2*pi*f*t+(3*pi/4));
    elseif x(i)==011
       ask=3*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*4*t); 
       psk=A*sin(2*pi*f*t+(pi/2));
    elseif x(i)==100
       ask=4*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*5*t); 
       psk=A*sin(2*pi*f*t+(-pi/4));
    elseif x(i)==101
       ask=5*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*6*t); 
       psk=A*sin(2*pi*f*t+(-pi/2));
    elseif x(i)==110
       ask=6*sin(2*pi*f*t); 
       fsk=A*sin(2*pi*7*t); 
       psk=A*sin(2*pi*f*t+(pi));
    else 
        ask=7*sin(2*pi*f*t); 
        fsk=A*sin(2*pi*8*t); 
        psk=A*sin(2*pi*f*t+(-3*pi/4)); 
    end 
    subplot(3,1,1); 
    plot(t,ask); 
    hold on; 
    grid on;
 title('Amplitude Shift Key') 
    subplot(3,1,2); 
    plot(t,fsk); 
    hold on; 
    grid on; 
title('Frequency Shift Key') 
    subplot(3,1,3); 
    plot(t,psk); 
    hold on; 
    grid on; 
 title('Phase Shift Key') 
    i=i+1; 
end