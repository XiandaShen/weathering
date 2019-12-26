function R=scalarstiffnessd(lamda,mu,a,b,omega)
R(1:3,1:3,1:3,1:3) = 0;
lamda=lamda+2*a*omega;
mu=mu+2*b*omega;
R(1,1,1,1)=2*mu+lamda;
R(2,2,2,2)=2*mu+lamda;
R(3,3,3,3)=2*mu+lamda;
R(1,1,2,2)=lamda;
R(1,1,3,3)=lamda;
R(2,2,1,1)=lamda;
R(2,2,3,3)=lamda;
R(3,3,1,1)=lamda;
R(3,3,2,2)=lamda;
R(2,3,2,3)=mu;
R(2,3,3,2)=mu;
R(3,2,3,2)=mu;
R(3,2,2,3)=mu;
R(2,1,2,1)=mu;
R(2,1,1,2)=mu;
R(1,2,2,1)=mu;
R(1,2,1,2)=mu;
R(1,3,1,3)=mu;
R(1,3,3,1)=mu;
R(3,1,1,3)=mu;
R(3,1,3,1)=mu;
end

