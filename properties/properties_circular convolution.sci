clc;clf;clear;
x=[1,2,3,4];
y=[2,1,2,1];
m = max(length(x),length(y));
newx = [x, zeros(1,m-length(x))];
newy = [y, zeros(1,m-length(y))];
a=fft(newx);
b=fft(newy);
c=a.*b;
d=ifft(c);
disp(fft(d));
e=fft(newx).*fft(newy);
disp(e);