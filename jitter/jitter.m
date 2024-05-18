  
clc;clear all; 
Eo=.576;      % Ethernet Overhead in micro sec
R=.304;       % Length of report message in micro sec
Gt=5;         % Guard time in micro sec
D=12; % packet length in micro sec
N=16; % no of ONUs

T_cycle = 2000;%in micro sec
W_max = (T_cycle-N*Gt)/N;

for i=1:20 %for initializing random packets
    sum=0;
    for j=1:500
        for j_new=2:501
    Delay_sum=0;
    n=0;
    
    for k=1:16 % for 16 ONUs
    r(k)=randi([0 i],1,1); % random data packets (between 0-10)
    r2(k)= 0.25*r(k); %intra pon data packet, assuming 10% of intra pon data 
    r1(k)=r(k)-r2(k); %inter pon data packet
    
    W_R=12.576*r1(k)+R;
    if W_R<=W_max
        Delay=W_R+T_cycle/2;
    elseif (W_R>W_max) & (W_R<2*W_max)
        Delay=W_max+T_cycle/2+T_cycle;
    elseif (W_R>2*W_max) & (W_R<3*W_max)
        Delay=W_max+T_cycle/2+2*T_cycle;
    elseif (W_R>3*W_max) & (W_R<4*W_max)
         Delay=W_max+T_cycle/2+3*T_cycle;
    elseif (W_R>4*W_max) & (W_R<5*W_max)
         Delay=W_max+T_cycle/2+5*T_cycle;
     elseif (W_R>5*W_max) & (W_R<6*W_max)
     Delay=W_max+T_cycle/2+6*T_cycle;
     else
        Delay=W_max+T_cycle/2+7*T_cycle;
        
    end
    end
    Delay_sum= Delay_sum+Delay
    
        end      
       diff= sqrt((Delay_sum-Delay)^2)

    end
end


