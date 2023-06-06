%----------Chua.m----------
function out = ch(t,in)

x = in(1);
y = in(2);
z = in(3);

p = in(4);
q = in(5);
r = in(6);

alpha  = 9.78;
beta   = 14.97; 
a     = -1.31;
b     = -0.75;
k1 = 9;
k2 = 12;
k3 = 8;
h = b*x+0.5*(a-b)*(abs(x+1)-abs(x-1));
o = b*p+0.5*(a-b)*(abs(p+1)-abs(p-1));
xdot = alpha*(y-x-h);
ydot = x - y+ z;
zdot  = -beta*y;


pdot = alpha*(q-p-o) + k1*(x-p);
qdot = p - q+ r + k2*(y-q);
rdot  = -beta*q + k3*(z-r);

% exdot = xdot-pdot;
% eydot = ydot-qdot;
% ezdot = zdot-rdot;
out = [xdot ydot zdot pdot qdot rdot]';
