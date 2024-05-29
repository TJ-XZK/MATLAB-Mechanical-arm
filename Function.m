clc,clear;
syms L1 L2 L3 q1 q2 x y z theta u v 
eqXZ = L1*cos(q1)+L2*cos(q1+q2) == u;
eqY = L1*sin(q1)+L2*sin(q1+q2) == v;
[Q1,Q2] = solve(eqXZ, eqY, q1,q2);
q1 = subs(Q1, {'u','v'},{sqrt(x^2+z^2)-L3*cos(theta),y-0.6-L3*sin(theta)});
q2 = subs(Q2, {'u','v'},{sqrt(x^2+z^2)-L3*cos(theta),y-0.6-L3*sin(theta)});
q3 = theta-q1-q2;
q4 =atan(-z/x);
disp(q1)
disp(q2)
disp(q3)
disp(q4)
