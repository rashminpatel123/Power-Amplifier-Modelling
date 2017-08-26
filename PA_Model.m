load Input.txt
load Output.txt
X= Input(:,1)+1i*Input(:,2);
Y= Output(:,1)+1i*Output(:,2);
NSME=zeros(15,15);
  
 %K is Order of Polynomial
 %M is Memory Depth
 for K=1:15                                       
    for M=1:15
      
s_train=M;
N_train=1000;    

H=H_matrix(X,K,M,s_train,N_train);    

C=pinv(H)*Y(M+1:M+N_train);
%display(C);

s_test=500;
N_test=1000;

Y_cap=H_matrix(X,K,M,s_test,N_test)*C;

MSE=0;MSY=0;
for i=1:N_test
    MSE=MSE+(abs(Y_cap(i)-Y(i+s_test)))^2;
    MSY=MSY+abs(Y(i+s_test))^2;
end
    NSME(K,M)=MSE/MSY;  
    %display(NSME); 
    end
end

X=1:1:15;    
Y=1:1:15;
%[X,Y]=meshgrid(K,M);                                           
%F=NSME(X,Y);
surf(10*log10(NSME(X,Y)));
xlabel('Memory Depth');                    
ylabel('Polynomial Order');
zlabel('NMSE');    


