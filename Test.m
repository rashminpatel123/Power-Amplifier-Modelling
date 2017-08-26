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
                                             %rP_test=(mean(abs(X_Inv).*abs(X_Inv)))^0.5;    (rP_test=0.0534...rP_train=0.0546)
Y_Inv=H_matrix(X,K,M,s,N)*C_Inverse;     %----------Match input power to normalized Y Output

Y=H_matrix(Y_Inv,K,M,M,N-M)*C;


%scatter(20*log10(abs(X(s+M+1:s+N))/10)+30,20*log10(abs(Y))+30,5,'filled');
% k=1:1:size(Y);
% scatter(k,20*log(abs(fft(Y))),5,'filled');

%plot(20*log10(abs(fft(X_Inv))));

%--------------------------------------------------------------------------
% set(gca,'fontsize',15)
% hold on
% axis([-30 0 -30 0]);
% hold on
% scatter(20*log10(abs(X_Inv)/10)+30,20*log10(abs(Y_Inv)/10)+30,5,'filled');
% hold on;
% title('Pin v/s Pout for Inverse Model');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)');   
% 
% 
% scatter(20*log10(abs(X(s+M+1:s+N))/10)+30,20*log10(abs(Y)/10)+30,5,'filled');
% hold on;
% title('Pin v/s Pout for Full Model');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)'); 
% 
% 
% scatter(20*log10(abs(X(s+1:s+N))/10)+30,20*log10(abs(Y_PA(s+1:s+N))/10)+30,5,'filled');
% hold on;
% title('Plot of Pin v/s Pout','FontWeight','bold');
% ylabel('Pout(dBm)','FontWeight','bold');
% xlabel('Pin(dBm)','FontWeight','bold'); 
% 
% hold off
% hold off
%--------------------------------------------------------------------------
  %set(gca,'fontsize',15);
% nfft=1024*8;
% Fs=92.16;%(in MHz)
% f = (-nfft/2:nfft/2-1)*Fs/nfft;  
% span=70;
% scatter(f,20*log10(smooth(abs(fftshift(fft(Y_Inv,nfft))),span)),5,'filled');
% hold on;

% hold on
% hold on
% set(gca,'fontsize',15);
% scatter(f,20*log10(smooth(abs(fftshift(fft(X_Inv,nfft))),span)),5,'filled');
% hold on
% scatter(f,20*log10(smooth(abs(fftshift(fft(Y_PA(s+1:s+N),nfft))),span)),5,'filled');
% hold on;
% scatter(f,20*log10(smooth(abs(fftshift(fft(Y,nfft))),span)),5,'filled');
% title('Plot of Magnitude Spectrum');
% ylabel('Magnitude(dB)','FontWeight','bold');
% xlabel('Frequency(in MHz)','FontWeight','bold'); 
% hold off;
% hold off;

%_____________________________________________________________________________
% hold on
% scatter(1:size(X_Inv),20*log10(smooth(abs((fft(X_Inv))),70)),5,'filled');
% hold on;
% scatter(1:size(Y_PA(s+1:s+N)),20*log10(smooth(abs((fft(Y_PA(s+1:s+N)))),70)),5,'filled');
% hold on;
% scatter(1:size(Y),20*log10(smooth(abs((fft(Y))),70)),5,'filled');
% hold off;
% ___________________________________________________________________________

%    subplot(1,3,2);
   
      
%         plot(20*log10(abs(fft(Y))));



%     
% subplot(1,2,1);
% scatter(20*log10(abs(X_Inv(11:10000))/10)+30,20*log10(abs(Y)./abs(X_Inv(11:10000))),5,'filled');
% title('');
% ylabel('AM/AM (dB)');
% xlabel('Pin(dBm)');                                                                     
% 
% subplot(1,2,2);
% scatter(20*log10(abs(X_Inv(11:10000))/10)+30,180*(angle(Y./X_Inv(11:10000)))/pi,5,'filled');
% title('');
% ylabel('AM/PM (degrees)');
% xlabel('Pin(dBm)');

%scatter(20*log10(abs(Y_Inv(11:10000))/10)+30, 20*log10(abs(Y))+30,5,'filled');
%       hold on;
% % 
    
% title('After Linearization');
% ylabel('Pout(dBm)');
% xlabel('Pin(dBm)');   
   
%    Ym=zeros(9990,1); 
%    for i=1:9990
%        if(20*log10(Y(i))>0)
%            Ym(i)=1;
%        else
%            Ym(i)=Y(i);
%        end
%    end
%    
%   scatter(20*log10(abs(X(5011:15000))/10)+30,20*log10(abs(Ym))+30,5,'filled');
   







