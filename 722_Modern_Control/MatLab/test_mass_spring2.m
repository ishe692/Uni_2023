m=1.0;k=25.0;wn=sqrt(k/m);zeta=0.6;f=2*zeta*wn;
x0=[0.0 0.0]; % Initial Conditions y(1,1)=x0(1);x1(1)=x0(1,1);x2(1)=x0(1,2);
timestep=0.01; % Integration step.
t0=0.0;tfinal=0.0;iterations=1000;
u(1)=1.0;t(1)=t0;
for i=2:iterations
uc=u(i-1); t0=tfinal;tfinal=tfinal+timestep; t(i)=tfinal;
[dum,allx]=ode45(@mass_spring2,[t0 tfinal],x0,[],u,m,f,k);
xx=flipud(allx); [m1,n1]=size(xx); x0=xx(1,1:n1);
x1(i)=xx(1,1);x2(i)=xx(1,2);y(i,1)=x1(i);
u(i,1)=1.0;
end
plot(t(1:length(x1)),y)
grid xlabel(’Time (s)’) ylabel(’Output y ’)