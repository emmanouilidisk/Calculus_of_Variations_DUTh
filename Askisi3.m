clc;
clear;
syms q1(t) q2(t) q3(t) l C1 C2 C3;
L=q3*sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2)+l*(q1^2+q2^2 -1);
eq1=functionalDerivative(L,q1(t))==0;
eq2=functionalDerivative(L,q2(t))==0;
eq3=functionalDerivative(L,q3(t))==0;
F1=simplify(eq1)
F2=simplify(eq2)
F3=simplify(eq3)

F1=L-diff(q1)*q3*diff(q1)/sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2);
F2=L-diff(q2)*q3*diff(q2)/sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2);
F3=L-diff(q3)*q3*diff(q3)/sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2);

F1=simplify(F1)
F2=simplify(F2)
F3=simplify(F3)

eqns=[F1,F2,F3]';
dsolve(eqns)



