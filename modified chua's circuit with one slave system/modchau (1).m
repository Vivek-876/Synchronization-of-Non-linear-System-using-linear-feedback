function out = modchau(t,in)

x = in(1);
y = in(2);
z = in(3);

p = in(4);
q = in(5);
r = in(6);

alpha  = 10.814;
beta   = 14; 
a     = 1.3;
b     = 0.11;
mew = -0.5;
c = 3;
d = 0;
k1 = 0.5*((alpha*pi*b/a)+alpha+1-mew);
k2 = 0.5*(-1+alpha+abs(1-beta)-mew);
k3 = 0.5*(abs(1-beta)-mew);

if(x >= 2*a*c )
    h = (b*pi/(2*a))*(x-(2*a*c));
elseif( x <= -2*a*c )
    h = (b*pi/(2*a))*(x+(2*a*c));
else
    h = -b*sin((pi*x/(2*a))+d);
end


if(p >= 2*a*c )
    o = (b*pi/(2*a))*(p-(2*a*c));
elseif( p <= -2*a*c )
    o = (b*pi/(2*a))*(p+(2*a*c));
else
    o = -b*sin((pi*p/(2*a))+d);
end

xdot = alpha*(y-h);
ydot = x - y+ z;
zdot  = -beta*y;

pdot = alpha*(q-o) + k1*(x-p);
qdot = p - q+ r + k2*(y-q);
rdot  = -beta*q + k3*(z-r);


out = [xdot ydot zdot pdot qdot rdot]';




