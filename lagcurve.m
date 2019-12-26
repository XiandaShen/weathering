
%% for orientations with odoemeter conditions

clear;

orienomega=cell(1,10);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case69omega.mat');
orienomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case70omega.mat');
orienomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case71omega.mat');
orienomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case72omega.mat');
orienomega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case73omega.mat');
orienomega{5}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case74omega.mat');
orienomega{6}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case75omega.mat');
orienomega{7}=fomega;

tlag=zeros(7,1);
for i=1:7
    for j=1:10000000
        if orienomega{i}(j)>0
            tlag(i)=j;
            break;
        end
    end    
end
tlagx=[0;15;30;45;60;75;90];

% figure
figure('Name','O Biotite orientation tlag','NumberTitle','off')
cruves{1}=plot(tlagx,tlag,'ok','LineWidth',1,'MarkerSize',8);
hold on
set(gcf, 'position', [200 200 600 500]);
set(gca,'FontSize',18)
xlabel('\theta (degree)','fontsize',18)
ylabel('t_{lag} (years)','fontsize',18)


%% for abundance
clear;

abdomega=cell(1,16);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case51omega.mat');
abdomega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case52omega.mat');
abdomega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case53omega.mat');
abdomega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case54omega.mat');
abdomega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case55omega.mat');
abdomega{5}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case56omega.mat');
abdomega{6}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case57omega.mat');
abdomega{7}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case58omega.mat');
abdomega{8}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case81omega.mat');
abdomega{9}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case82omega.mat');
abdomega{10}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case83omega.mat');
abdomega{11}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case84omega.mat');
abdomega{12}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case85omega.mat');
abdomega{13}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case86omega.mat');
abdomega{14}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case87omega.mat');
abdomega{15}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case88omega.mat');
abdomega{16}=fomega;


tlag=zeros(16,1);
for i=1:16
    for j=1:10000000
        if abdomega{i}(j)>0
            tlag(i)=j;
            break;
        end
    end    
end
tlagx=[3;5;7;9;11;13;15;17];

% figure
figure('Name','O Biotite abundance tlag','NumberTitle','off')
cruves{1}=plot(tlagx,tlag(1:8),'ok','MarkerSize',8);
hold on
cruves{2}=plot(tlagx,tlag(9:16),'ok','MarkerSize',8,'MarkerFaceColor','k');
hold on
set(gcf, 'position', [200 200 600 500]);
set(gca,'FontSize',18)
xlabel('Abundance (%)','fontsize',18)
ylabel('t_{lag} (years)','fontsize',18)
legend([cruves{2},cruves{1}],...
    'Prop','Oedo','Location','northeast')

%% for aspect ratio S
clear;


aromega=cell(1,20);
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case59omega.mat');
aromega{1}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case60omega.mat');
aromega{2}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case61omega.mat');
aromega{3}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case62omega.mat');
aromega{4}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case63omega.mat');
aromega{5}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case64omega.mat');
aromega{6}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case65omega.mat');
aromega{7}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case66omega.mat');
aromega{8}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case67omega.mat');
aromega{9}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case68omega.mat');
aromega{10}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case89omega.mat');
aromega{11}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case90omega.mat');
aromega{12}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case91omega.mat');
aromega{13}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case92omega.mat');
aromega{14}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case93omega.mat');
aromega{15}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case94omega.mat');
aromega{16}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case95omega.mat');
aromega{17}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case96omega.mat');
aromega{18}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case97omega.mat');
aromega{19}=fomega;
load('C:\Users\xshen60\Desktop\biotite\code5\sensitivity\case98omega.mat');
aromega{20}=fomega;


tlag=zeros(20,1);
for i=1:20
    for j=1:10000000
        if aromega{i}(j)>0
            tlag(i)=j;
            break;
        end
    end    
end
tlagx=[1;2;3;4;5;6;7;8;9;10];

% figure
figure('Name','O Biotite aspect ratio tlag','NumberTitle','off')
cruves{1}=plot(tlagx,tlag(1:10),'ok','MarkerSize',8);
hold on
cruves{2}=plot(tlagx,tlag(11:20),'ok','MarkerSize',8,'MarkerFaceColor','k');
hold on
set(gcf, 'position', [200 200 600 500]);
set(gca,'FontSize',18)
xlabel('Aspect ratio','fontsize',18)
ylabel('t_{lag} (years)','fontsize',18)
% legend([cruves{2},cruves{1}],...
%     'Prop','Oedo','Location','northwest')



