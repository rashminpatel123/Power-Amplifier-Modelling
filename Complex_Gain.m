function [ SSG_Complex ] = Complex_Gain( )
load Output.txt
load Input.txt
in = Input(:,1)+1i*Input(:,2);
out= Output(:,1)+1i*Output(:,2);

SSG=20*log10(mean(abs(out)./abs(in)));
display(SSG); 

SSP=mean(180*(angle(out./in)/pi));                                       
display(SSP);

SSG_Complex=(10^(SSG/20))*(cosd(SSP)+1i*sind(SSP));
display(SSG_Complex);

% subplot(1,2,1);
% scatter(20*log10(abs(in)/10)+30,20*log10(abs(out)./abs(in)),5,'filled');
% title('');
% ylabel('AM/AM (dB)');
% xlabel('Pin(dBm)');                                                                     
% 
% subplot(1,2,2);
% scatter(20*log10(abs(in)/10)+30,180*(angle(out./in))/pi,5,'filled');
% title('');
% ylabel('AM/PM (degrees)');
% xlabel('Pin(dBm)');
% display(10^(SSG/20));
end

