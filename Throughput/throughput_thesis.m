clc;clear all; 
Eo=.576;      % Ethernet Overhead in micro sec
R=.304;       % Length of report message in micro sec
Gt=5;         % Guard time in micro sec
D=12; % packet length in micro sec
N=16; % no of ONUs
excess_bw_per_onu=0;

T_cycle = 2000;%in micro sec


for i=1:10
    Great_Grand_Throughput_r_Store = zeros(1,500);
    Great_Grand_Throughput_r_Sum = 0;
    
   for  z=1:1000
      N=16;
      Exhausted_onu=0;
      Great_Grand_Throughput_r=0;
      sum_w=0;
    for j=1:16 %for 16 ONU
        
        p=randi([0,i],1,1); %data packets between (0-10)
        w_r10_a(z,j)=p*12.576; %requested window
        sum_w=sum_w+w_r10_a(z,j); %sum of 16 ONU
        
    end  


w_r10_round=round(w_r10_a)
% Count the number of active ONU

      for k=1:16;                      % for 16 ONUs

         if  w_r10_a(1,k)==0
            N=N-1;
         end
      end
      disp('Value of N:');
      disp(N);
      Useable_time=T_cycle-N*Gt;
      disp('Value of Useable time:');
      disp(Useable_time);
      W_max =Useable_time/N;
      disp('Value of W_max:');
      disp(W_max);
      w_r10_sum=sum(w_r10_round)
      disp('Value of w_r sum:');
      disp(w_r10_sum);
      excess_bw=Useable_time-w_r10_sum;
      disp('Value of excess BW:');
      disp(excess_bw)
        
      if excess_bw>0
          excess_bw_per_onu=excess_bw/N;
      end
      disp('Value of excess BW per ONU:');
      disp(excess_bw_per_onu) 

    if excess_bw_per_onu>0
        Possible_provided_BW=W_max+excess_bw_per_onu;       %Possible allocated time for ONU
    else
       Possible_provided_BW=W_max;
    end
    Possible_provided_BW_Round=round(Possible_provided_BW);
    disp('Value of Possible_provided_BW_Round: ');
    disp(Possible_provided_BW_Round);

     for j=1:16
        if w_r10_a(1,j)>=Possible_provided_BW_Round
            w_g10(1,j)=Possible_provided_BW;
            
        else
            w_g10(1,j)=w_r10_a(1,j);
              
        end
        
    
      w_g10_round=round(w_g10);
      disp('Value of grant message round:' );
      disp(w_g10_round);

      w_g10_sum=sum(w_g10_round);
      disp('Value of grant message sum:' );
      disp(w_g10_sum);
     
      Throughput_Ratio=w_g10_sum/w_r10_sum;
      disp('Value of Throughput_Ratio:' );
      disp(Throughput_Ratio);
   end
   end
end