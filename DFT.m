clc;
clear all;
close all;
N=input('Enter the value of N:');
x=input('Enter the values of x:');
n=0:(N-1);
k=0:(N-1);
X=x*exp((-1j*2*pi*n.'*k)/N)
%Checking dft using fft function
y=fft(x)
