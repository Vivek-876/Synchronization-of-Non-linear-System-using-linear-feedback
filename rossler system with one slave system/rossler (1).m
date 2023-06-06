function out = rossler(t,in)
x = in(1);
y = in(2);
z = in(3);

p = in(4);
q = in(5);
r = in(6);


a = 0.2;
b = 0.2;
c = 5.7;

k1 = 12;
k2 = 0.5;
k3 = 19.5;

xdot = -(y+z);
ydot = x+a*y;
zdot = b+z*(x-c);

pdot = -(q+r)+k1*(x-p);
qdot = p+a*q+k2*(y-q);
rdot = b+r*(p-c)+k3*(z-r);



out = [xdot ydot zdot pdot qdot rdot]';
