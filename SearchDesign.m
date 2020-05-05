clc;
clear all;
G31=[1;0;0;0;1];
G32=[0;1;0;1;0];

G41=[0;1;1;0;0;0;1];
G42=[0;1;1;0;1;0;0];

G51=[1;1;0;1;0;0;0;1;0];
G52=[0;1;1;1;0;0;1;0;0];

G61=[0;1;1;1;0;0;1;0;0;0;1];
G62=[1;0;0;0;0;1;1;0;1;0;1];

G71=[0;1;1;1;0;1;1;0;0;1;0;0;0];
G72=[1;1;0;1;0;0;1;0;1;0;0;0;1];

G81=[1;0;1;1;1;1;0;0;1;0;0;0;0;1;0];
G82=[0;1;0;0;1;1;0;1;0;0;0;1;1;1;0];

G91=[0;0;0;1;0;1;1;0;1;0;1;0;1;1;1;0;0];
G92=[1;1;0;0;1;1;0;0;0;1;0;0;1;0;0;1;1];

G101=[0;1;1;0;1;1;1;1;0;0;1;0;0;0;1;0;0;0;1];
G102=[0;1;0;1;1;0;0;0;1;0;1;1;1;0;0;0;0;1;1];

G111=[1;1;1;1;0;1;0;0;1;0;0;0;0;1;1;0;0;0;1;0;1];
G112=[0;1;1;0;0;1;1;0;0;1;0;1;1;1;0;0;0;0;1;0;1];

G121=[1;1;0;0;1;1;0;1;0;1;0;0;0;0;0;1;1;1;1;0;1;0;0];
G122=[0;1;0;1;0;0;0;0;1;0;0;1;0;0;1;1;1;1;0;0;1;1;1];

G131=[0;1;1;0;1;1;0;0;1;0;1;1;1;1;0;0;1;1;0;1;0;0;0;0;0];
G132=[0;1;0;0;0;1;1;1;1;0;1;0;1;1;0;0;0;1;1;0;1;0;1;0;0];

G141=[0;0;1;1;1;0;1;0;0;1;0;0;1;0;1;1;0;1;0;1;0;1;0;0;0;1;1];
G142=[1;0;0;0;1;1;0;0;0;0;0;0;0;1;1;0;1;1;1;0;1;0;0;1;1;1;1];

G151=[1;1;0;0;0;1;0;0;0;0;1;0;1;1;1;1;1;1;0;0;1;1;0;1;0;0;0;0;1];
G152=[1;0;0;0;1;0;0;1;0;1;1;0;0;0;1;1;0;1;1;1;0;1;0;1;0;0;1;1;0];

A1=[1;0;0;0];
AAA2=[2;0;0;1];
AAA3=[2;0;0;2];
AAA4=[2;0;1;0];
AAA7=[2;0;2;0];
AAA10=[2;1;0;0];
AAA19=[2;2;0;0];
TA7=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19];
%TA7=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1
 %    A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3
  %   A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA4
   %  ];
%TA7=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19
 %    A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2
  %   A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3
   %  ];

   
A=G81;%change in each run
B=G82;%change in each run

[m n]=size(A);
for i=2:m
    A(:,i)=circshift(A(:,i-1),1);
end;

[m n]=size(B);
for i=2:m
    B(:,i)=circshift(B(:,i-1),1);
end;
T=[A B];
T=T';
[QW WE]=size(T);
%for i=1:29
    Tn=T;
    Tn(:,1)=[];
    a=[];
    for j=1:(m-1)/2
        Sr=[];
        Dr=[];
        a(:,j)=(2-Tn(:,1).*(Tn(:,2)+1));
        Tn(:,1:2)=[];
        Tt=[a,Tn];
        [r c]=size(Tt);
    end;
        k=[];
        z=[];
S=[Tt;TA7];
[r,c]=size(S);
%No Change



S3=[];
for i=1:c-1
    for j=i+1:c
      S3=[S(:,i),S(:,j)];                   
        SS=zeros(r,4);
                         for a=1:r
                             for b=1:2
                                if S3(a,b)==0
                                  SS(a,2*b-1:2*b)=[-1,1];
                                    elseif S3(a,b)==1
                                  SS(a,2*b-1:2*b)=[0,-2];
                                else
                                  SS(a,2*b-1:2*b)=[1,1];
                               end;
                             end;
                         end;
                         
                             int1(:,1)=SS(:,1).*SS(:,3);
                             int1(:,2)=SS(:,1).*SS(:,4);
                             int1(:,3)=SS(:,2).*SS(:,3);
                             int1(:,4)=SS(:,2).*SS(:,4);
                             int1(:,5)=SS(:,1);
                             int1(:,6)=SS(:,2);
                             int1(:,7)=ones(r,1);
                             
                             int2(:,1)=SS(:,1).*SS(:,3);
                             int2(:,2)=SS(:,1).*SS(:,4);
                             int2(:,3)=SS(:,2).*SS(:,3);
                             int2(:,4)=SS(:,2).*SS(:,4);
                             int2(:,5)=SS(:,3);
                             int2(:,6)=SS(:,4);
                             int2(:,7)=ones(r,1);
                             
                            rank1=rank(SS);
                            [x1 x2]=size(SS);
                             if rank1~=x2
                                 disp(['rank1'])
                                 rank1
                             end; 
                                                                                    
                            rank2=rank(int1);
                            [x1 x2]=size(int1);
                             if rank2~=x2
                                 disp(['rank2'])
                                 rank2
                             end; 
                                 
                            rank3=rank(int2);
                            [x1 x2]=size(int2);
                             if rank3~=x2
                                 disp(['rank3'])
                                 rank3
                             end;
                             
                             %int01(:,1)=SS(:,1).*SS(:,3);
                             %int01(:,2)=SS(:,1).*SS(:,4);
                             %int01(:,3)=SS(:,2).*SS(:,3);
                             %int01(:,4)=SS(:,2).*SS(:,4);
                             %int01(:,5)=SS(:,1);
                             %int01(:,6)=SS(:,2);
                             %int01(:,7)=SS(:,3);
                             %int01(:,6)=SS(:,4);
                             %int01(:,8)=ones(r,1);
                             %[y u]=size(int01);
                             %ra=rank(int01);
                             %if (u)~=ra
                             %    disp(i)
                             %    disp(j)
                             %    disp(k)
                             %    disp(['sizeint01'])
                             %    size(int01)
                             %    disp(['rankint01'])
                             %    rank(int01)
                             %    disp(['............'])
                             %end;
                             
                             
                             
    end
end

for i=1:c-2
    for j=i+1:c-1
        for k=j+1:c
                     S3=[S(:,i),S(:,j),S(:,k)]; 
                     SS=zeros(r,6);
                         for a=1:r
                             for b=1:3
                                if S3(a,b)==0
                                  SS(a,2*b-1:2*b)=[-1,1];
                                    elseif S3(a,b)==1
                                  SS(a,2*b-1:2*b)=[0,-2];
                                else
                                  SS(a,2*b-1:2*b)=[1,1];
                               end;
                             end;
                         end;
                             int1(:,1)=SS(:,1).*SS(:,3);
                             int1(:,2)=SS(:,1).*SS(:,4);
                             int1(:,3)=SS(:,2).*SS(:,3);
                             int1(:,4)=SS(:,2).*SS(:,4);
                             int1(:,5)=SS(:,5);
                             int1(:,6)=SS(:,6);
                             
                             int2(:,1)=SS(:,1).*SS(:,5);
                             int2(:,2)=SS(:,1).*SS(:,6);
                             int2(:,3)=SS(:,2).*SS(:,5);
                             int2(:,4)=SS(:,2).*SS(:,6);
                             int2(:,5)=SS(:,3);
                             int2(:,6)=SS(:,4);
                             
                             int3(:,1)=SS(:,3).*SS(:,5);
                             int3(:,2)=SS(:,3).*SS(:,6);
                             int3(:,3)=SS(:,4).*SS(:,5);
                             int3(:,4)=SS(:,4).*SS(:,6);
                             int3(:,5)=SS(:,1);
                             int3(:,6)=SS(:,2);
                             
                             int4(:,1)=SS(:,1).*SS(:,3);
                             int4(:,2)=SS(:,1).*SS(:,4);
                             int4(:,3)=SS(:,2).*SS(:,3);
                             int4(:,4)=SS(:,2).*SS(:,4);
                             int4(:,5)=SS(:,1).*SS(:,5);
                             int4(:,6)=SS(:,1).*SS(:,6);
                             int4(:,7)=SS(:,2).*SS(:,5);
                             int4(:,8)=SS(:,2).*SS(:,6);
                             
                             int5(:,1)=SS(:,1).*SS(:,3);
                             int5(:,2)=SS(:,1).*SS(:,4);
                             int5(:,3)=SS(:,2).*SS(:,3);
                             int5(:,4)=SS(:,2).*SS(:,4);
                             int5(:,5)=SS(:,3).*SS(:,5);
                             int5(:,6)=SS(:,3).*SS(:,6);
                             int5(:,7)=SS(:,4).*SS(:,5);
                             int5(:,8)=SS(:,4).*SS(:,6);
                              
                             int6(:,1)=SS(:,1).*SS(:,5);
                             int6(:,2)=SS(:,1).*SS(:,6);
                             int6(:,3)=SS(:,2).*SS(:,5);
                             int6(:,4)=SS(:,2).*SS(:,6);
                             int6(:,5)=SS(:,3).*SS(:,5);
                             int6(:,6)=SS(:,3).*SS(:,6);
                             int6(:,7)=SS(:,4).*SS(:,5);
                             int6(:,8)=SS(:,4).*SS(:,6);
                             
                            rank11=rank(int1);
                            [x1 x2]=size(int1);
                             if rank11~=x2
                                 disp(['rank11'])
                                 rank11
                             end; 
                             
                            rank12=rank(int2);
                            [x1 x2]=size(int2);
                             if rank12~=x2
                                 disp(['rank12'])
                                 rank12
                             end; 
                             
                            rank13=rank(int3);
                            [x1 x2]=size(int3);
                             if rank13~=x2
                                 disp(['rank13'])
                                 rank13
                             end; 
                             
                            rank14=rank(int4);
                            [x1 x2]=size(int4);
                             if rank14~=x2
                                 disp(['rank14'])
                                 rank14
                             end; 
                             
                            rank15=rank(int5);
                            [x1 x2]=size(int5);
                             if rank15~=x2
                                 disp(['rank15'])
                                 rank15
                             end; 
                             
                            rank16=rank(int6);
                            [x1 x2]=size(int6);
                             if rank16~=x2
                                 disp(['rank16'])
                                 rank16
                             end; 
                             
                             
                             
                             %int11(:,1)=SS(:,1);
                             %int11(:,2)=SS(:,2);
                             %int11(:,3)=SS(:,3);
                             %int11(:,4)=SS(:,4);
                             %int11(:,5)=SS(:,5);
                             %int11(:,6)=SS(:,6);
                             %int11(:,7)=SS(:,1).*SS(:,3);
                             %int11(:,8)=SS(:,1).*SS(:,4);
                             %int11(:,9)=SS(:,2).*SS(:,3);
                             %int11(:,10)=SS(:,2).*SS(:,4);
                             %int11(:,11)=SS(:,1).*SS(:,5);
                             %int11(:,12)=SS(:,1).*SS(:,6);
                             %int11(:,13)=SS(:,2).*SS(:,5);
                             %int11(:,14)=SS(:,2).*SS(:,6);
                             %int11(:,15)=SS(:,3).*SS(:,5);
                             %int11(:,16)=SS(:,3).*SS(:,6);
                             %int11(:,17)=SS(:,4).*SS(:,5);
                             %int11(:,18)=SS(:,4).*SS(:,6);
                             
                             %[y u]=size(int11);
                             %ra=rank(int11);
                             %if (u)~=ra
                             %    disp(i)
                             %    disp(j)
                             %    disp(k)
                             %    disp(['sizeint11'])
                             %    size(int11)
                             %    disp(['rankint11'])
                             %    rank(int11)
                             %    disp(['............'])
                             %end;
                             
                             
                             
                             
                                  
         end
    end
end

      for i=1:c-3
          for j=i+1:c-2
              for k=j+1:c-1
                  for l=k+1:c
                      
                         S3=[S(:,i),S(:,j),S(:,k),S(:,l)];
                         SS=zeros(r,8);
                         for a=1:r
                             for b=1:4
                                if S3(a,b)==0
                                  SS(a,2*b-1:2*b)=[-1,1];
                                    elseif S3(a,b)==1
                                  SS(a,2*b-1:2*b)=[0,-2];
                                else
                                  SS(a,2*b-1:2*b)=[1,1];
                               end;
                             end;
                         end;
                             int1(:,1)=SS(:,1).*SS(:,3);
                             int1(:,2)=SS(:,1).*SS(:,4);
                             int1(:,3)=SS(:,2).*SS(:,3);
                             int1(:,4)=SS(:,2).*SS(:,4);
                             int1(:,5)=SS(:,5).*SS(:,7);
                             int1(:,6)=SS(:,5).*SS(:,8);
                             int1(:,7)=SS(:,6).*SS(:,7);
                             int1(:,8)=SS(:,6).*SS(:,8);
                             
                             int2(:,1)=SS(:,1).*SS(:,5);
                             int2(:,2)=SS(:,1).*SS(:,6);
                             int2(:,3)=SS(:,2).*SS(:,5);
                             int2(:,4)=SS(:,2).*SS(:,6);
                             int2(:,5)=SS(:,3).*SS(:,7);
                             int2(:,6)=SS(:,3).*SS(:,8);
                             int2(:,7)=SS(:,4).*SS(:,7);
                             int2(:,8)=SS(:,4).*SS(:,8);
                                                          
                             int3(:,1)=SS(:,1).*SS(:,7);
                             int3(:,2)=SS(:,1).*SS(:,8);
                             int3(:,3)=SS(:,2).*SS(:,7);
                             int3(:,4)=SS(:,2).*SS(:,8);
                             int3(:,5)=SS(:,3).*SS(:,5);
                             int3(:,6)=SS(:,3).*SS(:,6);
                             int3(:,7)=SS(:,4).*SS(:,5);
                             int3(:,8)=SS(:,4).*SS(:,6);
                             
                            rank21=rank(int1);
                            [x1 x2]=size(int1);
                             if rank21~=x2
                                 disp(['rank21'])
                                 rank21
                             end; 
                             
                            rank22=rank(int2);
                            [x1 x2]=size(int2);
                             if rank22~=x2
                                 disp(['rank22'])
                                 rank22
                             end; 
                             
                            rank23=rank(int3);
                            [x1 x2]=size(int3);
                             if rank23~=x2
                                 disp(['rank23'])
                                 rank23
                             end; 
                             
                             
                             
                             mat(:,1)=SS(:,1);
                             mat(:,2)=SS(:,2);
                             mat(:,3)=SS(:,3);
                             mat(:,4)=SS(:,4);
                             mat(:,5)=SS(:,5);
                             mat(:,6)=SS(:,6);
                             mat(:,7)=SS(:,7);
                             mat(:,8)=SS(:,8);
                              mat(:,9)=SS(:,1).*SS(:,3);
                             mat(:,10)=SS(:,1).*SS(:,4);
                             mat(:,11)=SS(:,2).*SS(:,3);
                             mat(:,12)=SS(:,2).*SS(:,4);
                             mat(:,13)=SS(:,1).*SS(:,5);
                             mat(:,14)=SS(:,1).*SS(:,6);
                             mat(:,15)=SS(:,2).*SS(:,5);
                             mat(:,16)=SS(:,2).*SS(:,6);
                             mat(:,17)=SS(:,1).*SS(:,7);
                             mat(:,18)=SS(:,1).*SS(:,8);
                             mat(:,19)=SS(:,2).*SS(:,7);
                             mat(:,20)=SS(:,2).*SS(:,8);
                             mat(:,21)=SS(:,3).*SS(:,5);
                             mat(:,22)=SS(:,3).*SS(:,6);
                             mat(:,23)=SS(:,4).*SS(:,5);
                             mat(:,24)=SS(:,4).*SS(:,6);
                             mat(:,25)=SS(:,3).*SS(:,7);
                             mat(:,26)=SS(:,3).*SS(:,8);
                             mat(:,27)=SS(:,4).*SS(:,7);
                             mat(:,28)=SS(:,4).*SS(:,8);
                             mat(:,29)=SS(:,5).*SS(:,7);
                             mat(:,30)=SS(:,5).*SS(:,8);
                             mat(:,31)=SS(:,6).*SS(:,7);
                             mat(:,32)=SS(:,6).*SS(:,8);
                             mat(:,33)=ones(r,1);
                             
                             
                                                          
                             [y u]=size(mat);
                              ra=rank(mat);
                             if (u)~=ra
                                 disp(['...........'])
                                 disp(i)
                                 disp(j)
                                 disp(k)
                                 disp(l)
                                 size(mat)
                                 rank(mat)
                             end;
                             
                                     

                  end
              end
          end
      end
