clc;
clear all;
close all;
num=input('Enter the numerator terms:');
den=input('Enter the denominator terms:');
s=tf(num,den,0.1);
[z,p,k]=tf2zp(num,den)
fvtool(num,den,'polezero')
