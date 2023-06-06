function out = mchau(t,in)

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

alpha  = 10.814;
beta   = 14; 
a     = 1.3;
b     = 0.11;
mew = -0.5;
c = 3;
d = 0;
k11= ((alpha*pi*b/a)+alpha+1-mew);
k12 = (-1+alpha+abs(1-beta)-mew);
k13 = (abs(1-beta)-mew);

k21 = 2*k11;
k22 = 2*k12;
k23 = 2*k13;

k31 = (3/2)*k11;
k32 = (3/2)*k12;
k33 = (3/2)*k13;

if(x >= 2*a*c )
    fx1 = (b*pi/(2*a))*(x-(2*a*c));
elseif( x <= -2*a*c )
    fx1 = (b*pi/(2*a))*(x+(2*a*c));
else
    fx1 = -b*sin((pi*x/(2*a))+d);
end


if(p >= 2*a*c )
    fx2 = (b*pi/(2*a))*(p-(2*a*c));
elseif( p <= -2*a*c )
    fx2 = (b*pi/(2*a))*(p+(2*a*c));
else
    fx2 = -b*sin((pi*p/(2*a))+d);
end

if(j >= 2*a*c )
    fx3 = (b*pi/(2*a))*(j-(2*a*c));
elseif( j <= -2*a*c )
    fx3 = (b*pi/(2*a))*(j+(2*a*c));
else
    fx3 = -b*sin((pi*j/(2*a))+d);
end

if(s >= 2*a*c )
    fx4 = (b*pi/(2*a))*(s-(2*a*c));
elseif( s <= -2*a*c )
    fx4 = (b*pi/(2*a))*(s+(2*a*c));
else
    fx4 = -b*sin((pi*s/(2*a))+d);
end

xdot = alpha*(y-fx1);
ydot = x - y+ z;
zdot  = -beta*y;

pdot = alpha*(q-fx2) + k11*(x-p);
qdot = p - q+ r + k12*(y-q);
rdot  = -beta*q + k13*(z-r);

jdot = alpha*(k-fx3) + k21*(p-j);
kdot = j-k+l+k22*(q-k);
ldot = -beta*k+k23*(r-l);

sdot = alpha*(t-fx4)+k31*(j-s);
tdot = s-t+u+k32*(k-t);
udot = -beta*t+k33*(l-u);



out = [xdot ydot zdot pdot qdot rdot jdot kdot ldot sdot tdot udot]';




