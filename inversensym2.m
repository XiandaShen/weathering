%get the inverse of 4th order tensor F which is minor symmetric


function Finverse = inversensym2(F)

a=zeros(6,6);
a(1,1)=F(1,1,1,1);
a(1,2)=F(1,1,2,2);
a(1,3)=F(1,1,3,3);
a(1,4)=F(1,1,1,2);
a(1,5)=F(1,1,2,3);
a(1,6)=F(1,1,3,1);
a(2,1)=F(2,2,1,1);
a(2,2)=F(2,2,2,2);
a(2,3)=F(2,2,3,3);
a(2,4)=F(2,2,1,2);
a(2,5)=F(2,2,2,3);
a(2,6)=F(2,2,3,1);
a(3,1)=F(3,3,1,1);
a(3,2)=F(3,3,2,2);
a(3,3)=F(3,3,3,3);
a(3,4)=F(3,3,1,2);
a(3,5)=F(3,3,2,3);
a(3,6)=F(3,3,3,1);
a(4,1)=F(1,2,1,1);
a(4,2)=F(1,2,2,2);
a(4,3)=F(1,2,3,3);
a(4,4)=F(1,2,1,2);
a(4,5)=F(1,2,2,3);
a(4,6)=F(1,2,3,1);
a(5,1)=F(2,3,1,1);
a(5,2)=F(2,3,2,2);
a(5,3)=F(2,3,3,3);
a(5,4)=F(2,3,1,2);
a(5,5)=F(2,3,2,3);
a(5,6)=F(2,3,3,1);
a(6,1)=F(3,1,1,1);
a(6,2)=F(3,1,2,2);
a(6,3)=F(3,1,3,3);
a(6,4)=F(3,1,1,2);
a(6,5)=F(3,1,2,3);
a(6,6)=F(3,1,3,1);

aa=inv(a);
Finverse=zeros(3,3,3,3);


for i=1:3
    for j=1:3
        for k=1:3
            for l=1:3
                constant=2;
               if i==1 && j==1
                   x=1;
               end
               if i==2 && j==2
                   x=2;
               end       
               if i==3 && j==3
                   x=3;
               end    
               if (i==1 && j==2)||(i==2 && j==1)
                   x=4;
               end                 
               if (i==3 && j==2)||(i==2 && j==3)
                   x=5;
               end                  
               if (i==3 && j==1)||(i==1 && j==3)
                   x=6;
               end  
               
               if k==1 && l==1
                   y=1;
               end
               if k==2 && l==2
                   y=2;
               end       
               if k==3 && l==3
                   y=3;
               end    
               if (k==1 && l==2)||(k==2 && l==1)
                   y=4;
               end                 
               if (k==3 && l==2)||(k==2 && l==3)
                   y=5;
               end                  
               if (k==3 && l==1)||(k==1 && l==3)
                   y=6;
               end                 
               
               
               if (x < 4) && (y < 4)
                   constant=1;
               end
               
               if (x > 3) && (y > 3)
                   constant=4;
               end

                Finverse(i,j,k,l)=aa(x,y)/constant;
                
                
            end
        end
    end
end


end