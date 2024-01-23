% transient- heat conduction model
nx=10;
nt=3;
x0= 0;
xf= 1;
t0=0;
tf= 0.2;
dx= (xf-x0)/(nx-1);
dt= (tf-t0)/(nt-1);
x= x0:dx:xf;
t= t0:dt:tf;

s= dt/dx^2;

% boundary condition

T= zeros(nx, nt);
T= zeros(nx);

%  T(1)=100;
%  T(3)=30;

% initial condition
T(:,1)= sin(pi*x);

% T0= 1;
% T(:,1)= T0;

for j= 1:nt-1
    for i= 2:nx-1
        T(i, j+1)= s*T(i-1, j)+(1-2*s)*T(i,j)+s*T(i+1,j);

    end
end

%     for i= 2:nx-1
%         T(i)= s*T(i-1)+(1-2*s)*T(i)+s*T(i+1);
% 
%     end
% % 
%  plot(x,T);
% plot(t,T);

figure()
contourf(T,200,'linecolor', 'non')
xlabel('x')
ylabel('t')
title('Numerical solution (Transient Model)')
colormap(jet(256))
colorbar
caxis([0,1])
