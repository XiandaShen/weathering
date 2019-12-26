function [P]=Ptensor(a,c,bm,sm)
w=c/a;
% sm=30;
% bm=50;
if w<1
h=w*(acos(w)-w*sqrt(1-w^2))/(1-w^2)^1.5;
end
if w>1
h=w*(w*sqrt(w^2-1)-acosh(w))/(w^2-1)^1.5;
end 
if w==1
    h=2/3;
end

kp=((7*h-2*w^2-4*w^2*h)*sm+3*(h-2*w^2+2*w^2*h)*bm)/8/(1-w^2)/sm/(4*sm+3*bm);
lp=(sm+3*bm)*(2*w^2-h-2*w^2*h)/4/(1-w^2)/sm/(4*sm+3*bm);
np=((6-5*h-8*w^2+8*w^2*h)*sm+3*(h-2*w^2+2*w^2*h)*bm)/2/(1-w^2)/sm/(4*sm+3*bm);
mp=((15*h-2*w^2-12*w^2*h)*sm+3*(3*h-2*w^2)*bm)/16/(1-w^2)/sm/(4*sm+3*bm);
pp=(2*(4-3*h-2*w^2)*sm+3*(2-3*h+2*w^2-3*w^2*h)*bm)/8/(1-w^2)/sm/(4*sm+3*bm);

P(1:3,1:3,1:3,1:3) = 0;
P(1,1,1,1)=kp+mp;
P(2,2,2,2)=kp+mp;
P(3,3,3,3)=np;
P(1,1,2,2)=kp-mp;
P(1,1,3,3)=lp;
P(2,2,1,1)=kp-mp;
P(2,2,3,3)=lp;
P(3,3,1,1)=lp;
P(3,3,2,2)=lp;
P(2,3,2,3)=pp;
P(2,3,3,2)=pp;
P(3,2,3,2)=pp;
P(3,2,2,3)=pp;
P(2,1,2,1)=mp;
P(2,1,1,2)=mp;
P(1,2,2,1)=mp;
P(1,2,1,2)=mp;
P(1,3,1,3)=pp;
P(1,3,3,1)=pp;
P(3,1,1,3)=pp;
P(3,1,3,1)=pp;
end