clear

N=2500; dt=1/N; X=randn(N,1);

S(1)=0; t(1)=0;

mu=1; sigma=0.3;

Ytderiva(1) = mu*dt + sigma*sqrt(dt)*X(1);
Ytgeometrico(1) = exp(mu*dt + sigma*sqrt(dt)*X(1));

for i=1:2499
    
    %Browniano
    S(i+1)=S(i)+sqrt(dt)*X(i);

    Ytderiva(i+1)= Ytderiva(i) + mu*dt + sigma*sqrt(dt)*X(i);
    Ytgeometrico(i+1)= Ytgeometrico(i) * exp(mu*dt + sigma*sqrt(dt)*X(i));

    t(i+1)=t(i)+dt;
end

figure
plot(t,S)

figure
plot(t,Ytderiva)
hold on
plot(t,Ytgeometrico)




