A = [2 0;0 1];
B = [1 0;1 3];
Q = -[2.5 0;0 3];
R = [0.2 0;0 0.1];
tspan = [0,5];
y0 = [0.1 0.2;0.3 0.4];
% A = 2;
% B = 3;
% Q = 0.1;
% R = 0.2;
% tspan = [0,5];
% y0 = [5];

[t,P] = ode45(@(t,P)my_riccati(t,P,A,B,Q,R),tspan,y0);
size(P)