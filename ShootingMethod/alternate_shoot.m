function shoot_method
clc
clear all
x=0.5;
a = 25;
eps = 0.1;
c = -2;
%theta = 0.25;

theta = (c*(1-exp(-a)))/(2*(-c^2 + c - eps));









x1=fzero(@(x)solver(x,a,eps,c,theta),x);
end

function F = solver(x,a,eps,c,theta)
options=odeset('RelTol', 1e-8, 'AbsTol', [1e-8, 1e-8]);
[t,u]=ode45(@(z,u)uz2(z,u,a,eps,c), [0,a], [theta x], options);
s=length(t);
F=u(s,1)-theta;
figure(1)
%plot(t,u(:,1))
plot(t,u(:,1),'-o',t,u(:,2),'-o')
end

function dy = uz2(x,y,a,eps,c)
    dy=zeros(2,1);
    dy(1) = y(2);
    dy(2) =  (y(2)/c) - eps*y(1)/c^2 - (w(x) - w(x-a))/c;
end

function val = w(x)
    val = exp(-1*abs(x))/2;
end

