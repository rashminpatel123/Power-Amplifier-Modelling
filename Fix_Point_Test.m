load Input_1.txt;
load Output_1.txt;
X= Input_1(:,1)+1i*Input_1(:,2);
Y_PA=Output_1(:,1)+1i*Output_1(:,2);
K=5;
M=2;
s=800;                   %---s greater than M                                              
N=15000;
X_Inv=X(s+1:s+N);  
C_Inverse=C_Inverse_PA(K,M);
C=C_PA(K,M);  

C_Inv_Fix=num2fixpt(C_Inverse,sfix(16),2^-4,'Nearest','DoSatur');               %rP_test=(mean(abs(X_Inv).*abs(X_Inv)))^0.5;    (rP_test=0.0534...rP_train=0.0546)
Y_Inv=H_matrix(X,K,M,s,N)*C_Inv_Fix;                                       %----------Match input power to normalized Y Output


Y=H_matrix(Y_Inv,K,M,M,N-M)*C;




nfft=1024*8;
Fs=92.16;%(in MHz)
f = (-nfft/2:nfft/2-1)*Fs/nfft;  
span=70;
hold on
hold on
set(gca,'fontsize',15);
s1=scatter(f,20*log10(smooth(abs(fftshift(fft(X_Inv,nfft))),span)),5,'filled');
hold on;
s2=scatter(f,20*log10(smooth(abs(fftshift(fft(Y_PA(s+1:s+N),nfft))),span)),5,'filled');
hold on;
s3=scatter(f,20*log10(smooth(abs(fftshift(fft(Y,nfft))),span)),5,'filled');

title('Plot of Magnitude Spectrum');
ylabel('Magnitude(dB)','FontWeight','bold');
xlabel('Frequency(in MHz)','FontWeight','bold'); 
legend(legend([s1,s2],'Input','Output(without DPD)'));






%----------------------------------------------------------------------------------------------
% set(gca,'fontsize',15)
% hold on
% axis=[-30 0 -30 0];
% hold on
% 
% s1=scatter(20*log10(abs(X_Inv)/10)+30,20*log10(abs(Y_Inv)/10)+30,5,'filled');
% hold on;
% title('Pin v/s Pout for Inverse Model');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)');
% hold all;
% 
% 
% s2=scatter(20*log10(abs(X(s+M+1:s+N))/10)+30,20*log10(abs(Y)/10)+30,5,'filled');
% hold on;
% title('Pin v/s Pout for Full Model');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)');
% hold all;
% 
% s3=scatter(20*log10(abs(X(s+1:s+N))/10)+30,20*log10(abs(Y_PA(s+1:s+N))/10)+30,5,'filled');
% hold on;
% title('Plot of Pin v/s Pout','FontWeight','bold');
% ylabel('Pout(dBm)','FontWeight','bold');
% xlabel('Pin(dBm)','FontWeight','bold'); 
% 
% 
% legend([s1,s2,s3],'DPD Model','Linear Model','PA Model','Location','northwest');
% 
% hold off
% hold off
%---------------------------------------------------------------------------------------

