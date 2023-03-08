x0=[0.0 0.0]; % Initial Conditions;a row vector
y(1,1)=x0(1);
x1(1)=x0(1,1); % Save the state variables
x2(1)=x0(1,2);
timestep=0.01; % Integration step.
t0=0.0; tfinal=10.0;
[t,x]=ode45(@mass_spring1,[t0 tfinal],x0);
plot(t,x)
legend("distance","speed")