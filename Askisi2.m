clc;
clear;
syms y(t) C1 C2 m g k l;
%Θεωρούμε θετικές πραγματικές τιμές των παραμέτρων
assume(m,'positive')
assume(k,'positive')
assume(g,'positive')
assume(l,'positive')
assume(C1,'positive')
assume(C2,'positive')
%Διαφορική εξίσωση και επίλυση Γενική μορφή με σταθερές
G=diff(y,t,2)+C1*y-C2==0;
dsolve(G,t)
%Διαφορική εξίσωση και επίλυση της ειδική μορφή
f=m*diff(y,t)^2/2+g*m*y-k*(y-l)^2/2;
eq=functionalDerivative(f,y)==0;
F=simplify(eq);
dsolve(F,t)