load Output_1.txt
load Input_1.txt
in = Input_1(:,1)+1i*Input_1(:,2);
out= Output_1(:,1)+1i*Output_1(:,2);
% subplot(1,2,1);
% title('Input');
%   plot(in);
% subplot(1,2,2);
% title('Output');
%   plot(out);
%X=20*log10(abs(in)/10)+30;
%X=sort(X);
%k=1:size(X);
%scatter(k,X,5,'filled');

n=size(out);

set(gca,'fontsize',15);
hold on;
scatter(20*log10(abs(in)/10)+30,(20*log10(abs(out))/10)+30,5,'filled');
hold on;
title('Plot of Pin v/s Pout','FontWeight','bold');
ylabel('Pout(dBm)','FontWeight','bold');
xlabel('Pin(dBm)','FontWeight','bold');



%---------------------------------------------------------------------
% T=[X,in,out];
% [B,I]=sort(T(:,1));
% 
% x1=T(I,2);
% y1=T(I,3);
% 
% TD1=[x1(1:170000),y1(1:170000)];
% k=randperm(170000);
% TD1new=TD1(k(1:50000),:);
% 
% TD=[TD1new(:,1),TD1new(:,2);x1(170000:184000),y1(170000:184000) ];
% 
% fileID = fopen('Input.txt','w');
% fprintf(fileID,'%.16f %.16f \r\n',real(TD(:,1)),imag(TD(:,1)));
% fclose(fileID);
% 
% fileID = fopen('Output.txt','w');
% fprintf(fileID,'%.16f %.16f \r\n',real(TD(:,2)),imag(TD(:,2)));
% fclose(fileID);
% 
% k=1:size(TD(:,1));
% %scatter(k,20*log10(abs(TD(:,1))/10)+30,5,'filled');
% 
% scatter(20*log10(abs(TD(:,1))/10)+30,20*log10(abs(TD(:,2))/10)+30,5,'filled');

%----------------------------------------------------------------------------
% title('Pout v/s Pin for Power Amplifier');
% xlabel('Pin(dBm)');
% ylabel('Pout(dBm)');
  %subplot(1,3,1);
% % subplot(1,3,3);
   %scatter(20*log(inmag),20*log((outmag./inmag)),5,'filled');
  % scatter(20*log(inmag),radtodeg((angle(out./in))),5,'filled');
  %plot(inmag,outmag);
 %  fout=fft(out);
  %fout=fft(out);
% subplot(1,3,2);
%  plot(10*log10(abs(fout)));
% 
% subplot(1,3,3);
%  plot(20*log10(abs(fout)));
  

%subplot(1,3,2);
%plot(inmag(50000:100000),outmag(50000:100000));




