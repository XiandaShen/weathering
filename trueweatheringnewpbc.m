clear;
%% case study
tcasen=5;
for casen=5:tcasen
    clearvars -except tcasen casen
   casen
%% input variables
%phase numbers, the last one is the matrix
phasen=4;
% weathing time step
wtime=1000000;
% interval in each time step  (s)
inter=24*30*3600;    

% wrct=0;
% percentage of weathering 
wr=zeros(1,phasen);
% solid ratio
pro=[0.05 0.05 0.05 0.85];
if casen==2
   pro=[0.0333 0.0333 0.0333 0.9001]; 
end
if casen==3
   pro=[0.0167 0.0167 0.0167 0.9499]; 
end
    
% lateral stress coefficient
ks=0.5;
if casen==12
    ks=-1; 
end
if casen==13
    ks=0; 
end
if casen==14
    ks=1; 
end
if casen==15
    ks=5; 
end
if casen==16
    ks=10; 
end
if casen==20
    ks=100; 
end
% pro=[0.14 0.005 0.005 0.85];
pr=zeros(1,phasen);
% modulus 
bbm=76700;
bsm=41600;
Everm=14100;
Enu=0.33;
vbm=Everm/3/(1-2*Enu);
vsm=Everm/2/(1+Enu);
% vbm=15000;
% vsm=10000;

bv=(3*bbm-2*bsm)/2/(3*bbm+bsm);
vv=(3*vbm-2*vsm)/2/(3*vbm+vsm);



sm=zeros(1,phasen);
bm=zeros(1,phasen);
smo=3.13e4;
bmo=6.07e4;
sm(phasen)=smo;

bm(phasen)=bmo;


ov=(3*bmo-2*smo)/2/(3*bmo+smo);




% inclusions orientation
% psi=zeros(phasen,1);
% theta=zeros(phasen,1);
% phi=zeros(phasen,1);
% [1,1,1,0][0,0,0,0][0,0.5,1,0][0,5/90,0,0]
psi=pi/2.*[0,0,0,0];
theta=pi/2.*[0/90,0/90,0/90,0];
phi=pi/2.*[0,0,0,0];
if (casen==22) || (casen==7)
    theta=pi/2.*[30/90,30/90,30/90,0]; 
end
if casen==8
    theta=pi/2.*[45/90,45/90,45/90,0]; 
end
if casen==9
    theta=pi/2.*[60/90,60/90,60/90,0]; 
end
if casen==10
    theta=pi/2.*[90/90,90/90,90/90,0]; 
end
if casen==11
    theta=pi/2.*[0/90,45/90,90/90,0]; 
end

Q=cell(1,phasen);
for i=1:phasen
    Q(i)={transmatrixo(psi(i), theta(i), phi(i))};
end 

% inclusions shapes
% a=2:1:phasen+1; % oblate's radius
% c=0.5:1:phasen-0.5; % oblate's apurture
% a=[1 1 1 1 1 1 1 1 1 999999]
% c=2/3*a;
% c=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 999998.9999999]
ao=[3,3,3,1.00001];
co=[1,1,1,1];
if casen==4
   ao=[6,6,6,1.00001]; 
end
if casen==5
   ao=[9,9,9,1.00001]; 
end
if casen==6
   ao=[3,6,9,1.00001]; 
end
% a,c are initialized 
a=ao;
c=co;
% pstrain
pstrain=cell(1,phasen);
mstrain=cell(1,phasen);
lstrain=cell(1,phasen);
leta=cell(1,phasen);
letastrain=cell(1,phasen);
lvstrain=zeros(1,phasen);
fstrain=cell(wtime,2);

%% boundary conditions
% external stress
 depth=10;
 if casen==17
    depth=1; 
 end
if casen==18
    depth=100; 
end
if casen==19
    depth=1000; 
end
% change the k
tstress=[-depth*0.0196*ks 0 0; 0 -depth*0.0196*ks 0; 0 0 -depth*0.0196];
% tstress=[-depth*0.0275*ks 0 0; 0 -depth*0.0275*ks 0; 0 0 -depth*0.0275];

% external strain
tstrain=cell(1,wtime);
cbc=0;
for i=1:wtime
    tstrain(i)={zeros(3,3)};  
end  



% for complex bc 
% cbc=1;
% 
% tstress=[1234567 1234567 1234567; 1234567 1234567 1234567; 1234567 1234567 -depth*0.0275];
% [si,sj]=find(tstress<100000);
% for i=1:wtime
%     tstrain(i)={[0 0 0; 0 0 0;0 0 1234567]};  
% end  

% % for k effect bc
% keffect=0.3;
% tstress=[-keffect*depth*0.0275 0 0; 0 -keffect*depth*0.0275 0; 0 0 -depth*0.0275];

%%





% volumetric strain
tstrainv=zeros(1,wtime);

 % eigen strain
eta=zeros(1,phasen);

% matrix damage
omega=zeros(1,wtime);
damagetime=1000;

% the change of inclusions' dimension
c1=zeros(1,wtime);
c2=zeros(1,wtime);
c3=zeros(1,wtime);
a1=zeros(1,wtime);
a2=zeros(1,wtime);
a3=zeros(1,wtime);
%% weathering

for t=1:wtime

% weathering rate
 wrct=10^(-12.32)*(t/12)^(-0.603);
roughness=137.5*(t/12)^(0.1433);

for i=1:phasen
    leta(i)={zeros(3,3)};  
end 


for i=1:phasen-1
    wr(i)=wr(i)+wrct*inter*((a(i)^(3.2)+2*(a(i)*c(i))^(1.6))^(1/1.6))/a(i)/a(i)/c(i)*roughness;
 %    wr(i)=wrct*inter*((a(i)^(3.2)+2*(a(i)*c(i))^(1.6))^(1/1.6))/a(i)/a(i)/c(i);
    eta(i)=0.4*wr(i);
    leta{i}(3,3)=leta{i}(3,3)+eta(i);
    
    % chemical control
%    c(i)=c(i)*(1+eta(i));
    %
end
for i=1:phasen
    letastrain(i)={Q{i}'*leta{i}*Q{i}};  
end 


% inclusions shapes

% for i=1:phasen
% a(i)=ao(i);
% c(i)=co(i)*(1+eta(i));
% end

% modulus
% sm=1:1:phasen; %shear modulus
% bm=11:1:phasen+10; %bulk modulus
% sm=[0 0 0 0 0 0 0 0 0 2];
% bm=[0 0 0 0 0 0 0 0 0 3];

% up bound
for i=1:phasen-1
    sm(i)=(1-wr(i))*bsm+vsm*wr(i);
    bm(i)=(1-wr(i))*bbm+vbm*wr(i);
end

% phase ratio
% pr=ones(phasen,1)*0.1; 
% pr=[0.01 0.02 0.05 0.03 0.04 0.02 0.03 0.1 0.2 0.5];
prs=0;
for i=1:phasen
prs=prs+pro(i)*(1+lvstrain(i));
end
for i=1:phasen
pr(i)=pro(i)*(1+lvstrain(i))/prs;
% pr(i)=pro(i);
end
% stiffness tensor for each phase

%% calculations
pC=cell(phasen,1); 
pS=cell(phasen,1);
for i=1:phasen
    pC{i}=matrixc(bm(i),sm(i));
%     if i<10
%     pC{i}(1:3,1:3,1:3,1:3) = 0;
%     end
end

% pC{3}(1,1,1,1)=20;
% pC{3}(1,1,2,2)=6;
% pC{3}(2,2,1,1)=6;
% pC{3}(1,1,3,3)=7;
% pC{3}(2,2,3,3)=7;
% pC{3}(3,3,3,3)=10;
% pC{3}(2,2,2,2)=20;
% pC{3}(3,3,1,1)=10;
% pC{3}(3,3,2,2)=7;
% pC{3}(2,3,2,3)=8;
% pC{3}(3,2,3,2)=8;
% pC{3}(3,2,2,3)=8;
% pC{3}(2,3,3,2)=8;
% pC{3}(3,1,3,1)=8;
% pC{3}(1,3,1,3)=8;
% pC{3}(1,3,3,1)=8;
% pC{3}(3,1,1,3)=8;
% pC{3}(1,2,1,2)=7;
% pC{3}(2,1,2,1)=7;
% pC{3}(1,2,2,1)=7;
% pC{3}(2,1,1,2)=7;



% P tensor
poP=cell(phasen,1); 
pP=cell(phasen,1); 
for i=1:phasen
    poP{i}=Ptensor(a(i),c(i),bm(phasen),sm(phasen));  
    pP{i}=transmatrix(psi(i), theta(i), phi(i),poP{i});
end
% pP{10}=pP{1};
% infinite concentration tensor
pAo=cell(phasen,1); 
for i=1:phasen

    pAo{i}=inversensym2(symidendityf+doubledotff(pP{i},(pC{i}-pC{phasen})));
end
    rrr=doubledotff(pP{1},(pC{1}-pC{phasen}));
% average of infinite conentration tensor
sAo(1:3,1:3,1:3,1:3) = 0;
for i=1:phasen
    sAo=sAo+pr(i)*pAo{i};
end
% concentration tensor
pA=cell(phasen,1); 
for i=1:phasen
    pA{i}=doubledotff(pAo{i},inversensym2(sAo));
end



% homogenizaed stiffness tensor, Biot coefficient 
HC(1:3,1:3,1:3,1:3) = 0;
pB=cell(phasen,1);
for i=1:phasen
    HC=HC+pr(i)*doubledotff(pC{i},pA{i});
    pB{i}=pr(i)*pA{i};
end

% biot modulus
AAP(1:3,1:3,1:3,1:3) = 0;
for i=1:phasen
    AAP=AAP+pr(i)*doubledotff(pAo{i},pP{i});
end
ACAP(1:3,1:3,1:3,1:3) = 0;
for i=1:phasen
    ACAP=ACAP+pr(i)*(doubledotff(doubledotff((HC-pC{i}),pAo{i}),pP{i}));
end
iN=cell(phasen,phasen); % inverse of biot modulus
for i=1:phasen
    for j=1:phasen
if i~=j 
iN{i,j}=pr(i)*(-doubledotff(doubledotff((pr(j)*pA{i}),pAo{j}),pP{j})+...
    doubledotff(doubledotff((doubledotff(pA{i},AAP)-doubledotff(pAo{i},pP{i})),inversensym2(ACAP)),...
     pr(j)*(transposefour(symidendityf-pA{j})+doubledotff(doubledotff((HC-pC{j}),pAo{j}),pP{j})))); 
else
iN{i,i}=pr(i)*(doubledotff(doubledotff((symidendityf-pr(i)*pA{i}),pAo{i}),pP{i})+...
    doubledotff(doubledotff((doubledotff(pA{i},AAP)-doubledotff(pAo{i},pP{i})),inversensym2(ACAP)),...
     pr(i)*(transposefour(symidendityf-pA{i})+doubledotff(doubledotff((HC-pC{i}),pAo{i}),pP{i})))); 
end
    end
end

% D tensor
Dt=cell(phasen,phasen);
 for i=1:phasen
    for j=1:phasen
     Dt{i,j}=doubledotff((iN{i,j}/pr(i)),pC{j});    
    end
 end
  
 
 % consider the orientation
%  for i=1:phasen
%     pA{i}=transmatrix(psi(i), theta(i), phi(i),pA{i});
%     
%     for j=1:phasen 
%     Dt{i,j}=transmatrix(psi(i), theta(i), phi(i),Dt{i,j}); 
%     end
%     
%  end 
 

 % rev strain
 tempt1=zeros(3,3);
 for i=1:phasen
 tempt1=tempt1+pr(i)*doubledottf(doubledotft(pC{i},letastrain{i}),pA{i});
 end
 
 if cbc~=1
 tstrain(t)={doubledotft(inversensym2(HC),(tstress+tempt1))};
 else
 %    tempt1=zeros(3,3);
 [tstress,tstrain{t}]=bc(tstress,tstrain{t},HC,tempt1,si,sj);  

 end
 
 
 
%  % remove mechanical strain
%  if t==1
%      mtstrain=tstrain{t};
%  end
%  tstrain{t}=tstrain{t}-mtstrain;
%

 tstrainv(t)=trace(tstrain{t});
 
 % phase strain
 for j=1:phasen
  tempt1=zeros(3,3);
 for i=1:phasen
 tempt1=tempt1+doubledotft(Dt{j,i},letastrain{i});
 end
 pstrain{j}=doubledotft(pA{j},tstrain{t})+tempt1;
 
  % remove mechanical strain
%  if t==1
%      mpstrain{j}=pstrain{j};
%  end
%  pstrain{j}=pstrain{j}-mpstrain{j};
%
 
 lstrain(j)={Q{j}*pstrain{j}*(Q{j})'};

 end
 
 for j=1:phasen-1
   ctemp=co(j)*(1+lstrain{j}(3,3));
   atemp=ao(j)*sqrt((1+lstrain{j}(1,1))*(1+lstrain{j}(2,2)));
      if ctemp>0.01
        c(j)=ctemp;
      end
      if atemp>ctemp
        a(j)=atemp;
      end
 lvstrain(j)=trace(lstrain{j})/3;
 end

 % update matrix stiffness and damage
[omega(t+1),bm(phasen),sm(phasen)]=sthermodynamics2(pstrain{phasen},damagetime,bmo,smo,omega(t));


% no damage
% omega(t+1)=0;

if omega(t+1)>0.2
    omega(t+1)=0.2;
    break
end

c1(t)=c(1);
c2(t)=c(2);
c3(t)=c(3);
a1(t)=a(1);
a2(t)=a(2);
a3(t)=a(3);
    fstrain{t,2}=pstrain{4};
        fstrain{t,1}=pstrain{1};
finaltstress=tstress;
%  tstress=[-10 1234567 1234567; 1234567 1234567 1234567; 1234567 1234567 1234567];

    
end
wtime=t-1;
c1=c1(1:wtime);
c2=c2(1:wtime);
c3=c3(1:wtime);
a1=a1(1:wtime);
a2=a2(1:wtime);
a3=a3(1:wtime);
omega=omega(1:wtime);
tstrainv=tstrainv(1:wtime);
fstrain=fstrain(1:wtime,:);

for i=1:wtime
    if i>wtime/12
        break
    end
    
    fc1(i)=c1(12*i);
    fc2(i)=c2(12*i);
    fc3(i)=c3(12*i);
    fa1(i)=a1(12*i);
    fa2(i)=a2(12*i);
    fa3(i)=a3(12*i);
    fomega(i)=omega(12*i);
    ftstrainv(i)=tstrainv(12*i-11);
%    ftstrainv(i)=ftstrainv(i)-ftstrainv(1);
    cftstrainv(i)=ftstrainv(i)-ftstrainv(1);

end


save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'c1.mat'],'fc1');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'c2.mat'],'fc2');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'c3.mat'],'fc3');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'a1.mat'],'fa1');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'a2.mat'],'fa2');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'a3.mat'],'fa3');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'omega.mat'],'fomega');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'tstrainv.mat'],'ftstrainv');
save(['C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case',num2str(casen),'ctstrainv.mat'],'cftstrainv');

end

% 
% 
% figure
% plot(ftstrainv);
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% ylabel('strainv','fontsize',16);
% xlabel('time(years)','fontsize',16);
% 
% figure
% plot(cftstrainv);
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% ylabel('cstrainv','fontsize',16);
% xlabel('time(years)','fontsize',16);
% 
% 
% figure
% plot(fomega)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('omega','fontsize',16);
% 
% figure
% plot(fc1)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('c1(mm)','fontsize',16);
% 
% figure
% plot(fc2)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('c2(mm)','fontsize',16);
% 
% figure
% plot(fc3)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('c3(mm)','fontsize',16);
% figure
% plot(fa1)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('a1(mm)','fontsize',16);
% figure
% plot(fa2)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('a2(mm)','fontsize',16);
% figure
% plot(fa3)
% set(gca,'FontSize',16);
% set(gcf, 'position', [200 200 400 300]);
% xlabel('time(years)','fontsize',16);
% ylabel('a3(mm)','fontsize',16);