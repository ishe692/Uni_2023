function dx= mass_spring1(t,x)
m=1;f=1;k=1;u=1;
x1dot=x(2);
x2dot=(-k/m)*x(1)-(f/m)*x(2)+(1/m)*u;
dx=[x1dot;x2dot];