load Input_1.txt
load Output_1.txt
X= Output_1(:,1)+1i*Output_1(:,2);
%X=X/Complex_Gain();
Y= Input_1(:,1)+1i*Input_1(:,2);

 %K is Order of Polynomial
 %M is Memory Depth
       
s_train=800;
N_train=1000;    

% rP_train=(mean(abs(X(M+1:10000)).*abs(X(M+1:10000))))^0.5;
% display(rP_train);

disp_coe=zeros(10,10);
for M=1:5
    for K=1:10
H=H_matrix_OMPM(X,K,M,s_train,N_train);    

C_Inverse_PA=pinv(H)*Y(s_train+1:s_train+N_train);

C_max=max(abs(C_Inverse_PA));
C_min=min(abs(C_Inverse_PA));

disp_coe(K,M)=C_max/C_min;

    end
end
display(disp_coe);
%   s_test=5000;
%   N_test=10000;
% 
%   Y_cap=H_matrix(X,K,M,s_test,N_test)*C_Inverse_PA;
%   scatter(20*log10(abs(X(5001:15000))/10)+30,20*log10(abs(Y_cap)/10)+30,5,'filled');
%   title('Pin v/s Pout for Inverse Model');
%   ylabel('Pout(dBm)');
%   xlabel('Pin(dBm)'); 



