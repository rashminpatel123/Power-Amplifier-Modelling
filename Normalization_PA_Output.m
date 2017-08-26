load Output.txt
load Input.txt
in = Input(:,1)+1i*Input(:,2);
out= Output(:,1)+1i*Output(:,2);

L=length(out); 
gain_sum=0;
phase_sum=0;
count=0;
sum=0;
peak=0;
for i=1:L
        p=abs(out(i))*abs(out(i));
        sum=sum+p;
        if peak<p
            peak=p;
        end
        if 20*log(abs(in(i)))>-100
        gain_sum=gain_sum+20*log(abs(out(i))/abs(in(i)));
        phase_sum=phase_sum+angle(out(i)/in(i));
        count=count+1;
        end
end

SSG=gain_sum/count;   
display(SSG); 

SSP_rad=phase_sum/count;                                       
SSP_deg=radtodeg(SSP_rad);
display(SSP_deg);

SSG_Complex=SSG*(cos(SSP_rad)+1i*sin(SSP_rad));
display(10*log(SSG));        

% scatter(abs(in),abs(out),5,'filled');
% hold on;
% scatter(abs(in),abs(out/SSG_Complex),5,'filled');

% plot(10*log(abs(fft(out))));
% hold on;
% plot(10*log(abs(fft(in))));


PAR=peak/(sum/L);       %peak-to-average power ratio
display(10*log(PAR));






