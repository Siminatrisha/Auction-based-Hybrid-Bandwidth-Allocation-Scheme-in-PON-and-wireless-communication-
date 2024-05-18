%rough delay
clc;clear all; 
Eo=.576;      % Ethernet Overhead in micro sec
R=.304;       % Length of report message in micro sec
Gt=5;         % Guard time in micro sec
D=12; % packet length in micro sec
N=16; % no of ONUs

T_cycle = 2000;%in micro sec
W_max = (T_cycle-N*Gt)/N; % maximum bandwidth of each ONU

for k=1:1000   
for i=1:10 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([1,i],1,1); %data packets between (0-10)
        w_r(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r(k,j); %sum of 16 ONU
        
    end  
end
end