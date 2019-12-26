clear;
%% input variables
%phase numbers, the last one is the matrix
phasen=4;

% modulus 
% sm=1:1:phasen; %shear modulus
% bm=11:1:phasen+10; %bulk modulus
% sm=[0 0 0 0 0 0 0 0 0 2];
% bm=[0 0 0 0 0 0 0 0 0 3];
sm=[14.3 14.3 14.3 37.1];
bm=[19.29 19.29 19.29 80.634];

% inclusions orientation
psi=1:1:phasen;
theta=2:1:phasen+1;
phi=3:1:phasen+2;
% psi=zeros(phasen,1);
% theta=zeros(phasen,1);
% phi=zeros(phasen,1);

% inclusions shapes
% a=2:1:phasen+1; % oblate's radius
% c=0.5:1:phasen-0.5; % oblate's apurture
% a=[1 1 1 1 1 1 1 1 1 999999]
% c=2/3*a;
% c=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 999998.9999999]
a=[1,1,1,1];
c=[1.00001,0.7333333,0.4444,1.00001];


% phase ratio
% pr=ones(phasen,1)*0.1; 
% pr=[0.01 0.02 0.05 0.03 0.04 0.02 0.03 0.1 0.2 0.5];
pr=[0.15 0.25 0.2 0.4];
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