clc;
clear;
syms q1(t) q2(t) q3(t) t l(t) C1 C2 C3;
%ÐñïóðÜèåéá åðßëõóçò ôçò åîßóùóçò êáé error
L=q3*sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2)+(q1^2+q2^2);
eq1=functionalDerivative(L,q1(t))==0;
eq2=functionalDerivative(L,q2(t))==0;
eq3=functionalDerivative(L,q3(t))==0;
F1=simplify(eq1)
F2=simplify(eq2)
F3=simplify(eq3)


eqns=[F1,F2,F3]';
dsolve(eqns)

%ÐñïóðÜèåéá åðßëõóçò ìå äéáöïñåôéêÞ ìïñöÞ áëëÜ ÷ùñßò ôåëéêÜ ôï ðñüãñáììá íá
%ìðïñåß íá âãÜëåé Implicit ìïñöÞ

L=sqrt(diff(q1,t)^2+diff(q2,t)^2+diff(q3,t)^2)+(q1^2+q2^2);
eq1=functionalDerivative(L,q1(t))==0;
eq2=functionalDerivative(L,q2(t))==0;
eq3=functionalDerivative(L,q3(t))==0;
F1=simplify(eq1)
F2=simplify(eq2)
F3=simplify(eq3)


eqns=[F1,F2,F3]';
dsolve(eqns)


