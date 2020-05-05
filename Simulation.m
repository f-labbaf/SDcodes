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

    TA5=[A1,AAA2,AAA3,AAA4];
    TA6=[A1,AAA2,AAA3,AAA4,AAA7];
    TA7=[A1,AAA2,AAA3,AAA4,AAA7,AAA10];
    TA8=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19];
    TA9=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3];
    TA10=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4];
    TA11=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7];
    TA12=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3,AAA4
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7,AAA10];
    TA13=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3,AAA4,AAA7
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7,AAA10,AAA19];
    TA14=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3,AAA4,AAA7,AAA10
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7,AAA10,AAA19,A1
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA4,AAA7,AAA10,AAA19,A1,AAA2];
    TA15=[A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA3,AAA4,AAA7,AAA10,AAA19,A1,AAA2
         A1,AAA2,AAA3,AAA4,AAA7,AAA10,AAA19,AAA4,AAA7,AAA10,AAA19,A1,AAA2,AAA3];



    A=G61;%change in each run
    B=G62;%change in each run

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
    S=[Tt;TA6];%change in each run
    [r,c]=size(S);
    S5=S;
    S6=zeros(r,2*c);
    for i=1:c
                             for a=1:r
                                b=i;
                                    if S5(a,b)==0
                                      S6(a,2*b-1:2*b)=[-1,1];
                                    elseif S5(a,b)==1
                                      S6(a,2*b-1:2*b)=[0,-2];
                                    else
                                      S6(a,2*b-1:2*b)=[1,1];
                                    end;
                             
                             end;
    end;
    INT=[];
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

                                 int(:,1)=SS(:,1).*SS(:,3);
                                 int(:,2)=SS(:,1).*SS(:,4);
                                 int(:,3)=SS(:,2).*SS(:,3);
                                % int(:,4)=SS(:,2).*SS(:,4);
                                 INT=[INT int];
        end;
    end;
    %y=[28763.30581	27653.69856	20159.4199	19000.93826	19239.43876	19248.91944	19798.18109	27812.78231	25790.58056	21643.38384	23316.16877	21289.44735	22629.27031	22116.22695	29655.01263	29150.00052	29487.08362	27839.02974	28051.8108	28308.80693	28086.13234	28061.06358	28238.42081	26158.63155	26475.01093	26191.77827];
    %X=[ones(r,1),S6,INT(:,1:3)];
    X=[ones(r,1),S6,INT];
   % X(:,15)=[];
    X(23,:)=[];
    %aaa=(inv(X'*X)*X'*y');
    a1=ones(25,27)*0.3;
    a2=ones(r-1,3)*1;
    a3=ones(r-1,10)*1;
    aaa=[ones(r-1,1),a3,a2,a1];
    MUi=aaa.*X;
    mu=sum(MUi,2);
    sigma=1*ones(25,1);
    %[M,AL,AQ,BL,BQ,CL,CQ,DL,DQ,EL,EQ,ALBL,ALBQ,AQBL,AQBQ]=aaa;
    %M=aaa(1);AL=aaa(2);AQ=aaa(3);BL=aaa(4);BQ=aaa(5);CL=aaa(6);CQ=aaa(7);DL=aaa(8);DQ=aaa(9);EL=aaa(10);EQ=aaa(11);ALBL=aaa(12);ALBQ=aaa(13);AQBL=aaa(14);AQBQ=aaa(15);
    %x=zeros(1,5);
    n=1000;
    y=zeros(25,n);
    A12=0; A13=0; A14=0; A15=0; A23=0; A24=0; A25=0; A34=0; A35=0; A45=0;
    for i=1:n
        %y(:,i)=normrnd(mu,sigma);
        ymean=normrnd(mu,sigma);
    %end;
    %ymean=mean(y,2);
    %SSE=zeros(25,10);
    %S6(:,3)=[];
    for j=0:9
        
        X=[ones(r,1),S6,INT(:,j*3+1:j*3+3)];
        X(23,:)=[];
        Bhat=(inv(X'*X)*X'*ymean);
        Yhat=X*Bhat;
        error=(Yhat-ymean).^2;
        SSE(j+1)=sum(error);
    end;
    [sse xx]=min(SSE);
    XX(i,1)=xx;
    if xx==1
        A12=A12+1;
    end;
    if xx==2
        A13=A13+1;
    end;
        if xx==3
        A14=A14+1;
    end;
        if xx==4
        A15=A15+1;
    end;
        if xx==5
        A23=A23+1;
    end;
        if xx==6
        A24=A24+1;
    end;
        if xx==7
        A25=A25+1;
    end;
        if xx==8
        A34=A34+1;
    end;
        if xx==9
        A35=A35+1;
    end;
        if xx==10
        A45=A45+1;
    end;
    end;
    A12
    A13
    A14
    A15
    A23
    A24
    A25
    A34
    A35
    A45
    