%----------Chua.m----------
function out = cha(t,in)

x = in(1);
y = in(2);
z = in(3);

p = in(4);
q = in(5);
r = in(6);

j = in(7);
k = in(8);
l = in(9);

s = in(10);
t = in(11);
u = in(12);

alpha  = 9.78;
beta   = 14.97; 
a     = -1.31;
b     = -0.75;
mew = -0.5;

k1 = 1-alpha-(2*a*alpha)-mew;
k2 = alpha - 1 + abs(1-beta)-mew;
k3 = abs(1-beta)-mew;

k4 = (k1+1-alpha-(2*a*alpha)-mew);
k5 = (k2+alpha - 1 + abs(1-beta)-mew);
k6 = (k3+abs(1-beta)-mew);

k7 = 0.5*(k4+1-alpha-(2*a*alpha)-mew);
k8 = 0.5*(k5+alpha - 1 + abs(1-beta)-mew);
k9 = 0.5*(k6+abs(1-beta)-mew);

fx1 = b*x+0.5*(a-b)*(abs(x+1)-abs(x-1));
fx2 = b*p+0.5*(a-b)*(abs(p+1)-abs(p-1));
fx3 = b*j+0.5*(a-b)*(abs(j+1)-abs(j-1));
fx4 = b*s+0.5*(a-b)*(abs(s+1)-abs(s-1));

xdot = alpha*(y-x-fx1);
ydot = x - y+ z;
zdot  = -beta*y;


pdot = alpha*(q-p-fx2) + k1*(x-p);
qdot = p - q+ r + k2*(y-q);
rdot  = -beta*q + k3*(z-r);

jdot = alpha*(k-j-fx3) + k4*(p-j);
kdot = j-k+l+k5*(q-k);
ldot = -beta*k + k6*(r-l);

sdot = alpha*(t-s-fx4) + k7*(j-s);
tdot = s-t+u + k8*(k-t);
udot = -beta*t + k9*(l-u);

% ex1dot = xdot-pdot;
% ey1dot = ydot-qdot;
% ez1dot = zdot-rdot;
% 
% ex2dot = pdot-jdot;
% ey2dot = qdot-kdot;
% ez2dot = rdot-ldot;
out = [xdot ydot zdot pdot qdot rdot jdot kdot ldot sdot tdot udot]';
