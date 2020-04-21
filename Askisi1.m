clc;
clear;
%syms y(t) g k;
%assume (g,'positive');
%f=sqrt((1+diff(y,t)^2)/(2*g*y));
%eq=functionalDerivative(f,y)==0;
%simplify(eq);

%g=y*(1+diff(y,x)^2)==k^2;
%cond = y(0) == 0;
%dsolve(g,t)

t=0:-0.0001:-4.1762;
x=-1.98562*(t-sin(t));
y=-1.98562*(1-cos(t));

plot(x,y);
xlabel('x');
ylabel('y');
title('Γραφική Παράσταση');