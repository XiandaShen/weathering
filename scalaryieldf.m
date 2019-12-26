function fd = scalaryieldf(yd,c0,c1,omega)
% change from 1/sqrt(0.5)
fd=1/sqrt(2)*abs(yd)-c0-c1*omega;
end