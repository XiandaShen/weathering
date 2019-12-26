minors=0;
majors=0;
for i=1:3
    for j=1:3
        for k=1:3
            for l=1:3
                minors=minors+abs(HC(i,j,k,l)-HC(i,j,l,k))+abs(HC(i,j,k,l)-HC(j,i,k,l));
                majors=majors+abs(HC(i,j,k,l)-HC(l,k,i,j));
            end
        end
    end
end
minors
majors
pstrain{1}'-pstrain{1}
pstrain{4}'-pstrain{4}