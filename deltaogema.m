function domega = deltaogema(yd,ydo,C1)
A=doubledottt(yd,(yd-ydo));
B=C1*doubledottt(eye(3),yd);
C=sqrt(2*doubledottt(yd,yd));
domega=A/B/C.*yd;
end
