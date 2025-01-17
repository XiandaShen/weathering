% eshelby tensor
function [S]=eshelbyoblate(a,c,bm,sm)
% a=1;
 b=a;
% c=0.5;
% sm=30;
% bm=50;
v=(3*bm-2*sm)/2/(3*bm+sm);
Ia=2*pi*a^2*c/(a^2-c^2)^(3/2)*(acos(c/a)-c/a*(1-c^2/a^2)^0.5);
Ib=Ia;
Ic=4*pi-2*Ia;
Iab=(Ia-c^2*4*pi/3*a^2)/(4*a^2-4*c^2);
Iaa=3*Iab;
Ibb=Iaa;
Iac=(4*pi-3*Ia)/3/(a^2-c^2);
Ibc=Iac;
Icc=(4*pi*a^2-12*pi*c^2+6*c^2*Ia)/(3*c^2*(a^2-c^2));
S(1:3,1:3,1:3,1:3)=0;
Q=3/(8*pi*(1-v));
R=(1-2*v)/(8*pi*(1-v));

S(1,1,1,1)=Q*a^2*Iaa+R*Ia;
S(1,1,1,2)=0;
S(1,1,1,3)=0;
S(1,1,2,1)=0;
S(1,1,2,2)=Q*b^2*Iab-R*Ia;
S(1,1,2,3)=0;
S(1,1,3,1)=0;
S(1,1,3,2)=0;
S(1,1,3,3)=Q*c^2*Iac-R*Ia;
S(1,2,1,1)=0;
S(1,2,1,2)=Q*a^2*Iab+R*Ia;
S(1,2,1,3)=0;
S(1,2,2,1)=Q*a^2*Iab+R*Ia;
S(1,2,2,2)=0;
S(1,2,2,3)=0;
S(1,2,3,1)=0;
S(1,2,3,2)=0;
S(1,2,3,3)=0;
S(1,3,1,1)=0;
S(1,3,1,2)=0;
S(1,3,1,3)=Q/2*(a^2+c^2)*Iac+R/2*(Ia+Ic);
S(1,3,2,1)=0;
S(1,3,2,2)=0;
S(1,3,2,3)=0;
S(1,3,3,1)=Q/2*(a^2+c^2)*Iac+R/2*(Ia+Ic);
S(1,3,3,2)=0;
S(1,3,3,3)=0;
S(2,1,1,1)=0;
S(2,1,1,2)=Q*a^2*Iab+R*Ia;
S(2,1,1,3)=0;
S(2,1,3,1)=0;
S(2,1,3,2)=0;
S(2,1,3,3)=0;
S(2,1,2,1)=Q*a^2*Iab+R*Ia;
S(2,1,2,2)=0;
S(2,1,2,3)=0;
S(2,1,3,1)=0;
S(2,1,3,2)=0;
S(2,1,3,3)=0;
S(2,2,1,1)=Q*a^2*Iab-R*Ib;
S(2,2,1,2)=0;
S(2,2,1,3)=0;
S(2,2,2,1)=0;
S(2,2,2,2)=Q*b^2*Ibb+R*Ib;
S(2,2,2,3)=0;
S(2,2,3,1)=0;
S(2,2,3,2)=0;
S(2,2,3,3)=Q*c^2*Ibc-R*Ib;
S(2,3,1,1)=0;
S(2,3,1,2)=0;
S(2,3,1,3)=0;
S(2,3,2,1)=0;
S(2,3,2,2)=0;
S(2,3,2,3)=Q/2*(b^2+c^2)*Ibc+R/2*(Ib+Ic);
S(2,3,3,1)=0;
S(2,3,3,2)=Q/2*(b^2+c^2)*Ibc+R/2*(Ib+Ic);
S(2,3,3,3)=0;
S(3,1,1,1)=0;
S(3,1,1,2)=0;
S(3,1,1,3)=Q/2*(a^2+c^2)*Iac+R/2*(Ia+Ic);
S(3,1,2,1)=0;
S(3,1,2,2)=0;
S(3,1,2,3)=0;
S(3,1,3,1)=Q/2*(a^2+c^2)*Iac+R/2*(Ia+Ic);
S(3,1,3,2)=0;
S(3,1,3,3)=0;
S(3,2,1,1)=0;
S(3,2,1,2)=0;
S(3,2,1,3)=0;
S(3,2,2,1)=0;
S(3,2,2,2)=0;
S(3,2,2,3)=Q/2*(b^2+c^2)*Ibc+R/2*(Ib+Ic);
S(3,2,3,1)=0;
S(3,2,3,2)=Q/2*(b^2+c^2)*Ibc+R/2*(Ib+Ic);
S(3,2,3,3)=0;
S(3,3,1,1)=Q*a^2*Iac-R*Ic;
S(3,3,1,2)=0;
S(3,3,1,3)=0;
S(3,3,2,1)=0;
S(3,3,2,2)=Q*b^2*Ibc-R*Ic;
S(3,3,3,1)=0;
S(3,3,3,2)=0;
S(3,3,3,3)=Q*c^2*Icc+R*Ic;




