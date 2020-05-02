clc;
clear;
syms y(t) C1 C2 m g k l;
%�������� ������� ����������� ����� ��� ����������
assume(m,'positive')
assume(k,'positive')
assume(g,'positive')
assume(l,'positive')
assume(C1,'positive')
assume(C2,'positive')
%��������� ������� ��� ������� ������ ����� �� ��������
G=diff(y,t,2)+C1*y-C2==0;
dsolve(G,t)
%��������� ������� ��� ������� ��� ������ �����
f=m*diff(y,t)^2/2+g*m*y-k*(y-l)^2/2;
eq=functionalDerivative(f,y)==0;
F=simplify(eq);
dsolve(F,t)