function outB = inversetest(inA)
A(1:9,1:9) = 0;
for i=1:3
for    j=1:3
for    k=1:3
for    l=1:3
    A((i-1)*3+j,(k-1)*3+l)=inA(i,j,k,l);    
end 
end
end
end
A
det(A)
B=inv(A);
outB(1:3,1:3,1:3,1:3) = 0;
for i=1:3
for    j=1:3
for    k=1:3
for    l=1:3
    outB(i,j,k,l)=B((i-1)*3+j,(k-1)*3+l);    
end 
end
end
end