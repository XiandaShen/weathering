function yd = scalardforce(eps,epsE,a,b,g)
% yd =-g.*eps-(a*trace(epsE)).*epsE-2*b*trace(epsE*epsE);
% yd =-g*trace(eps);
yd=trace(-a*trace(eps)*eps-2*b*eps*eps);

end