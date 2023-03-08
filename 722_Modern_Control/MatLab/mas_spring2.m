function dx=mass_spring2(t,x,u,m,f,k)
x1dot=x(2);
x2dot=(-k/m)*x(1)-(f/m)*x(2)+(1/m)*u;
dx=[x1dot;x2dot];