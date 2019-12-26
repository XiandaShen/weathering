% function thermodynamics

%% definiction
clear;
tstrain=zeros(3,3);
dtstrain=[0 0 0;0 0 0; 0 0 0.0000001];
dtstraine=zeros(3,3);
tstraine=zeros(3,3);
dtstrainel=zeros(3,3);
tstrainel=zeros(3,3);
omega=zeros(3,3);
domega=zeros(1,3);
dtsigma=zeros(3,3);
tsigma=zeros(3,3);

% temperary properties during iteration
dtstraineT=zeros(3,3);
tstraineT=zeros(3,3);
dtstrainelT=zeros(3,3);
tstrainelT=zeros(3,3);
omegaT=zeros(3,3);
domegaT=zeros(1,3);
dtsigmaT=zeros(3,3);
tsigmaT=zeros(3,3);


tstep=100000;
FTOL=1e-6;
strainv=zeros(1,tstep);
sigmav=zeros(1,tstep);
omegav=zeros(1,tstep);

% storage
recordtstrain=cell(tstep,1);
recordtsigma=cell(tstep,1);
recordomega=cell(tstep,1);

% constants
alpha = 1.9e3;
beta = -2.4e4; 
lambda = 2.63e4;
mu = 1.75e4;
pr = 0.2; %poisson ratio

C0 = 0.001;
C1 = 5.5e-1;
B = 0;
g = 1.1e2;

stiffe=stiffnesse(lambda,mu);




%% loading step
for i=1:tstep
tstrainT=tstrain+dtstrain;
stiffd=stiffnessd(lambda,mu,alpha,beta,omega);

% temperary increament
tsigmaT=doubledotft(stiffd,tstrainT);

tstraineT=tstrainT-g.*doubledotft(inversegeneral(stiffd),omega);




% driving force
yd=dforce(tstrainT,tstraineT,alpha,beta,g);
ydo=dforce(tstrain,tstraine,alpha,beta,g);
% yield function
fd=yieldf(yd,C0,C1,omega);

if fd<=FTOL
   tstrain=tstrainT;
   tstraine=tstraineT;
   tsigma=tsigmaT;


else
  creteria=1;  
    while creteria>0.001
        domega=deltaogema(yd,ydo,C1);
        omegaT=domega+omega;
        stiffd=stiffnessd(lambda,mu,alpha,beta,omegaT);
        tsigmaT=doubledotft(stiffd,tstrainT);
        tstraineT=tstrainT-g.*doubledotft(inversegeneral(stiffd),omegaT);
        yd=dforce(tstrainT,tstraineT,alpha,beta,g);
        ydo=dforce(tstrain,tstraine,alpha,beta,g);
        fd=yieldf(yd,C0,C1,omegaT);
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
omegav(i)=omega(3,3);




end

 figure
plot(strainv,sigmav)
set(gca,'FontSize',16);
xlabel('strainv','fontsize',16);
ylabel('sigmav(MPa)','fontsize',16);
figure
plot(strainv,omegav)
set(gca,'FontSize',16);
xlabel('strainv','fontsize',16);
ylabel('omegav','fontsize',16);




