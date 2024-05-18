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
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r10(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r10(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=(3*10^8)/1.5;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay10_sum=0;
    delay10_sum_row=0;
if w_r10(:,1)>W_max
    w_rem1=w_r10-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r10;
    t_trans=w_r10;
    w_grant1=w_r10;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,2)>W_max
    w_rem2=w_r10-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r10;
    t_trans=w_r10;
    w_grant2=w_r10;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,3)>W_max
    w_rem3=w_r10-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r10;
    t_trans=w_r10;
    w_grant3=w_r10;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,4)>W_max
    w_rem4=w_r10-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r10;
    t_trans=w_r10;
    w_grant4=w_r10;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,5)>W_max
    w_rem5=w_r10-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r10;
    t_trans=w_r10;
    w_grant5=w_r10;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,6)>W_max
    w_rem6=w_r10-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r10;
    t_trans=w_r10;
    w_grant6=w_r10;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,7)>W_max
    w_rem7=w_r10-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r10;
    t_trans=w_r10;
    w_grant7=w_r10;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r10(:,8)>W_max
    w_rem8=w_r10-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r10;
    t_trans=w_r10;
    w_grant8=w_r10;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r10(:,9)>W_max
    w_rem9=w_r10-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r10;
    t_trans=w_r10;
    w_grant9=w_r10;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r10(:,10)>W_max
    w_rem10=w_r10-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r10;
    t_trans=w_r10;
    w_grant10=w_r10;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r10(:,11)>W_max
    w_rem11=w_r10-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r10;
    t_trans=w_r10;
    w_grant11=w_r10;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r10(:,12)>W_max
    w_rem12=w_r10-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r10;
    t_trans=w_r10;
    w_grant12=w_r10;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r10(:,13)>W_max
    w_rem13=w_r10-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r10;
    t_trans=w_r10;
    w_grant13=w_r10;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r10(:,14)>W_max
    w_rem14=w_r10-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r10;
    t_trans=w_r10;
    w_grant14=w_r10;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r10(:,15)>W_max
    w_rem15=w_r10-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r10;
    t_trans=w_r10;
    w_grant15=w_r10;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r10(:,16)>W_max
    w_rem16=w_r10-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r10;
    t_trans=w_r10;
    w_grant16=w_r10;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t10_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t10_queue=t10_cycle/2;
if w_r10<W_max
    delay10=t_prop+t_trans+t10_queue;
    delay10_sum_row=mean(delay10,1);
    delay10_sum=mean(delay10_sum_row,2);
else
    delay10=t_prop+t_trans+t10_queue+t10_cycle;
    delay10_sum_row=mean(delay10,1);
    delay10_sum=mean(delay10_sum_row,2);
end
end

for k=1:1000   
for i=1:9 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r9(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r9(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay9_sum=0;
    delay9_sum_row=0;
if w_r9(:,1)>W_max
    w_rem1=w_r9-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r9;
    t_trans=w_r9;
    w_grant1=w_r9;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,2)>W_max
    w_rem2=w_r9-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r9;
    t_trans=w_r9;
    w_grant2=w_r9;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,3)>W_max
    w_rem3=w_r9-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r9;
    t_trans=w_r9;
    w_grant3=w_r9;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,4)>W_max
    w_rem4=w_r9-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r9;
    t_trans=w_r9;
    w_grant4=w_r9;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,5)>W_max
    w_rem5=w_r9-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r9;
    t_trans=w_r9;
    w_grant5=w_r9;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,6)>W_max
    w_rem6=w_r9-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r9;
    t_trans=w_r9;
    w_grant6=w_r9;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,7)>W_max
    w_rem7=w_r9-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r9;
    t_trans=w_r9;
    w_grant7=w_r9;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r9(:,8)>W_max
    w_rem8=w_r9-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r9;
    t_trans=w_r9;
    w_grant8=w_r9;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r9(:,9)>W_max
    w_rem9=w_r9-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r9;
    t_trans=w_r9;
    w_grant9=w_r9;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r9(:,10)>W_max
    w_rem10=w_r9-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r9;
    t_trans=w_r9;
    w_grant10=w_r9;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r9(:,11)>W_max
    w_rem11=w_r9-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r9;
    t_trans=w_r9;
    w_grant11=w_r9;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r9(:,12)>W_max
    w_rem12=w_r9-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r9;
    t_trans=w_r9;
    w_grant12=w_r9;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r9(:,13)>W_max
    w_rem13=w_r9-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r9;
    t_trans=w_r9;
    w_grant13=w_r9;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r9(:,14)>W_max
    w_rem14=w_r9-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r9;
    t_trans=w_r9;
    w_grant14=w_r9;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r9(:,15)>W_max
    w_rem15=w_r9-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r9;
    t_trans=w_r9;
    w_grant15=w_r9;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r9(:,16)>W_max
    w_rem16=w_r9-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r9;
    t_trans=w_r9;
    w_grant16=w_r9;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t9_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t9_queue=t9_cycle/2;
if w_r9<W_max
    delay9=t_prop+t_trans+t9_queue;
    delay9_sum_row=mean(delay9,1);
    delay9_sum=mean(delay9_sum_row,2);
else
    delay9=t_prop+t_trans+t9_queue+t9_cycle;
    delay9_sum_row=mean(delay9,1);
    delay9_sum=mean(delay9_sum_row,2);
end
end

for k=1:1000   
for i=1:8 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r8(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r8(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay8_sum=0;
    delay8_sum_row=0;
if w_r8(:,1)>W_max
    w_rem1=w_r8-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r8;
    t_trans=w_r8;
    w_grant1=w_r8;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,2)>W_max
    w_rem2=w_r8-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r8;
    t_trans=w_r8;
    w_grant2=w_r8;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,3)>W_max
    w_rem3=w_r8-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r8;
    t_trans=w_r8;
    w_grant3=w_r8;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,4)>W_max
    w_rem4=w_r8-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r8;
    t_trans=w_r8;
    w_grant4=w_r8;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,5)>W_max
    w_rem5=w_r8-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r8;
    t_trans=w_r8;
    w_grant5=w_r8;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,6)>W_max
    w_rem6=w_r8-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r8;
    t_trans=w_r8;
    w_grant6=w_r8;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,7)>W_max
    w_rem7=w_r8-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r8;
    t_trans=w_r8;
    w_grant7=w_r8;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r8(:,8)>W_max
    w_rem8=w_r8-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r8;
    t_trans=w_r8;
    w_grant8=w_r8;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r8(:,9)>W_max
    w_rem9=w_r8-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r8;
    t_trans=w_r8;
    w_grant9=w_r8;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r8(:,10)>W_max
    w_rem10=w_r8-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r8;
    t_trans=w_r8;
    w_grant10=w_r8;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r8(:,11)>W_max
    w_rem11=w_r8-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r8;
    t_trans=w_r8;
    w_grant11=w_r8;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r8(:,12)>W_max
    w_rem12=w_r8-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r8;
    t_trans=w_r8;
    w_grant12=w_r8;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r8(:,13)>W_max
    w_rem13=w_r8-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r8;
    t_trans=w_r8;
    w_grant13=w_r8;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r8(:,14)>W_max
    w_rem14=w_r8-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r8;
    t_trans=w_r8;
    w_grant14=w_r8;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r8(:,15)>W_max
    w_rem15=w_r8-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r8;
    t_trans=w_r8;
    w_grant15=w_r8;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r8(:,16)>W_max
    w_rem16=w_r8-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r8;
    t_trans=w_r8;
    w_grant16=w_r8;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t8_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t8_queue=t8_cycle/2;
if w_r8<W_max
    delay8=t_prop+t_trans+t8_queue;
    delay8_sum_row=mean(delay8,1);
    delay8_sum=mean(delay8_sum_row,2);
else
    delay8=t_prop+t_trans+t8_queue+t8_cycle;
    delay8_sum_row=mean(delay8,1);
    delay8_sum=mean(delay8_sum_row,2);
end
end

for k=1:1000   
for i=1:7 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r7(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r7(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay7_sum=0;
    delay7_sum_row=0;
if w_r7(:,1)>W_max
    w_rem1=w_r7-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r7;
    t_trans=w_r7;
    w_grant1=w_r7;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,2)>W_max
    w_rem2=w_r7-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r7;
    t_trans=w_r7;
    w_grant2=w_r7;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,3)>W_max
    w_rem3=w_r7-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r7;
    t_trans=w_r7;
    w_grant3=w_r7;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,4)>W_max
    w_rem4=w_r7-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r7;
    t_trans=w_r7;
    w_grant4=w_r7;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,5)>W_max
    w_rem5=w_r7-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r7;
    t_trans=w_r7;
    w_grant5=w_r7;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,6)>W_max
    w_rem6=w_r7-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r7;
    t_trans=w_r7;
    w_grant6=w_r7;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,7)>W_max
    w_rem7=w_r7-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r7;
    t_trans=w_r7;
    w_grant7=w_r7;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r7(:,8)>W_max
    w_rem8=w_r7-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r7;
    t_trans=w_r7;
    w_grant8=w_r7;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r7(:,9)>W_max
    w_rem9=w_r7-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r7;
    t_trans=w_r7;
    w_grant9=w_r7;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r7(:,10)>W_max
    w_rem10=w_r7-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r7;
    t_trans=w_r7;
    w_grant10=w_r7;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r7(:,11)>W_max
    w_rem11=w_r7-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r7;
    t_trans=w_r7;
    w_grant11=w_r7;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r7(:,12)>W_max
    w_rem12=w_r7-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r7;
    t_trans=w_r7;
    w_grant12=w_r7;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r7(:,13)>W_max
    w_rem13=w_r7-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r7;
    t_trans=w_r7;
    w_grant13=w_r7;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r7(:,14)>W_max
    w_rem14=w_r7-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r7;
    t_trans=w_r7;
    w_grant14=w_r7;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r7(:,15)>W_max
    w_rem15=w_r7-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r7;
    t_trans=w_r7;
    w_grant15=w_r7;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r7(:,16)>W_max
    w_rem16=w_r7-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r7;
    t_trans=w_r7;
    w_grant16=w_r7;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t7_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t7_queue=t7_cycle/2;
if w_r7<W_max
    delay7=t_prop+t_trans+t7_queue;
    delay7_sum_row=mean(delay7,1);
    delay7_sum=mean(delay7_sum_row,2);
else
    delay7=t_prop+t_trans+t7_queue+t7_cycle;
    delay7_sum_row=mean(delay7,1);
    delay7_sum=mean(delay7_sum_row,2);
end
end

for k=1:1000   
for i=1:6 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r6(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r6(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay6_sum=0;
    delay6_sum_row=0;
if w_r6(:,1)>W_max
    w_rem1=w_r6-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r6;
    t_trans=w_r6;
    w_grant1=w_r6;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,2)>W_max
    w_rem2=w_r6-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r6;
    t_trans=w_r6;
    w_grant2=w_r6;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,3)>W_max
    w_rem3=w_r6-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r6;
    t_trans=w_r6;
    w_grant3=w_r6;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,4)>W_max
    w_rem4=w_r6-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r6;
    t_trans=w_r6;
    w_grant4=w_r6;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,5)>W_max
    w_rem5=w_r6-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r6;
    t_trans=w_r6;
    w_grant5=w_r6;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,6)>W_max
    w_rem6=w_r6-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r6;
    t_trans=w_r6;
    w_grant6=w_r6;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,7)>W_max
    w_rem7=w_r6-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r6;
    t_trans=w_r6;
    w_grant7=w_r6;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r6(:,8)>W_max
    w_rem8=w_r6-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r6;
    t_trans=w_r6;
    w_grant8=w_r6;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r6(:,9)>W_max
    w_rem9=w_r6-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r6;
    t_trans=w_r6;
    w_grant9=w_r6;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r6(:,10)>W_max
    w_rem10=w_r6-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r6;
    t_trans=w_r6;
    w_grant10=w_r6;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r6(:,11)>W_max
    w_rem11=w_r6-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r6;
    t_trans=w_r6;
    w_grant11=w_r6;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r6(:,12)>W_max
    w_rem12=w_r6-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r6;
    t_trans=w_r6;
    w_grant12=w_r6;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r6(:,13)>W_max
    w_rem13=w_r6-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r6;
    t_trans=w_r6;
    w_grant13=w_r6;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r6(:,14)>W_max
    w_rem14=w_r6-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r6;
    t_trans=w_r6;
    w_grant14=w_r6;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r6(:,15)>W_max
    w_rem15=w_r6-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r6;
    t_trans=w_r6;
    w_grant15=w_r6;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r6(:,16)>W_max
    w_rem16=w_r6-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r6;
    t_trans=w_r6;
    w_grant16=w_r6;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t6_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t6_queue=t6_cycle/2;
if w_r6<W_max
    delay6=t_prop+t_trans+t6_queue;
    delay6_sum_row=mean(delay6,1);
    delay6_sum=mean(delay6_sum_row,2);
else
    delay6=t_prop+t_trans+t6_queue+t6_cycle;
    delay6_sum_row=mean(delay6,1);
    delay6_sum=mean(delay6_sum_row,2);
end
end

for k=1:1000   
for i=1:5 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r5(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r5(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay5_sum=0;
    delay5_sum_row=0;
if w_r5(:,1)>W_max
    w_rem1=w_r5-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r5;
    t_trans=w_r5;
    w_grant1=w_r5;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,2)>W_max
    w_rem2=w_r5-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r5;
    t_trans=w_r5;
    w_grant2=w_r5;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,3)>W_max
    w_rem3=w_r5-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r5;
    t_trans=w_r5;
    w_grant3=w_r5;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,4)>W_max
    w_rem4=w_r5-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r5;
    t_trans=w_r5;
    w_grant4=w_r5;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,5)>W_max
    w_rem5=w_r5-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r5;
    t_trans=w_r5;
    w_grant5=w_r5;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,6)>W_max
    w_rem6=w_r5-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r5;
    t_trans=w_r5;
    w_grant6=w_r5;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,7)>W_max
    w_rem7=w_r5-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r5;
    t_trans=w_r5;
    w_grant7=w_r5;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r5(:,8)>W_max
    w_rem8=w_r5-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r5;
    t_trans=w_r5;
    w_grant8=w_r5;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r5(:,9)>W_max
    w_rem9=w_r5-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r5;
    t_trans=w_r5;
    w_grant9=w_r5;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r5(:,10)>W_max
    w_rem10=w_r5-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r5;
    t_trans=w_r5;
    w_grant10=w_r5;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r5(:,11)>W_max
    w_rem11=w_r5-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r5;
    t_trans=w_r5;
    w_grant11=w_r5;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r5(:,12)>W_max
    w_rem12=w_r5-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r5;
    t_trans=w_r5;
    w_grant12=w_r5;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r5(:,13)>W_max
    w_rem13=w_r5-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r5;
    t_trans=w_r5;
    w_grant13=w_r5;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r5(:,14)>W_max
    w_rem14=w_r5-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r5;
    t_trans=w_r5;
    w_grant14=w_r5;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r5(:,15)>W_max
    w_rem15=w_r5-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r5;
    t_trans=w_r5;
    w_grant15=w_r5;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r5(:,16)>W_max
    w_rem16=w_r5-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r5;
    t_trans=w_r5;
    w_grant16=w_r5;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t5_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t5_queue=t5_cycle/2;
if w_r5<W_max
    delay5=t_prop+t_trans+t5_queue;
    delay5_sum_row=mean(delay5,1);
    delay5_sum=mean(delay5_sum_row,2);
else
    delay5=t_prop+t_trans+t5_queue+t5_cycle;
    delay5_sum_row=mean(delay5,1);
    delay5_sum=mean(delay5_sum_row,2);
end
end

for k=1:1000   
for i=1:4 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r4(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r4(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay4_sum=0;
    delay4_sum_row=0;
if w_r4(:,1)>W_max
    w_rem1=w_r4-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r4;
    t_trans=w_r4;
    w_grant1=w_r4;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,2)>W_max
    w_rem2=w_r4-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r4;
    t_trans=w_r4;
    w_grant2=w_r4;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,3)>W_max
    w_rem3=w_r4-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r4;
    t_trans=w_r4;
    w_grant3=w_r4;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,4)>W_max
    w_rem4=w_r4-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r4;
    t_trans=w_r4;
    w_grant4=w_r4;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,5)>W_max
    w_rem5=w_r4-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r4;
    t_trans=w_r4;
    w_grant5=w_r4;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,6)>W_max
    w_rem6=w_r4-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r4;
    t_trans=w_r4;
    w_grant6=w_r4;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,7)>W_max
    w_rem7=w_r4-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r4;
    t_trans=w_r4;
    w_grant7=w_r4;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r4(:,8)>W_max
    w_rem8=w_r4-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r4;
    t_trans=w_r4;
    w_grant8=w_r4;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r4(:,9)>W_max
    w_rem9=w_r4-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r4;
    t_trans=w_r4;
    w_grant9=w_r4;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r4(:,10)>W_max
    w_rem10=w_r4-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r4;
    t_trans=w_r4;
    w_grant10=w_r4;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r4(:,11)>W_max
    w_rem11=w_r4-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r4;
    t_trans=w_r4;
    w_grant11=w_r4;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r4(:,12)>W_max
    w_rem12=w_r4-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r4;
    t_trans=w_r4;
    w_grant12=w_r4;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r4(:,13)>W_max
    w_rem13=w_r4-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r4;
    t_trans=w_r4;
    w_grant13=w_r4;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r4(:,14)>W_max
    w_rem14=w_r4-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r4;
    t_trans=w_r4;
    w_grant14=w_r4;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r4(:,15)>W_max
    w_rem15=w_r4-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r4;
    t_trans=w_r4;
    w_grant15=w_r4;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r4(:,16)>W_max
    w_rem16=w_r4-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r4;
    t_trans=w_r4;
    w_grant16=w_r4;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t4_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t4_queue=t4_cycle/2;
if w_r4<W_max
    delay4=t_prop+t_trans+t4_queue;
    delay4_sum_row=mean(delay4,1);
    delay4_sum=mean(delay4_sum_row,2);
else
    delay4=t_prop+t_trans+t4_queue+t4_cycle;
    delay4_sum_row=mean(delay4,1);
    delay4_sum=mean(delay4_sum_row,2);
end
end

for k=1:1000   
for i=1:3 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r3(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r3(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay3_sum=0;
    delay3_sum_row=0;
if w_r3(:,1)>W_max
    w_rem1=w_r3-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r3;
    t_trans=w_r3;
    w_grant1=w_r3;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,2)>W_max
    w_rem2=w_r3-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r3;
    t_trans=w_r3;
    w_grant2=w_r3;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,3)>W_max
    w_rem3=w_r3-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r3;
    t_trans=w_r3;
    w_grant3=w_r3;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,4)>W_max
    w_rem4=w_r3-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r3;
    t_trans=w_r3;
    w_grant4=w_r3;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,5)>W_max
    w_rem5=w_r3-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r3;
    t_trans=w_r3;
    w_grant5=w_r3;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,6)>W_max
    w_rem6=w_r3-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r3;
    t_trans=w_r3;
    w_grant6=w_r3;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,7)>W_max
    w_rem7=w_r3-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r3;
    t_trans=w_r3;
    w_grant7=w_r3;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r3(:,8)>W_max
    w_rem8=w_r3-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r3;
    t_trans=w_r3;
    w_grant8=w_r3;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r3(:,9)>W_max
    w_rem9=w_r3-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r3;
    t_trans=w_r3;
    w_grant9=w_r3;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r3(:,10)>W_max
    w_rem10=w_r3-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r3;
    t_trans=w_r3;
    w_grant10=w_r3;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r3(:,11)>W_max
    w_rem11=w_r3-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r3;
    t_trans=w_r3;
    w_grant11=w_r3;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r3(:,12)>W_max
    w_rem12=w_r3-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r3;
    t_trans=w_r3;
    w_grant12=w_r3;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r3(:,13)>W_max
    w_rem13=w_r3-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r3;
    t_trans=w_r3;
    w_grant13=w_r3;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r3(:,14)>W_max
    w_rem14=w_r3-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r3;
    t_trans=w_r3;
    w_grant14=w_r3;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r3(:,15)>W_max
    w_rem15=w_r3-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r3;
    t_trans=w_r3;
    w_grant15=w_r3;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r3(:,16)>W_max
    w_rem16=w_r3-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r3;
    t_trans=w_r3;
    w_grant16=w_r3;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t3_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t3_queue=t3_cycle/2;
if w_r3<W_max
    delay3=t_prop+t_trans+t3_queue;
    delay3_sum_row=mean(delay3,1);
    delay3_sum=mean(delay3_sum_row,2);
else
    delay3=t_prop+t_trans+t3_queue+t3_cycle;
    delay3_sum_row=mean(delay3,1);
    delay3_sum=mean(delay3_sum_row,2);
end
end

for k=1:1000   
for i=1:2 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r2(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r2(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay2_sum=0;
    delay2_sum_row=0;
if w_r2(:,1)>W_max
    w_rem1=w_r2-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r2;
    t_trans=w_r2;
    w_grant1=w_r2;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,2)>W_max
    w_rem2=w_r2-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r2;
    t_trans=w_r2;
    w_grant2=w_r2;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,3)>W_max
    w_rem3=w_r2-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r2;
    t_trans=w_r2;
    w_grant3=w_r2;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,4)>W_max
    w_rem4=w_r2-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r2;
    t_trans=w_r2;
    w_grant4=w_r2;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,5)>W_max
    w_rem5=w_r2-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r2;
    t_trans=w_r2;
    w_grant5=w_r2;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,6)>W_max
    w_rem6=w_r2-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r2;
    t_trans=w_r2;
    w_grant6=w_r2;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,7)>W_max
    w_rem7=w_r2-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r2;
    t_trans=w_r2;
    w_grant7=w_r2;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r2(:,8)>W_max
    w_rem8=w_r2-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r2;
    t_trans=w_r2;
    w_grant8=w_r2;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r2(:,9)>W_max
    w_rem9=w_r2-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r2;
    t_trans=w_r2;
    w_grant9=w_r2;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r2(:,10)>W_max
    w_rem10=w_r2-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r2;
    t_trans=w_r2;
    w_grant10=w_r2;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r2(:,11)>W_max
    w_rem11=w_r2-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r2;
    t_trans=w_r2;
    w_grant11=w_r2;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r2(:,12)>W_max
    w_rem12=w_r2-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r2;
    t_trans=w_r2;
    w_grant12=w_r2;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r2(:,13)>W_max
    w_rem13=w_r2-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r2;
    t_trans=w_r2;
    w_grant13=w_r2;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r2(:,14)>W_max
    w_rem14=w_r2-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r2;
    t_trans=w_r2;
    w_grant14=w_r2;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r2(:,15)>W_max
    w_rem15=w_r2-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r2;
    t_trans=w_r2;
    w_grant15=w_r2;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r2(:,16)>W_max
    w_rem16=w_r2-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r2;
    t_trans=w_r2;
    w_grant16=w_r2;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t2_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t2_queue=t2_cycle/2;
if w_r2<W_max
    delay2=t_prop+t_trans+t2_queue;
    delay2_sum_row=mean(delay2,1);
    delay2_sum=mean(delay2_sum_row,2);
else
    delay2=t_prop+t_trans+t2_queue+t2_cycle;
    delay2_sum_row=mean(delay2,1);
    delay2_sum=mean(delay2_sum_row,2);
end
end

for k=1:1000   
for i=1 %initialize random packet
    
    sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r1(k,j)=p*12.576; %requested window
        sum_w=sum_w+w_r1(k,j); %sum of 16 ONU
        
    end  
end
end 

% Delay Calculation
c=3*10^8;
t_prop=(20*10^3)/c;% propagation delay
t_proc= 80; %processing delay in micro sec

for m=1:5
    delay1_sum=0;
    delay1_sum_row=0;
if w_r1(:,1)>W_max
    w_rem1=w_r1-W_max;
    t_trans=W_max;
    w_grant1=w_max;
else
    W_rem1=W_max-w_r1;
    t_trans=w_r1;
    w_grant1=w_r1;
end
 W_rem1(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,2)>W_max
    w_rem2=w_r1-W_max;
    t_trans=W_max;
    w_grant2=w_max;
else
    W_rem2=W_max-w_r1;
    t_trans=w_r1;
    w_grant2=w_r1;
end
W_rem2(:,[1,3,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,3)>W_max
    w_rem3=w_r1-W_max;
    t_trans=W_max;
    w_grant3=w_max;
    
else
    W_rem3=W_max-w_r1;
    t_trans=w_r1;
    w_grant3=w_r1;
end
W_rem3(:,[1,2,4,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,4)>W_max
    w_rem4=w_r1-W_max;
    t_trans=W_max;
    w_grant4=w_max;
else
    W_rem4=W_max-w_r1;
    t_trans=w_r1;
    w_grant4=w_r1;
end
W_rem4(:,[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,5)>W_max
    w_rem5=w_r1-W_max;
    t_trans=W_max;
    w_grant5=w_max;
else
    W_rem5=W_max-w_r1;
    t_trans=w_r1;
    w_grant5=w_r1;
end
W_rem5(:,[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,6)>W_max
    w_rem6=w_r1-W_max;
    t_trans=W_max;
    w_grant6=w_max;
else
    W_rem6=W_max-w_r1;
    t_trans=w_r1;
    w_grant6=w_r1;
end
W_rem6(:,[1,2,3,4,5,7,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,7)>W_max
    w_rem7=w_r1-W_max;
    t_trans=W_max;
    w_grant7=w_max;
else
    W_rem7=W_max-w_r1;
    t_trans=w_r1;
    w_grant7=w_r1;
end
W_rem7(:,[1,2,3,4,5,6,8,9,10,11,12,13,14,15,16])=[];
if w_r1(:,8)>W_max
    w_rem8=w_r1-W_max;
    t_trans=W_max;
    w_grant8=w_max;
else
    W_rem8=W_max-w_r1;
    t_trans=w_r1;
    w_grant8=w_r1;
end
W_rem8(:,[1,2,3,4,5,6,7,9,10,11,12,13,14,15,16])=[];
if w_r1(:,9)>W_max
    w_rem9=w_r1-W_max;
    t_trans=W_max;
    w_grant9=w_max;
else
    W_rem9=W_max-w_r1;
    t_trans=w_r1;
    w_grant9=w_r1;
end
W_rem9(:,[1,2,3,4,5,6,7,8,10,11,12,13,14,15,16])=[];
if w_r1(:,10)>W_max
    w_rem10=w_r1-W_max;
    t_trans=W_max;
    w_grant10=w_max;
else
    W_rem10=W_max-w_r1;
    t_trans=w_r1;
    w_grant10=w_r1;
end
W_rem10(:,[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16])=[];
if w_r1(:,11)>W_max
    w_rem11=w_r1-W_max;
    t_trans=W_max;
    w_grant11=w_max;
else
    W_rem11=W_max-w_r1;
    t_trans=w_r1;
    w_grant11=w_r1;
end
W_rem11(:,[1,2,3,4,5,6,7,8,9,10,12,13,14,15,16])=[];
if w_r1(:,12)>W_max
    w_rem12=w_r1-W_max;
    t_trans=W_max;
    w_grant12=w_max;
else
    W_rem12=W_max-w_r1;
    t_trans=w_r1;
    w_grant12=w_r1;
end
W_rem12(:,[1,2,3,4,5,6,7,8,9,10,11,13,14,15,16])=[];
if w_r1(:,13)>W_max
    w_rem13=w_r1-W_max;
    t_trans=W_max;
    w_grant13=w_max;
else
    W_rem13=W_max-w_r1;
    t_trans=w_r1;
    w_grant13=w_r1;
end
W_rem13(:,[1,2,3,4,5,6,7,8,9,10,11,12,14,15,16])=[];
if w_r1(:,14)>W_max
    w_rem14=w_r1-W_max;
    t_trans=W_max;
    w_grant14=w_max;
else
    W_rem14=W_max-w_r1;
    t_trans=w_r1;
    w_grant14=w_r1;
end
W_rem14(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,15,16])=[];
if w_r1(:,15)>W_max
    w_rem15=w_r1-W_max;
    t_trans=W_max;
    w_grant15=w_max;
else
    W_rem15=W_max-w_r1;
    t_trans=w_r1;
    w_grant15=w_r1;
end
W_rem15(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,16])=[];
if w_r1(:,16)>W_max
    w_rem16=w_r1-W_max;
    t_trans=W_max;
    w_grant16=w_max;
else
    W_rem16=W_max-w_r1;
    t_trans=w_r1;
    w_grant16=w_r1;
end
W_rem16(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])=[];
t1_cycle=w_grant1+w_grant2+w_grant3+w_grant4+w_grant5+w_grant6+w_grant7+w_grant8+w_grant9+w_grant10+w_grant11+w_grant12+w_grant13+w_grant14+w_grant15+w_grant16;
t1_queue=t1_cycle/2;
if w_r1<W_max
    delay1=t_prop+t_trans+t1_queue;
    delay1_sum_row=mean(delay1,1);
    delay1_sum=mean(delay1_sum_row,2);
else
    delay1=t_prop+t_trans+t1_queue+t1_cycle;
    delay1_sum_row=mean(delay1,1);
    delay1_sum=mean(delay1_sum_row,2);
end
end


delay=[delay1_sum,delay2_sum,delay3_sum,delay4_sum,delay5_sum,delay6_sum,delay7_sum,delay8_sum,delay9_sum,delay10_sum]
disp(delay)
