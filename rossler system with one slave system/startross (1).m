clear all;
clc;
close all;
[t,x] = ode45(@rossler,[0 100],[-1 4 0 4 0 0]);
plot(x(:,1),x(:,2))
title('graph of x v/s y')
xlabel('x')
ylabel('y')
figure;
plot(x(:,1),x(:,3))
title('graph of x v/s z')
xlabel('x')
ylabel('z')
figure;
plot(x(:,2),x(:,3))
title('graph of y v/s z')
xlabel('y')
ylabel('z')
figure;
ex = x(:,1)-x(:,4);
plot(t,ex(:,1))
title('graph of error term (x-p) v/s time')
xlabel('time (sec)')
ylabel('ex')
figure;
ey = x(:,1)-x(:,4);
plot(t,ey(:,1))
title('graph of error term (x-q) v/s time')
xlabel('time (sec)')
ylabel('ey')
figure;
ez = x(:,1)-x(:,4);
plot(t,ez(:,1))
title('graph of error term (x-r) v/s time')
xlabel('time (sec)')
ylabel('ez')
