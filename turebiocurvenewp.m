%% for oriented
clear;
orienc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
orienc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7c1.mat');
orienc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case8c1.mat');
orienc1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case9c1.mat');
orienc1{4}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case10c1.mat');
orienc1{5}=fc1-1;

oriena1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
oriena1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7a1.mat');
oriena1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case8a1.mat');
oriena1{3}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case9a1.mat');
oriena1{4}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case10a1.mat');
oriena1{5}=(fa1-3)/3;

orienomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
orienomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7omega.mat');
orienomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case8omega.mat');
orienomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case9omega.mat');
orienomega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case10omega.mat');
orienomega{5}=fomega;

oriencftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
oriencftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7ctstrainv.mat');
oriencftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case8ctstrainv.mat');
oriencftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case9ctstrainv.mat');
oriencftstrainv{4}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case10ctstrainv.mat');
oriencftstrainv{5}=cftstrainv;

% figure
figure('Name','S Biotite orientation c1','NumberTitle','off')
cruves{1}=plot(orienc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(orienc1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(orienc1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(orienc1{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')

figure('Name','S Biotite orientation a1','NumberTitle','off')
cruves{1}=plot(oriena1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriena1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(oriena1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(oriena1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(oriena1{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','southwest')

figure('Name','S Biotite orientation omega','NumberTitle','off')
cruves{1}=plot(orienomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(orienomega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(orienomega{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(orienomega{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')


figure('Name','S Biotite orientation strainv','NumberTitle','off')
cruves{1}=plot(oriencftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriencftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(oriencftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(oriencftstrainv{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(oriencftstrainv{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')



%% for orientations with odoemeter conditions

clear;
orienc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19c1.mat');
orienc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27c1.mat');
orienc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case28c1.mat');
orienc1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case29c1.mat');
orienc1{4}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case30c1.mat');
orienc1{5}=fc1-1;

oriena1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19a1.mat');
oriena1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27a1.mat');
oriena1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case28a1.mat');
oriena1{3}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case29a1.mat');
oriena1{4}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case30a1.mat');
oriena1{5}=(fa1-3)/3;

orienomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19omega.mat');
orienomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27omega.mat');
orienomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case28omega.mat');
orienomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case29omega.mat');
orienomega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case30omega.mat');
orienomega{5}=fomega;

oriencftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19ctstrainv.mat');
oriencftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27ctstrainv.mat');
oriencftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case28ctstrainv.mat');
oriencftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case29ctstrainv.mat');
oriencftstrainv{4}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case30ctstrainv.mat');
oriencftstrainv{5}=cftstrainv;

% figure
figure('Name','O Biotite orientation c1','NumberTitle','off')
cruves{1}=plot(orienc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(orienc1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(orienc1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(orienc1{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
set(gca, 'XScale', 'log')
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')

figure('Name','O Biotite orientation a1','NumberTitle','off')
cruves{1}=plot(oriena1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriena1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(oriena1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(oriena1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(oriena1{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','southeast')

figure('Name','O Biotite orientation omega','NumberTitle','off')
cruves{1}=plot(orienomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(orienomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(orienomega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(orienomega{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(orienomega{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')


figure('Name','O Biotite orientation strainv','NumberTitle','off')
cruves{1}=plot(oriencftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(oriencftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(oriencftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(oriencftstrainv{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(oriencftstrainv{5},'-m','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5}],...
    '(\theta=0^o)','(\theta=30^o)','(\theta=45^o)','(\theta=60^o)','(\theta=90^o)','Location','northwest')









%% for abundance
clear;
abdc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
abdc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case2c1.mat');
abdc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case3c1.mat');
abdc1{3}=fc1-1;

abda1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
abda1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case2a1.mat');
abda1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case3a1.mat');
abda1{3}=(fa1-3)/3;

abdomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
abdomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case2omega.mat');
abdomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case3omega.mat');
abdomega{3}=fomega;


abdcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
abdcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case2ctstrainv.mat');
abdcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case3ctstrainv.mat');
abdcftstrainv{3}=cftstrainv;


% figure
figure('Name','S Biotite abundance c1','NumberTitle','off')
cruves{1}=plot(abdc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdc1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','southeast')


figure('Name','S Biotite abundance a1','NumberTitle','off')
cruves{1}=plot(abda1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abda1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abda1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','southwest')

figure('Name','S Biotite abundance omega','NumberTitle','off')
cruves{1}=plot(abdomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdomega{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','northwest')

figure('Name','S Biotite abundance strainv','NumberTitle','off')
cruves{1}=plot(abdcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdcftstrainv{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','northwest')

%% for abundance OD
clear;
abdc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31c1.mat');
abdc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case32c1.mat');
abdc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case33c1.mat');
abdc1{3}=fc1-1;

abda1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31a1.mat');
abda1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case32a1.mat');
abda1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case33a1.mat');
abda1{3}=(fa1-3)/3;

abdomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31omega.mat');
abdomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case32omega.mat');
abdomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case33omega.mat');
abdomega{3}=fomega;


abdcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31ctstrainv.mat');
abdcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case32ctstrainv.mat');
abdcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case33ctstrainv.mat');
abdcftstrainv{3}=cftstrainv;


% figure
figure('Name','O Biotite abundance c1','NumberTitle','off')
cruves{1}=plot(abdc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdc1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','southeast')


figure('Name','O Biotite abundance a1','NumberTitle','off')
cruves{1}=plot(abda1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abda1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abda1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','southeast')

figure('Name','O Biotite abundance omega','NumberTitle','off')
cruves{1}=plot(abdomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdomega{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','northwest')

figure('Name','O Biotite abundance strainv','NumberTitle','off')
cruves{1}=plot(abdcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(abdcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(abdcftstrainv{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    '15%','10%','5%','Location','northwest')


%% for aspect ratio S
clear;
arc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
arc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case4c1.mat');
arc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case5c1.mat');
arc1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case6c1.mat');
arc1{4}=fc1-1;


ara1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
ara1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case4a1.mat');
ara1{2}=(fa1-6)/6;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case5a1.mat');
ara1{3}=(fa1-9)/9;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case6a1.mat');
ara1{4}=(fa1-3)/3;

aromega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
aromega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case4omega.mat');
aromega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case5omega.mat');
aromega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case6omega.mat');
aromega{4}=fomega;

arcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
arcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case4ctstrainv.mat');
arcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case5ctstrainv.mat');
arcftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case6ctstrainv.mat');
arcftstrainv{4}=cftstrainv;

% figure
figure('Name','S Biotite aspect ratio c1','NumberTitle','off')
cruves{1}=plot(arc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arc1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(arc1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
set(gca, 'XScale', 'log')
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

figure('Name','S Biotite aspect ratio a1','NumberTitle','off')
cruves{1}=plot(ara1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(ara1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(ara1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(ara1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
set(gca, 'XScale', 'log')
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

figure('Name','S Biotite aspect ratio omega','NumberTitle','off')
cruves{1}=plot(aromega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(aromega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(aromega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(aromega{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

figure('Name','S Biotite aspect ratio strainv','NumberTitle','off')
cruves{1}=plot(arcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arcftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(arcftstrainv{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

%% for aspect ratio O
clear;
arc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31c1.mat');
arc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case34c1.mat');
arc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case35c1.mat');
arc1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case36c1.mat');
arc1{4}=fc1-1;


ara1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31a1.mat');
ara1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case34a1.mat');
ara1{2}=(fa1-6)/6;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case35a1.mat');
ara1{3}=(fa1-9)/9;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case36a1.mat');
ara1{4}=(fa1-3)/3;

aromega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31omega.mat');
aromega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case34omega.mat');
aromega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case35omega.mat');
aromega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case36omega.mat');
aromega{4}=fomega;

arcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31ctstrainv.mat');
arcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case34ctstrainv.mat');
arcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case35ctstrainv.mat');
arcftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case36ctstrainv.mat');
arcftstrainv{4}=cftstrainv;

% figure
figure('Name','O Biotite aspect ratio c1','NumberTitle','off')
cruves{1}=plot(arc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arc1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(arc1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
set(gca, 'XScale', 'log')
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

figure('Name','O Biotite aspect ratio a1','NumberTitle','off')
cruves{1}=plot(ara1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(ara1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(ara1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(ara1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
set(gca, 'XScale', 'log')
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','southwest')

figure('Name','O Biotite aspect ratio omega','NumberTitle','off')
cruves{1}=plot(aromega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(aromega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(aromega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(aromega{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

figure('Name','O Biotite aspect ratio strainv','NumberTitle','off')
cruves{1}=plot(arcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(arcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(arcftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(arcftstrainv{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(3,3,3)','(6,6,6)','(9,9,9)','(3,6,9)','Location','northwest')

%% for ke 
clear;
kec1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case12c1.mat');
kec1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case13c1.mat');
kec1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
kec1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case14c1.mat');
kec1{4}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case15c1.mat');
kec1{5}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case16c1.mat');
kec1{6}=fc1-1;

kea1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case12a1.mat');
kea1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case13a1.mat');
kea1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
kea1{3}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case14a1.mat');
kea1{4}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case15a1.mat');
kea1{5}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case16a1.mat');
kea1{6}=(fa1-3)/3;

keomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case12omega.mat');
keomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case13omega.mat');
keomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
keomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case14omega.mat');
keomega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case15omega.mat');
keomega{5}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case16omega.mat');
keomega{6}=fomega;

kecftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case12ctstrainv.mat');
kecftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case13ctstrainv.mat');
kecftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
kecftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case14ctstrainv.mat');
kecftstrainv{4}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case15ctstrainv.mat');
kecftstrainv{5}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case16ctstrainv.mat');
kecftstrainv{6}=cftstrainv;

% figure
figure('Name','Biotite ke c1','NumberTitle','off')
cruves{1}=plot(kec1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(kec1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(kec1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(kec1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(kec1{5},'-m','LineWidth',1);
hold on
cruves{6}=plot(kec1{6},'-c','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5},cruves{6}],...
    'k=-1','k=0','k=0.5','k=1','k=5','k=10','Location','northwest')

figure('Name','Biotite ke a1','NumberTitle','off')
cruves{1}=plot(kea1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(kea1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(kea1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(kea1{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(kea1{5},'-m','LineWidth',1);
hold on
cruves{6}=plot(kea1{6},'-c','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5},cruves{6}],...
    'k=-1','k=0','k=0.5','k=1','k=5','k=10','Location','northwest')

figure('Name','Biotite ke omega','NumberTitle','off')
cruves{1}=plot(keomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(keomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(keomega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(keomega{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(keomega{5},'-m','LineWidth',1);
hold on
cruves{6}=plot(keomega{6},'-c','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5},cruves{6}],...
    'k=-1','k=0','k=0.5','k=1','k=5','k=10','Location','northwest')

figure('Name','Biotite ke strainv','NumberTitle','off')
cruves{1}=plot(kecftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(kecftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(kecftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(kecftstrainv{4},'-g','LineWidth',1);
hold on 
cruves{5}=plot(kecftstrainv{5},'-m','LineWidth',1);
hold on
cruves{6}=plot(kecftstrainv{6},'-c','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4},cruves{5},cruves{6}],...
    'k=-1','k=0','k=0.5','k=1','k=5','k=10','Location','northwest')

%% for depth S
clear;
depc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
depc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case17c1.mat');
depc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case18c1.mat');
depc1{3}=fc1-1;

depa1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
depa1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case17a1.mat');
depa1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case18a1.mat');
depa1{3}=(fa1-3)/3;

depomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
depomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case17omega.mat');
depomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case18omega.mat');
depomega{3}=fomega;


depcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
depcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case17ctstrainv.mat');
depcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case18ctstrainv.mat');
depcftstrainv{3}=cftstrainv;


% figure
figure('Name','S Biotite depth c1','NumberTitle','off')
cruves{1}=plot(depc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depc1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')


figure('Name','S Biotite depth a1','NumberTitle','off')
cruves{1}=plot(depa1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depa1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depa1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','southwest')

figure('Name','S Biotite depth omega','NumberTitle','off')
cruves{1}=plot(depomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depomega{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')

figure('Name','S Biotite depth strainv','NumberTitle','off')
cruves{1}=plot(depcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depcftstrainv{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')

%% for depth O
clear;
depc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31c1.mat');
depc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case37c1.mat');
depc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case38c1.mat');
depc1{3}=fc1-1;

depa1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31a1.mat');
depa1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case37a1.mat');
depa1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case38a1.mat');
depa1{3}=(fa1-3)/3;

depomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31omega.mat');
depomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case37omega.mat');
depomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case38omega.mat');
depomega{3}=fomega;


depcftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case31ctstrainv.mat');
depcftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case37ctstrainv.mat');
depcftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case38ctstrainv.mat');
depcftstrainv{3}=cftstrainv;


% figure
figure('Name','O Biotite depth c1','NumberTitle','off')
cruves{1}=plot(depc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depc1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','southeast')


figure('Name','O Biotite depth a1','NumberTitle','off')
cruves{1}=plot(depa1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depa1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depa1{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')

figure('Name','O Biotite depth omega','NumberTitle','off')
cruves{1}=plot(depomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depomega{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')

figure('Name','O Biotite depth strainv','NumberTitle','off')
cruves{1}=plot(depcftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(depcftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(depcftstrainv{3},'-b','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
set(gca, 'XScale', 'log')
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3}],...
    'Depth=20m','Depth=200m','Depth=2000m','Location','northwest')

%% for boundary conditions
clear;
bcc1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
bcc1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7c1.mat');
bcc1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19c1.mat');
bcc1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27c1.mat');
bcc1{4}=fc1-1;


bca1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
bca1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7a1.mat');
bca1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19a1.mat');
bca1{3}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27a1.mat');
bca1{4}=(fa1-3)/3;

bcomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
bcomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7omega.mat');
bcomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19omega.mat');
bcomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27omega.mat');
bcomega{4}=fomega;

bccftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
bccftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7ctstrainv.mat');
bccftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case19ctstrainv.mat');
bccftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case27ctstrainv.mat');
bccftstrainv{4}=cftstrainv;

% figure
figure('Name','Biotite bc c1','NumberTitle','off')
cruves{1}=plot(bcc1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(bcc1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(bcc1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(bcc1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k=0.5','(0,30,0); k=0.5','(0,0,0); Oedometer','(0,30,0); Oedometer','Location','southeast')

figure('Name','Biotite bc a1','NumberTitle','off')
cruves{1}=plot(bca1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(bca1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(bca1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(bca1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k=0.5','(0,30,0); k=0.5','(0,0,0); Oedometer','(0,30,0); Oedometer','Location','northwest')

figure('Name','Biotite bc omega','NumberTitle','off')
cruves{1}=plot(bcomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(bcomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(bcomega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(bcomega{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k=0.5','(0,30,0); k=0.5','(0,0,0); Oedometer','(0,30,0); Oedometer','Location','southeast')

figure('Name','Biotite bc strainv','NumberTitle','off')
cruves{1}=plot(bccftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(bccftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(bccftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(bccftstrainv{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k=0.5','(0,30,0); k=0.5','(0,0,0); Oedometer','(0,30,0); Oedometer','Location','southeast')

%% for anisotropic k conditions
clear;
akec1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1c1.mat');
akec1{1}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7c1.mat');
akec1{2}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case21c1.mat');
akec1{3}=fc1-1;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case22c1.mat');
akec1{4}=fc1-1;


akea1=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1a1.mat');
akea1{1}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7a1.mat');
akea1{2}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case21a1.mat');
akea1{3}=(fa1-3)/3;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case22a1.mat');
akea1{4}=(fa1-3)/3;

akeomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1omega.mat');
akeomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7omega.mat');
akeomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case21omega.mat');
akeomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case22omega.mat');
akeomega{4}=fomega;

akecftstrainv=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case1ctstrainv.mat');
akecftstrainv{1}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case7ctstrainv.mat');
akecftstrainv{2}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case21ctstrainv.mat');
akecftstrainv{3}=cftstrainv;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case22ctstrainv.mat');
akecftstrainv{4}=cftstrainv;

% figure
figure('Name','Biotite ake c1','NumberTitle','off')
cruves{1}=plot(akec1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(akec1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(akec1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(akec1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_c','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k_1,k_2=0.5','(0,30,0); k_1,k_2=0.5','(0,0,0); k_1=-1 ,k_2=10','(0,30,0); k_1=-1 ,k_2=10','Location','southeast')

figure('Name','Biotite ake a1','NumberTitle','off')
cruves{1}=plot(akea1{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(akea1{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(akea1{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(akea1{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_r','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k_1,k_2=0.5','(0,30,0); k_1,k_2=0.5','(0,0,0); k_1=-1 ,k_2=10','(0,30,0); k_1=-1 ,k_2=10','Location','southeast')

figure('Name','Biotite ake omega','NumberTitle','off')
cruves{1}=plot(akeomega{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(akeomega{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(akeomega{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(akeomega{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('Omega','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k_1,k_2=0.5','(0,30,0); k_1,k_2=0.5','(0,0,0); k_1=-1 ,k_2=10','(0,30,0); k_1=-1 ,k_2=10','Location','southeast')

figure('Name','Biotite ake strainv','NumberTitle','off')
cruves{1}=plot(akecftstrainv{1},'-k','LineWidth',1);
hold on
cruves{2}=plot(akecftstrainv{2},'-r','LineWidth',1);
hold on 
cruves{3}=plot(akecftstrainv{3},'-b','LineWidth',1);
hold on 
cruves{4}=plot(akecftstrainv{4},'-g','LineWidth',1);
hold on 
set(gcf, 'position', [200 200 400 300]);
set(gca,'FontSize',18)
xlabel('Time (years)','fontsize',18)
ylabel('\epsilon_v','fontsize',18)
legend([cruves{1},cruves{2},cruves{3},cruves{4}],...
    '(0,0,0); k_1,k_2=0.5','(0,30,0); k_1,k_2=0.5','(0,0,0); k_1=-1 ,k_2=10','(0,30,0); k_1=-1 ,k_2=10','Location','southeast')
