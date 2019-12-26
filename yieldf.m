function fd = yieldf(yd,c0,c1,omega)
fd=sqrt(0.5*doubledottt(yd,yd))-c0-c1*trace(omega);
end