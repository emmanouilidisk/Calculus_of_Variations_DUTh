clc;
clear;
syms y(t) A B m g k l;
assume(m,'positive')
assume(k,'positive')
G=diff(y,t,2)+A*y-B==0;
dsolve(G,t)

f=m*diff(y,t)^2/2+g*m*y-k*(y-l)^2/2
eq=functionalDerivative(f,y)==0;
F=simplify(eq)
dsolve(F,t)