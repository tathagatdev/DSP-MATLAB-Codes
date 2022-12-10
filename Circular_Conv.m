% Circular Convolution using Cconv
xn=input('Enter xn');
hn=input('Enter hn');
l1=length(xn);
l2=length(hn);
N=max(l1,l2);
if(l1<l2)
    xn=[xn,zeros(1,N-l1)];
end
if(l1>l2)
    hn=[hn,zeros(1,N-l2)];
end
yn=zeros(1,N);
yn=cconv(xn,hn,N)
subplot(2,2,1)
stem(1:N,yn);
% Linear convolution
n=[0:3];

x=input('Input x');
h=input('Input h');
hs=0;
xs=0;
he=hs+length(h)-1;
xe=xs+length(x)-1;
n1=[xs+hs:1:xe+he];
y=conv(x,h)
subplot(2,2,2)
stem(n1,y)


