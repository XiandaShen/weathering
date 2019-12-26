clear;
%% input variables
%phase numbers, the last one is the matrix
phasen=4;
% weathing time step
wtime=7000;
% interval in each time step  (s)
inter=24*365*3600;    
% weathering rate
 wrct=2.23e-13;
% wrct=0;
% percentage of weathering 
wr=zeros(1,phasen);
twr=zeros(1,phasen);
% solid ratio
pro=[0.05 0.05 0.05 0.85];
% pro=[0.14 0.005 0.005 0.85];
pr=zeros(1,phasen);
% modulus 
bbm=23260;
bsm=11360;
vbm=15000;
vsm=10000;

sm=zeros(1,phasen);
bm=zeros(1,phasen);
sm(phasen)=17500;
smo=17500;
bm(phasen)=38000;
bmo=38000;
% inclusions orientation
% psi=zeros(phasen,1);
% theta=zeros(phasen,1);
% phi=zeros(phasen,1);
% [1,1,1,0][0,0,0,0][0,0.5,1,0]
psi=pi/2.*[0,0,0,0];
theta=pi/2.*[0,0,0,0];
phi=pi/2.*[0,0,0,0];
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
ao=[10,6,3,1.00001];
co=[1,1,1,1];

% a,c are initialized 
a=ao;
c=co;
% pstrain
pstrain=cell(1,phasen);
matrixstrain=[0 0 0; 0 0 0; 0 0 0];
mstrain=cell(1,phasen);
lstrain=cell(1,phasen);
leta=cell(1,phasen);
letastrain=cell(1,phasen);
lvstrain=zeros(1,phasen);
% external stress
tstress=[-10 0 0; 0 -10 0; 0 0 -10];
dtstress=[0 0 0; 0 0 0; 0 0 0];
% external strain
tstrain=cell(1,wtime);
ftstrain=cell(1,wtime);
for i=1:wtime
    tstrain(i)={zeros(3,3)};  
    ftstrain(i)={zeros(3,3)};
end  

% volumetric strain
tstrainv=zeros(1,wtime);
ftstrainv=zeros(1,wtime);
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




for i=1:phasen
    leta(i)={zeros(3,3)};  
end 


for i=1:phasen-1
 
     wr(i)=wrct*inter*((a(i)^(3.2)+2*(a(i)*c(i))^(1.6))^(1/1.6))/a(i)/a(i)/c(i);
     twr(i)=twr(i)+wrct*inter*((a(i)^(3.2)+2*(a(i)*c(i))^(1.6))^(1/1.6))/a(i)/a(i)/c(i);
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
    sm(i)=(1-twr(i))*bsm+vsm*twr(i);
    bm(i)=(1-twr(i))*bbm+vbm*twr(i);
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
    pAo{i}=inversegeneral(symidendityf+doubledotff(pP{i},(pC{i}-pC{phasen})));
    pS{i}=doubledotff(pP{i},(pC{i}-pC{phasen}));
end
% average of infinite conentration tensor
sAo(1:3,1:3,1:3,1:3) = 0;
for i=1:phasen
    sAo=sAo+pr(i)*pAo{i};
end
% concentration tensor
pA=cell(phasen,1); 
for i=1:phasen
    pA{i}=doubledotff(pAo{i},inversegeneral(sAo));
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
    doubledotff(doubledotff((doubledotff(pA{i},AAP)-doubledotff(pAo{i},pP{i})),inversegeneral(ACAP)),...
     pr(j)*(transposefour(symidendityf-pA{j})+doubledotff(doubledotff((HC-pC{j}),pAo{j}),pP{j})))); 
else
iN{i,i}=pr(i)*(doubledotff(doubledotff((symidendityf-pr(i)*pA{i}),pAo{i}),pP{i})+...
    doubledotff(doubledotff((doubledotff(pA{i},AAP)-doubledotff(pAo{i},pP{i})),inversegeneral(ACAP)),...
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
 
 % rev strain
 tempt1=zeros(3,3);
 for i=1:phasen
 tempt1=tempt1+pr(i)*doubledottf(doubledotft(pC{i},letastrain{i}),pA{i});
 end
 
 if t==1
 tstrain(t)={doubledotft(inversegeneral(HC),(tstress+tempt1))};
 end
 
 if t>1
 tstrain(t)={doubledotft(inversegeneral(HC),(dtstress+tempt1))};
 end
 
 
 if t>1
 ftstrain(t)={ftstrain{t-1}+tstrain{t}};
 else 
    ftstrain(t)=tstrain(t);
 end
%  % remove mechanical strain
%  if t==1
%      mtstrain=tstrain{t};
%  end
%  tstrain{t}=tstrain{t}-mtstrain;
%

 ftstrainv(t)=trace(ftstrain{t})/3;
 
 % phase strain
 for j=1:phasen
  tempt1=zeros(3,3);
 for i=1:phasen
 tempt1=tempt1+doubledotft(Dt{j,i},letastrain{i});
 end
 pstrain{j}=doubledotft(pA{i},tstrain{t})+tempt1;
 
  % remove mechanical strain
%  if t==1
%      mpstrain{j}=pstrain{j};
%  end
%  pstrain{j}=pstrain{j}-mpstrain{j};
%
 
 lstrain(j)={Q{j}*pstrain{j}*(Q{j})'};

 end
 
 for j=1:phasen-1
   ctemp=c(j)*(1+lstrain{j}(3,3));
   atemp=a(j)*sqrt((1+lstrain{j}(1,1))*(1+lstrain{j}(2,2)));
      if ctemp>0.01
        c(j)=ctemp;
      end
      if atemp>ctemp
        a(j)=atemp;
      end
 lvstrain(j)=trace(lstrain{j})/3;
 end
 
 matrixstrain=matrixstrain+pstrain{phasen};
 
 % update matrix stiffness and damage
[omega(t+1),bm(phasen),sm(phasen)]=sthermodynamics(matrixstrain,damagetime,bmo,smo,omega(t));
% no damage
% omega(t+1)=0;

if omega(t+1)>0.5
    omega(t+1)=0.5;
    break
end

c1(t)=c(1);
c2(t)=c(2);
c3(t)=c(3);
a1(t)=a(1);
a2(t)=a(2);
a3(t)=a(3);
end


figure
plot(ftstrainv);
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
ylabel('strainv','fontsize',16);
xlabel('time(years)','fontsize',16);

figure
plot(omega)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('omega','fontsize',16);

figure
plot(c1)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('c1(mm)','fontsize',16);


figure
plot(a1)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('a1(mm)','fontsize',16);


figure
plot(a2)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('a2(mm)','fontsize',16);


figure
plot(a3)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('a3(mm)','fontsize',16);

figure
plot(c2)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('c2(mm)','fontsize',16);

figure
plot(c3)
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',16);
xlabel('time(years)','fontsize',16);
ylabel('c3(mm)','fontsize',16);

