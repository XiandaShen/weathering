function yd = dforce(eps,epsE,a,b,g)
% yd =-g.*eps-(a*trace(epsE)).*epsE-2*b*trace(epsE*epsE);
yd =-g.*eps;
end