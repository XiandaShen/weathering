function [stress,strain]=bc(stress,strain,stiffness,temp1,si,sj)
nequ=0;
% bbm=20;
% bsm=15;
% stress=[1 1234567 1234567;1234567 1234567 1234567; 1234567 1234567 1234567];
% strain=[1234567 0 0;0 0 0; 0 0 0];
% stiffness=matrixc(bbm,bsm);


%[ei,ej]=find(strain<100000); 
tp1=size(si,1);


coe=zeros(3,3,3,3);
con=zeros(3,3);

for i=1:3
    for j=1:3
        for k=1:3
            for l=1:3
                testn=1;
                for mmm=1:tp1    % coefficient before unknown strain
                    if k==si(mmm) && l==sj(mmm)  
                        coe(i,j,k,l)=coe(i,j,k,l)+stiffness(i,j,k,l); 
                        testn=0;
                    end
                end
                
                if testn==1   % constant without strain
                       con(i,j)=con(i,j)+stiffness(i,j,k,l)*strain(k,l);
                end                                 
            end
        end
    end
end

econ=zeros(tp1);
eqs=zeros(tp1);
eqc=zeros(tp1,tp1);
% 
% for i=1:tp1
%     if si(i)<=sj(i)
%         nequ=nequ+1;
%     end
% end
nequ=0;
for i=1:tp1
      if si(i)<=sj(i)
             nequ=nequ+1; 
             feqs(nequ)=stress(si(i),sj(i));
             fecon(nequ)=con(si(i),sj(i))-temp1(si(i),sj(i));
    mequ=0;
    for j=1:tp1
         if si(j)<=sj(j)
             mequ=mequ+1;
             feqc(nequ,mequ)=coe(si(i),sj(i),si(j),sj(j)); 
         end
    end
      end
end

for i=1:tp1
    for j=1:tp1             
        eqc(i,j)=coe(si(i),sj(i),si(j),sj(j));
        econ(i)=con(si(i),sj(i));
        eqs(i)=stress(si(i),sj(i));
    end
end

    
eqe=feqc\(feqs-fecon)';

for i=1:nequ
    if si(j)~=sj(j)
    strain(si(i),sj(i))=eqe(i)/2;
    strain(sj(i),si(i))=eqe(i)/2;
    else
     strain(si(i),sj(i))=eqe(i);   
    end
end

stress=doubledotft(stiffness,strain)-temp1;
end
