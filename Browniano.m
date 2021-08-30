clear
N=2500;
dt=1/N;
X=randn(N,1);
S(1)=0;
t(1)=0;
Y(1)=0;
mu=1;
sigma=0.3;
Yderiva(1)=sigma*X(1);
Ytgeometrico(1)=exp(sigma*X(1));

for i=1:2499
    
    S(i+1)=S(i)+sqrt(dt)*X(i);
    t(i+1)=t(i)+dt;
    Y(i+1)=X(i+1)+(dt*X(1));
    Ytderiva(i+1)= (mu*dt)+(sigma*X(i+1));
    Ytgeometrico(i+1)=exp((mu*dt)+(sigma*X(i+1)));
    
end

figure
%plot(t,S)
%hold on
plot(t,Y)
%plot(t,Ytderiva)




