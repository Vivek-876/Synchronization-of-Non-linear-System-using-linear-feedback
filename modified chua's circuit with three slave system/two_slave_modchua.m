clear all;
clc;
close all;
[t,x] = ode45(@mchau,[0 100],[1 0 0 2 0 0 -1 0 0 3 0 0]);
plot(x(:,1),x(:,2))
title('plot between x and y')
xlabel('x')
ylabel('y')
figure;
plot(x(:,1),x(:,3))
title('plot between x and z')
xlabel('x')
ylabel('z')
figure;
plot(x(:,2),x(:,3))
title('plot between y and z')
xlabel('y')
ylabel('z')
figure;

ex1 = x(:,1)-x(:,4);
plot(t,ex1(:,1))
title('graph of error term (x-p) v/s time')
xlabel('time (sec)')
ylabel('ex1')
figure;
ey1 = x(:,2)-x(:,5);
plot(t,ey1(:,1))
title('graph of error term (y-q) v/s time')
xlabel('time (sec)')
ylabel('ey1')
figure;
ez1 = x(:,3)-x(:,6);
plot(t,ez1(:,1))
title('graph of error term (z-r) v/s time')
xlabel('time (sec)')
ylabel('ez1')
figure;

ex2 = x(:,1)-x(:,7);
plot(t,ex2(:,1))
title('graph of error term (x-j) v/s time')
xlabel('time (sec)')
ylabel('ex2')
figure;
ey2 = x(:,2)-x(:,8);
plot(t,ey2(:,1))
title('graph of error term (x-k) v/s time')
xlabel('time (sec)')
ylabel('ey2')
figure;
ez2 = x(:,3)-x(:,9);
plot(t,ez2(:,1))
title('graph of error term (x-l) v/s time')
xlabel('time (sec)')
ylabel('ez2')
figure;

ex3 = x(:,1)-x(:,10);
plot(t,ex3(:,1))
title('graph of error term (x-s) v/s time')
xlabel('time (sec)')
ylabel('ex3')
figure;
ey3 = x(:,2)-x(:,11);
plot(t,ey3(:,1))
title('graph of error term (x-t) v/s time')
xlabel('time (sec)')
ylabel('ey3')
figure;
ez3 = x(:,3)-x(:,12);
plot(t,ez3(:,1))
title('graph of error term (x-u) v/s time')
xlabel('time (sec)')
ylabel('ez3')
