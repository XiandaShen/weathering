%  function[omega,bm,sm]=sthermodynamics(dtstraini,tstep,bmo,smo,pomega)
clear;
dtstraini=[0 0 0; 0 0 0; 0 0 0.005];
tstep=1000;
smo=3.13e4;
bmo=6.07e4;
lambda = 3.985e4;
mu = 3.13e4;
pomega=0.5;

rsigmav=cell(1,3);
romegav=cell(1,3);

%% loading step
for j=1:3
% constants
alpha = -16e3;
beta = -31e3; 
lambda=bmo-2/3*smo;
mu=smo;
pr = 0.2; %poisson ratio

C0 = 0.11;
C1 = 2.2;
B = 0;
g = -330;
    
%alpha=alpha/2*j;    
%beta=beta/2*j;      
%C0=C0/2*j;      
C1=C1/2*j; 
%lambda=lambda/2*j; 
%mu=mu/2*j; 

%% definition
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



stiffe=stiffnesse(lambda,mu);


    
    
    

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

rsigmav{j}=sigmav;
romegav{j}=omegav;

end

figure
pdf1=plot(strainv,rsigmav{1},'r')
    hold on 
    pdf2=plot(strainv,rsigmav{2},'g')
    hold on 
    pdf3=plot(strainv,rsigmav{3},'b')
    hold on 
        set(gcf, 'position', [200 200 380 300]);
set(gca,'FontSize',16);
xlabel('strainv','fontsize',16);
ylabel('sigmav(MPa)','fontsize',16);
 %    legend([pdf1,pdf2,pdf3],'\alpha=-80000MPa','\alpha=-160000MPa','\alpha=-240000MPa','Location','northwest')
 %    legend([pdf1,pdf2,pdf3],'\beta=-15500MPa','\beta=-310000MPa','\beta=-465000MPa','Location','southwest')
%     legend([pdf1,pdf2,pdf3],'C0=0.055MPa','C0=0.11MPa','C0=0.165MPa','Location','southwest')
     legend([pdf1,pdf2,pdf3],'C1=1.1MPa','C1=2.2MPa','C1=3.3MPa','Location','southwest')
%     legend([pdf1,pdf2,pdf3],'lambda=19925MPa','lambda=39850MPa','lambda=59775MPa','Location','southwest')     
%      legend([pdf1,pdf2,pdf3],'mu=15650MPa','mu=31300MPa','mu=46950MPa','Location','southwest')       
figure
pdf1=plot(strainv,romegav{1},'r')
    hold on 
    pdf2=plot(strainv,romegav{2},'g')
    hold on 
    pdf3=plot(strainv,romegav{3},'b')
    hold on 
            set(gcf, 'position', [200 200 380 300]);
set(gca,'FontSize',16);
xlabel('strainv','fontsize',16);
ylabel('omegav','fontsize',16);

%     legend([pdf1,pdf2,pdf3],'\alpha=-80000MPa','\alpha=-160000MPa','\alpha=-240000MPa','Location','northwest')
%     legend([pdf1,pdf2,pdf3],'\beta=-15500MPa','\beta=-310000MPa','\beta=-465000MPa','Location','northwest')
%     legend([pdf1,pdf2,pdf3],'C0=0.055MPa','C0=0.11MPa','C0=0.165MPa','Location','northwest')
     legend([pdf1,pdf2,pdf3],'C1=1.1MPa','C1=2.2MPa','C1=3.3MPa','Location','northwest')
%     legend([pdf1,pdf2,pdf3],'lambda=19925MPa','lambda=39850MPa','lambda=59775MPa','Location','northwest')  
%      legend([pdf1,pdf2,pdf3],'mu=15650MPa','mu=31300MPa','mu=46950MPa','Location','northwest')       