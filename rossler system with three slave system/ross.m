function out = ross(t,in)
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


a = 0.2;
b = 0.2;
c = 5.7;
mew = -0.5;

k11 = 24;
k12 = 1;
k13 = 39;

k21 = 2*k11;
k22 = 2*k12;
k23 = 2*k13;

k31 = (3/2)*k11;
k32 = (3/2)*k12;
k33 = (3/2)*k13;

xdot = -(y+z);
ydot = x+a*y;
zdot = b+z*(x-c);

pdot = -(q+r)+k11*(x-p);
qdot = p+a*q+k12*(y-q);
rdot = b+r*(p-c)+k13*(z-r);

jdot = -(k+l)+k21*(p-j);
kdot = j+a*k+k22*(q-k);
ldot = b+l*(j-c)+k23*(r-l);

sdot = -(t+u)+k31*(j-s);
tdot = s+a*t+k22*(k-t);
udot = b+u*(s-c)+k33*(l-u);

% exdot = xdot-pdot;
% eydot = ydot-qdot;
% ezdot = zdot-rdot;


out = [xdot ydot zdot pdot qdot rdot jdot kdot ldot sdot tdot udot]';
