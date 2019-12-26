% function thermodynamics
 function[omega,bm,sm]=sthermodynamics2(dtstraini,tstep,bmo,smo,pomega)
% clear;
% dtstraini=[0 0 0; 0 0 0; 0 0 0.005];
% tstep=1000;
% smo=3.13e4;
% bmo=6.07e4;
% lambda = 3.985e4;
% mu = 3.13e4;


%% definiction
omega=0;






FTOL=1e-6;

% 
% % constants first version in proposal
% alpha = 24.0e3;
% beta = -2.475e4; 
% lambda=bmo-2/3*smo;
% mu=smo;
% pr = 0.2; %poisson ratio
% 
% C0 = 0.001;
% C1 = 0.8;
% B = 0;
% g = 1.1e2;

% % constants second version from cheng's paper
% alpha = 1.9e3;
% beta = -2.4e4; 
% lambda=bmo-2/3*smo;
% mu=smo;
% pr = 0.2; %poisson ratio
% 
% C0 = 0.001;
% C1 = 0.55;
% B = 0;
% g = 1.1e2;

% constants second version from pouya's paper
alpha = -16e3;
beta = -31e3; 
lambda=bmo-2/3*smo;
mu=smo;
pr = 0.2; %poisson ratio

C0 = 0.11;
C1 = 2.2;
B = 0;
g = -300;


% try a,b
% alpha = -16e3;
% beta = -16e2;  




yd=scalardforce(dtstraini,dtstraini,alpha,beta,g);
fd=scalaryieldf(yd,C0,C1,pomega);
if fd>FTOL
    omega=(abs(yd)/sqrt(2)-C0)/C1;
end


if omega<pomega
    omega=pomega;   
end

lambda=lambda+2*alpha*omega;
mu=mu+2*beta*omega;
bm=2/3*mu+lambda;
sm=mu;


%  figure
% plot(strainv,sigmav)
% set(gca,'FontSize',16);
% xlabel('strainv','fontsize',16);
% ylabel('sigmav(MPa)','fontsize',16);
% figure
% plot(strainv,omegav)
% set(gca,'FontSize',16);
% xlabel('strainv','fontsize',16);
% ylabel('omegav','fontsize',16);

end


