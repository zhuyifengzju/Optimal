close all;
A= 2;
theta = linspace(0,pi,300);
x = A*(theta-sin(theta));
y = A*(1-cos(theta));
plot(x,y,'.');
axis equal;grid on;hold on;
plot(x(index),y(index),'ro')
index = 300;
x(index)
y(index)
N = 200;
%x = 6.2832 y=4
X = linspace(0,6.2832,N+1)
delta = 6.2832/N;
A = zeros(N+1,N+1);
A(1,1) = 1;
A(N+1,N+1)=1;
b = zeros(N+1,1);
b(N+1) = 4;
l=zeros(N+1,1);
r = ones(N+1,1).*6.2832;
x0 = ones(N+1,1);
for i=1:N+1
    x0(i) = i*delta;
end;
options = optimset('GradObj','off','HessUpdate','bfgs','Diagnostics','on','MaxIter',10000,...
    'TolX',1e-7,'TolFun',1e-7,'TolCon',1e-7,'MaxFunEval',300000,'DiffMinChange',1e-7)
Y = fmincon(@fun,x0,[],[],A,b,l,r,[],options);
plot(X',Y);

