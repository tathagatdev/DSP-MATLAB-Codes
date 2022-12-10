clc;
clear all;
close all;
%part a
n=-1:3;
x=[1 2 3 4 5];
w=-pi:0.001*pi:pi;
X=x*exp(-1j*n.'*w);
%part b
x1=(0.9*exp((1j*pi)/3)).^n;
w=-pi:0.001*pi:pi;
X1=x1*exp(-1j*n.'*w);
%plotting of part a and b
% phase plot of part a
subplot(3,2,1);
plot(w,angle(X));
xlabel('w');
ylabel('Phase');
%axis([-pi,pi,-2*pi,2*pi]);
title('Phase Plot a');
%magnitude plot of  part a
subplot(3,2,2);
plot(w,abs(X));
xlabel('w');
ylabel('Magnitude');
%axis([-pi,pi,0,ceil(max(abs(X)))]);
title('Magnitude Plot a');
% phase plot of part b
subplot(3,2,3);
plot(w,angle(X1));
xlabel('w');
ylabel('Phase');
%axis([-pi,pi,-2*pi,2*pi]);
title('Phase Plot b');
%magnitude plot of  part b
subplot(3,2,4);
plot(w,abs(X1));
xlabel('w');
ylabel('Magnitude');
%axis([-pi,pi,0,ceil(max(abs(X1)))]);
title('Magnitude Plot b');
