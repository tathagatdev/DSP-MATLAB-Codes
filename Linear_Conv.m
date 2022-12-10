clc;
clear all;
close all;
%linear convolution
n=[1:4];
h=(0.5).^n;
x=[1 2 4 7];
hs=1;
xs=1;
he=hs+length(h)-1;
xe=xs+length(x)-1;
n1=[xs+hs:xe+he];
%part b
subplot(2,2,1);
y=conv(x,h);
stem(n1,y);
title('y=x*h');
%part c
m=[0:10];
x1=m;
x1s=0;
x1e=x1s+length(x1)-1;
n2=[x1s+hs:x1e+he];
y1=conv(x1,h);
subplot(2,2,2);
stem(n2,y1);
title('y1=x1*h');
%part d deconvolution of inputs
[q,r]=deconv(y,h);
subplot(2,2,3);
stem(n,q);
title('x');
[q1,r]=deconv(y1,h);
subplot(2,2,4);
stem(m,q1);
title('x1')
