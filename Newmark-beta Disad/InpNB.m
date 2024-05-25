m1 = 0 ;
m2 = 1 ;
m3 =1 ;
k1 = 1e4 ;
k2 = 1 ;
M = [m2 0; 0 m3] ;
K = [k1+k2 -k2 ; -k2 k2] ;
t = 0:1/2000:200 ;
F = zeros(2,40001) ;
f1 = sin(1.2*t) ;
F(1,:) = f1 ;
F = zeros(2,400001) ;
[Xd,Xv,Xa,t] = NBMdof(1/2,1/6,M,zeros(2,2),K,F,2000,zeros(2,1),zeros(2,1),200) ;

t = 0:1/100:200 ; %Numerical damping clear
F = zeros(2,20001) ;
f1 = sin(1.2*t) ;
F(1,:) = f1 ;
[Xd,Xv,Xa,t] = HHTalpha(0.10,M,zeros(2,2),K,F,100,zeros(2,1),zeros(2,1),200) ;
plot(t,Xd(1,:))
plot(t,Xv(1,:))
plot(t,Xa(1,:))
1/(2*0.01)