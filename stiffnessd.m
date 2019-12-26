function R=stiffnessd(lamda,mu,a,b,omega)
R(1:3,1:3,1:3,1:3) = 0;
R(1,1,1,1)=2*mu+lamda+2*a*omega(1,1)+4*b*omega(1,1);
R(2,2,2,2)=2*mu+lamda+2*a*omega(2,2)+4*b*omega(2,2);
R(3,3,3,3)=2*mu+lamda+2*a*omega(3,3)+4*b*omega(3,3);
R(1,1,2,2)=lamda+a*(omega(1,1)+omega(2,2));
R(1,1,3,3)=lamda+a*(omega(1,1)+omega(3,3));
R(2,2,1,1)=lamda+a*(omega(1,1)+omega(2,2));
R(2,2,3,3)=lamda+a*(omega(2,2)+omega(3,3));
R(3,3,1,1)=lamda+a*(omega(1,1)+omega(3,3));
R(3,3,2,2)=lamda+a*(omega(2,2)+omega(3,3));
R(2,3,2,3)=mu+b*(omega(3,3)+omega(2,2));
R(2,3,3,2)=mu+b*(omega(3,3)+omega(2,2));
R(3,2,3,2)=mu+b*(omega(3,3)+omega(2,2));
R(3,2,2,3)=mu+b*(omega(3,3)+omega(2,2));
R(2,1,2,1)=mu+b*(omega(1,1)+omega(2,2));
R(2,1,1,2)=mu+b*(omega(1,1)+omega(2,2));
R(1,2,2,1)=mu+b*(omega(1,1)+omega(2,2));
R(1,2,1,2)=mu+b*(omega(1,1)+omega(2,2));
R(1,3,1,3)=mu+b*(omega(3,3)+omega(2,2));
R(1,3,3,1)=mu+b*(omega(3,3)+omega(2,2));
R(3,1,1,3)=mu+b*(omega(3,3)+omega(2,2));
R(3,1,3,1)=mu+b*(omega(3,3)+omega(2,2));
end

