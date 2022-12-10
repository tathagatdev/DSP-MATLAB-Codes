% Unit sample sequence for -10 < n < 10

n=(-10:1:10);
impulse=[zeros(1,10) 1 zeros(1,10)];
subplot(3,3,1)
stem(n,impulse)
title('Unit Impulse Continuous ')
xlabel('Time')
ylabel('Amplitude')
grid on

% Step sequence for 0 <n< 10.
n=(0:1:10);
unitstep=n>=0;
subplot(3,3,2)
stem(n,unitstep)
title('Unit Step Continuos Signal')
xlabel('Time')
ylabel('Amplitude')
grid on

%Ramp sequence for 0 <n< 10.
n=(0:1:10);
unitstep=n>=0;
ramp=n.*unitstep;
subplot(3,3,3)
stem(n,ramp)
title('Ramp Signal Continuous')
xlabel('Time(s)')
ylabel('Amplitude')
grid on


%Exponential sequence for 0 <n< 10.
n=0:1:10;
b=1;
x=exp(b*n);
subplot(3,3,4)
stem(n,x)
title('Exponential Continuous')
xlabel('Time')
ylabel('Amplitude')
grid on

%Sine sequence for 0 <n< 10. 
n=linspace(0,10);
y=sin(n);
subplot(3,3,5)
stem(n,y)
title('Sinusoidal signal in continuous domain')
xlabel('time')
ylabel('sinx')

%Cosine sequence for 0 <n< 10
n=linspace(0,10);
y=cos(n);
subplot(3,3,6)
stem(n,y)
title('Sinusoidal signal in continuous domain')
xlabel('time')
ylabel('cosx')


