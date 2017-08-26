function [ C_PA ] = C_PA( K,M )
load Input_1.txt
load Output_1.txt
X= Input_1(:,1)+1i*Input_1(:,2);
Y= Output_1(:,1)+1i*Output_1(:,2);

 %K is Order of Polynomial
 %M is Memory Depth


s_train=800;
N_train=10000;
H=H_matrix(X,K,M,s_train,N_train);
display(pinv(H));

C_PA=pinv(H)*Y(s_train+1:s_train+N_train);

% s_test=10000;
% N_test=100000;
%  
% Y_cap=H_matrix(X,K,M,s_test,N_test)*C_PA;
% scatter(20*log10(abs(X(s_test+1:s_test+N_test))/10)+30,20*log10(abs(Y_cap)/10)+30,5,'filled');
% title('Pin v/s Pout for Power Amplifier Model');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)');  
end  



