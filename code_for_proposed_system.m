  %rough delay
clc;clear all; 
Eo=.576;      % Ethernet Overhead in micro sec
R=.304;       % Length of report message in micro sec
Gt=5;         % Guard time in micro sec
D=12; % packet length in micro sec
N=16; % no of ONUs

T_cycle = 2000;%in micro sec
W_max = (T_cycle-N*Gt)/N; % maximum bandwidth of each ONU

%W_th1=W_max/2; % maximum bandwidth of thread1
    for i=1:20 %for initializing random packets
    sum=0;
    for j=1:500
    Delay_sum=0;
    n=0;
  % Wextra=0;
  % Wextra_T=0;
    Wavg=0;
    for k=1:16 % for 16 ONUs
    r(k)=randi([0 i],1,1); % random data packets (between 0-10)
    r2(k)= 0.1*r(k); %intra pon data packet, assuming 10% of intra pon data 
    r1(k)=r(k)-r2(k); %inter pon data packet
    
    W_R=12.576*r1(k)+R; % Requested window size (E0 + pkt length)
    
    if W_R<=W_max 
        Delay=W_R+T_cycle/2; 
    else
        Delay=W_max+T_cycle/2+T_cycle;
    end
       Delay_sum=Delay_sum+Delay; 
   end
   avg=Delay_sum/(16);
   sum=sum+avg;
    end
    a(i)=sum/(j*1000); 
    disp(a);
    hold on;
    plot(i,a,'*');
   
end

    

   
       
       