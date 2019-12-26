%% for oriented
clear;
orienc1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c1.mat');
orienc1{1}=fc1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10c1.mat');
orienc1{2}=fc1;


orienc2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c2.mat');
orienc2{1}=fc2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10c2.mat');
orienc2{2}=fc2;


orienc3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c3.mat');
orienc3{1}=fc3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10c3.mat');
orienc3{2}=fc3;



oriena1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a1.mat');
oriena1{1}=fa1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10a1.mat');
oriena1{2}=fa1;





oriena2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a2.mat');
oriena2{1}=fa2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10a2.mat');
oriena2{2}=fa2;


oriena3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a3.mat');
oriena3{1}=fa3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10a3.mat');
oriena3{2}=fa3;


orienomega=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10omega.mat');
orienomega{1}=fomega;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10omega.mat');
orienomega{2}=fomega;




orientcfstrainv=cell(1,2);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10cftstrainv.mat');
oriencftstrainv{1}=cftstrainv;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o90b15r10cftstrainv.mat');
oriencftstrainv{2}=cftstrainv;


figure('Name','Biotite orientation c1','NumberTitle','off')
cruves{1}=plot(orienc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienc1{2},'-r','LineWidth',1);
hold on 

set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('c1 (mm)','fontsize',18)
legend([cruves{1},cruves{2}],'(0^o,0^o,0^o)','(90^o,90^o,90^o)','Location','southeast')

figure('Name','Biotite orientation a1','NumberTitle','off')
cruves{1}=plot(oriena1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriena1{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('a1 (mm)','fontsize',18)
legend([cruves{1},cruves{2}],'(0^o,0^o,0^o)','(90^o,90^o,90^o)','Location','northeast')

figure('Name','Biotite orientation omega','NumberTitle','off')
cruves{1}=plot(orienomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienomega{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\Omega','fontsize',18)
legend([cruves{1},cruves{2}],'(0^o,0^o,0^o)','(90^o,90^o,90^o)','Location','southeast')

figure('Name','Biotite orientation tstrainv','NumberTitle','off')
cruves{1}=plot(oriencftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriencftstrainv{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_{cv}','fontsize',18)
legend([cruves{1},cruves{2}],'(0^o,0^o,0^o)','(90^o,90^o,90^o)','Location','southeast')


%% for abundance

abdc1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10c1.mat');
abdc1{1}=fc1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c1.mat');
abdc1{2}=fc1;


abdc2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10c2.mat');
abdc2{1}=fc2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c2.mat');
abdc2{2}=fc2;


abdc3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10c3.mat');
abdc3{1}=fc3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c3.mat');
abdc3{2}=fc3;



abda1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10a1.mat');
abda1{1}=fa1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a1.mat');
abda1{2}=fa1;


abda2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10a2.mat');
abda2{1}=fa2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a2.mat');
abda2{2}=fa2;


abda3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10a3.mat');
abda3{1}=fa3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a3.mat');
abda3{2}=fa3;


abdomega=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10omega.mat');
abdomega{1}=fomega;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10omega.mat');
abdomega{2}=fomega;

abdcftstrainv=cell(1,2);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b10r10cftstrainv.mat');
abdcftstrainv{1}=cftstrainv;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10cftstrainv.mat');
abdcftstrainv{2}=cftstrainv;


figure('Name','Biotite abundance c1','NumberTitle','off')
cruves{1}=plot(abdc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdc1{2},'-r','LineWidth',1);
hold on 

set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('c1 (mm)','fontsize',18)
legend([cruves{1},cruves{2}],'10%','15%','Location','southeast')

figure('Name','Biotite abundance a1','NumberTitle','off')
cruves{1}=plot(abda1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abda1{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('a1 (mm)','fontsize',18)
legend([cruves{1},cruves{2}],'10%','15%','Location','southeast')

figure('Name','Biotite abundance omega','NumberTitle','off')
cruves{1}=plot(abdomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdomega{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\Omega','fontsize',18)
legend([cruves{1},cruves{2}],'10%','15%','Location','southeast')

figure('Name','Biotite abundance tstrainv','NumberTitle','off')
cruves{1}=plot(abdcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdcftstrainv{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_{cv}','fontsize',18)
legend([cruves{1},cruves{2}],'10%','15%','Location','southeast')



%% for Aspect ratio

arc1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3c1.mat');
arc1{1}=fc1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rmc1.mat');
arc1{2}=fc1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c1.mat');
arc1{3}=fc1;


arc2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3c2.mat');
arc2{1}=fc2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rmc2.mat');
arc2{2}=fc2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c2.mat');
arc2{3}=fc2;


arc3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3c3.mat');
arc3{1}=fc3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rmc3.mat');
arc3{2}=fc3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10c3.mat');
arc3{3}=fc3;

ara1=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3a1.mat');
ara1{1}=fa1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rma1.mat');
ara1{2}=fa1;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a1.mat');
ara1{3}=fa1;

ara2=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3a2.mat');
ara2{1}=fa2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rma2.mat');
ara2{2}=fa2;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a2.mat');
ara2{3}=fa2;

ara3=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3a3.mat');
ara3{1}=fa3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rma3.mat');
ara3{2}=fa3;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10a3.mat');
ara3{3}=fa3;

aromega=cell(1,3);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3omega.mat');
aromega{1}=fomega;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rmomega.mat');
aromega{2}=fomega;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10omega.mat');
aromega{3}=fomega;

arcftstrainv=cell(1,2);
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r3cftstrainv.mat');
arcftstrainv{1}=cftstrainv;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15rmcftstrainv.mat');
arcftstrainv{2}=cftstrainv;
load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/o0b15r10cftstrainv.mat');
arcftstrainv{3}=cftstrainv;

figure('Name','Biotite aspect ratio c1','NumberTitle','off')
cruves{1}=plot(arc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arc1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('c1 (mm)','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],'1/3 1/3 1/3','1/3 1/5 1/10','1/10 1/10 1/10','Location','southeast')

figure('Name','Biotite aspect ratio a1','NumberTitle','off')
cruves{3}=plot(ara1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('a1 (mm)','fontsize',18)
legend([cruves{3}],'1/10 1/10 1/10','Location','southeast')

figure('Name','Biotite aspect ratio a1','NumberTitle','off')
cruves{1}=plot(ara1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(ara1{2},'-r','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('a1 (mm)','fontsize',18)
legend([cruves{1},cruves{2}],'1/3 1/3 1/3','1/3 1/5 1/10','Location','southeast')


figure('Name','Biotite aspect ratio omega','NumberTitle','off')
cruves{1}=plot(aromega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(aromega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(aromega{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],'1/3 1/3 1/3','1/3 1/5 1/10','1/10 1/10 1/10','Location','southeast')

figure('Name','Biotite aspect ratio tstrainv','NumberTitle','off')
cruves{1}=plot(arcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arcftstrainv{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_{cv}','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],'1/3 1/3 1/3','1/3 1/5 1/10','1/10 1/10 1/10','Location','southeast')


% %% for stress conditions
% stressc1=cell(1,4);
% stressa1=cell(1,4);
% stressomega=cell(1,4);
% stressev=cell(1,4);
% 
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/noc1.mat');
% stressc1{1}=c1;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/ic1.mat');
% stressc1{2}=c1;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/uc1.mat');
% stressc1{3}=c1;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/odc1.mat');
% stressc1{4}=c1;
% 
% 
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/noa1.mat');
% stressa1{1}=a1;
% tp=a1(1);
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/ia1.mat');
% tp2=a1(1)-tp;
% stressa1{2}=a1-tp2;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/ua1.mat');
% tp2=a1(1)-tp;
% stressa1{3}=a1-tp2;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/oda1.mat');
% tp2=a1(1)-tp;
% stressa1{4}=a1-tp2;
% 
% 
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/noomega.mat');
% stressomega{1}=omega;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/iomega.mat');
% stressomega{2}=omega;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/uomega.mat');
% stressomega{3}=omega;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/odomega.mat');
% stressomega{4}=omega;
% 
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/notstrainv.mat');
% stressev{1}=tstrainv;
% tp=tstrainv(1);
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/itstrainv.mat');
% tp2=tstrainv(1)-tp;
% stressev{2}=tstrainv-tp2;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/utstrainv.mat');
% tp2=tstrainv(1)-tp;
% stressev{3}=tstrainv-tp2;
% load('/Users/caihejushi/Documents/academic/PHD/pressure_thermal/code/odtstrainv.mat');
% tp2=tstrainv(1)-tp;
% stressev{4}=tstrainv-tp2;
% 
% 
% figure('Name','Biotite stress conditions c1','NumberTitle','off')
% cruves{1}=plot(stressc1{1},'-k','LineWidth',1);
% hold on
% cruves{2}=plot(stressc1{2},'-r','LineWidth',1);
% hold on 
% cruves{3}=plot(stressc1{3},'-b','LineWidth',1);
% hold on
% cruves{4}=plot(stressc1{4},'-g','LineWidth',1);
% hold on 
% set(gcf, 'position', [200 200 400 300]);
% set(gca,'FontSize',18)
% xlabel('Time (years)','fontsize',18)
% ylabel('c1 (mm)','fontsize',18)
% legend([cruves{1},cruves{2},cruves{3},cruves{4}],'no external stress','isotropic',...
%     'uniaxial','oedometer','Location','southeast')
% 
% figure('Name','Biotite stress conditions a1','NumberTitle','off')
% cruves{1}=plot(stressa1{1},'-k','LineWidth',1);
% hold on
% cruves{2}=plot(stressa1{2},'-r','LineWidth',1);
% hold on 
% cruves{3}=plot(stressa1{3},'-b','LineWidth',1);
% hold on
% cruves{4}=plot(stressa1{4},'-g','LineWidth',1);
% hold on 
% set(gcf, 'position', [200 200 400 300]);
% set(gca,'FontSize',18)
% ylim([9.99 10.01])
% xlabel('Time (years)','fontsize',18)
% ylabel('a1(mm)','fontsize',18)
% legend([cruves{1},cruves{2},cruves{3},cruves{4}],'no external stress','isotropic',...
%     'uniaxial','oedometer','Location','northwest')
% 
% figure('Name','Biotite stress conditions omega','NumberTitle','off')
% cruves{1}=plot(stressomega{1},'-k','LineWidth',1);
% hold on
% cruves{2}=plot(stressomega{2},'-r','LineWidth',1);
% hold on 
% cruves{3}=plot(stressomega{3},'-b','LineWidth',1);
% hold on
% cruves{4}=plot(stressomega{4},'-g','LineWidth',1);
% hold on 
% set(gcf, 'position', [200 200 400 300]);
% set(gca,'FontSize',18)
% xlabel('Time (years)','fontsize',18)
% ylabel('\Omega','fontsize',18)
% legend([cruves{1},cruves{2},cruves{3},cruves{4}],'no external stress','isotropic',...
%     'uniaxial','oedometer','Location','northwest')
% 
% figure('Name','Biotite stress conditions tstrain','NumberTitle','off')
% cruves{1}=plot(stressev{1},'-k','LineWidth',1);
% hold on
% cruves{2}=plot(stressev{2},'-r','LineWidth',1);
% hold on 
% cruves{3}=plot(stressev{3},'-b','LineWidth',1);
% hold on
% cruves{4}=plot(stressev{4},'-g','LineWidth',1);
% hold on 
% set(gcf, 'position', [200 200 400 300]);
% set(gca,'FontSize',18)
% xlabel('Time (years)','fontsize',18)
% ylabel('\epsilon_v','fontsize',18)
% legend([cruves{1},cruves{2},cruves{3},cruves{4}],'no external stress','isotropic',...
%     'uniaxial','oedometer','Location','southeast')
% 
% 
% 
% % cruves{1}=plot(rt,cvrs{1},'-k','LineWidth',1);
% % hold on
% % cruves{2}=plot(rt,cvrl{1},'--k','LineWidth',1);
% % hold on 
% % cruves{3}=plot(rt,cvrs{2},'-r','LineWidth',1);
% % hold on
% % cruves{4}=plot(rt,cvrl{2},'--r','LineWidth',1);
% % hold on 
% 
% 
% 
