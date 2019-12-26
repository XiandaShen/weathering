% function thermodynamics
 function[omega,bm,sm]=sthermodynamics(dtstraini,tstep,bmo,smo,pomega)
% clear;
% dtstraini=[0 0 0; 0 0 0; 0 0 0.005];
% tstep=1000;
% smo=3.13e4;
% bmo=6.07e4;
% lambda = 3.985e4;
% mu = 3.13e4;


%% definiction
tstrain=zeros(3,3);
dtstrain=dtstraini/tstep;
dtstraine=zeros(3,3);
tstraine=zeros(3,3);
dtstrainel=zeros(3,3);
tstrainel=zeros(3,3);
omega=0;
domega=0;
dtsigma=zeros(3,3);
tsigma=zeros(3,3);

% temperary properties during iteration
dtstraineT=zeros(3,3);
tstraineT=zeros(3,3);
dtstrainelT=zeros(3,3);
tstrainelT=zeros(3,3);
omegaT=zeros(3,3);
domegaT=0;
dtsigmaT=0;
tsigmaT=zeros(3,3);



FTOL=1e-6;
strainv=zeros(1,tstep);
sigmav=zeros(1,tstep);
omegav=zeros(1,tstep);

% storage
recordtstrain=cell(tstep,1);
recordtsigma=cell(tstep,1);
recordomega=cell(tstep,1);
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

stiffe=stiffnesse(lambda,mu);




%% loading step
for i=1:tstep
tstrainT=tstrain+dtstrain;
stiffd=scalarstiffnessd(lambda,mu,alpha,beta,omega);

% temperary increament
tsigmaT=doubledotft(stiffd,tstrainT);

tstraineT=tstrainT-omega*g.*doubledotft(inversegeneral(stiffd),eye(3));




% driving force
yd=scalardforce(tstrainT,tstraineT,alpha,beta,g);
ydo=scalardforce(tstrain,tstraine,alpha,beta,g);
% yield function
fd=scalaryieldf(yd,C0,C1,omega);

if fd<=FTOL
   tstrain=tstrainT;
   tstraine=tstraineT;
   tsigma=tsigmaT;


else
  creteria=1;  
    while creteria>0.001
        domega=scalardeltaogema(yd,ydo,C1);
        omegaT=domega+omega;
        stiffd=scalarstiffnessd(lambda,mu,alpha,beta,omegaT);
        tsigmaT=doubledotft(stiffd,tstrainT);
        tstraineT=tstrainT-omegaT*g.*doubledotft(inversegeneral(stiffd),eye(3));
        yd=scalardforce(tstrainT,tstraineT,alpha,beta,g);
        ydo=scalardforce(tstrain,tstraine,alpha,beta,g);
        fd=scalaryieldf(yd,C0,C1,omegaT);
        % omega=omegaT;
        if fd<=FTOL
         
         % creteria=norm((deltaogema(yd,ydo,C1)-domega),Inf); 
        end
        creteria=0;
        % 
    end
       tstrain=tstrainT;
       tsigma=tsigmaT;
       omega=omegaT;    
end




recordtstrain{i}=tstrain;
recordtsigma{i}=tsigma;
recordomega{i}=omega;
strainv(i)=tstrain(3,3);
sigmav(i)=tsigma(3,3);
omegav(i)=omega;




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


