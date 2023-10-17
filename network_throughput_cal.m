clc;
clear all;
close all;
Eo=.576;                    % Ethernet Overhead in micro sec
R=.304;                     % Length of report message in micro sec
Gt=5;                       % Guard time in micro sec
D=12;                       % packet length in micro sec
N=16;                       % no of ONUs
T_cycle = 2000;             %in micro sec
Relaxed_ONU=0;
S=0;
z=0;
Total_Required_BW_EXSTD_ONU=0;
Exhausted_onu=0;
Required_BW_Exhausted_onu=0;
Experienced_Delay=0;
Total_Experienced_Delay=0;
Grand_Total_Delay=0;
Great_Grand=0;
it=500;
xp=zeros(1,10);
yp=zeros(1,10);
Total_Grand=0;
Get_Message=0;
Throughput_Ratio=0;
Great_Grand_Throughput_r=0;
Exhausted_onu=0;
Unused_time_per_cycle=0;
Relaxed_ONU=0;

Great_Grand_Throughput_r_Store = zeros(1,1500); %declaring a vector to store 1500 data
Great_Grand_Throughput_r_Sum = 0;

counter = 1;
for m=1:5
for y=1:10
    Great_Grand_Throughput_r_Store = zeros(1,1000);
    Great_Grand_Throughput_r_Sum = 0;
    
   for  z=1:1000
      N=16;
      Exhausted_onu=0;
      Great_Grand_Throughput_r=0;
    
      for j=1:16;
          r=randi([0 y],1,1);     % random data packets
          W_r(z,j)=2*12.576*r+R;              % Requested window size
          w_r_round=round(W_r);
      end
      Report_Message=mean(w_r_round,1)
      disp(Report_Message);
                                                        % Count the number of active ONU

      for k=1:16;                      % for 16 ONUs

         if  Report_Message(1,k)==0
            N=N-1;
         end
      end



     Useable_time=T_cycle-N*Gt;            % Useable time per cycle
     W_max =Useable_time/N;                % maximum bandwidth of each ONU
     B=sort(Report_Message,'descend');     % Sorting the total report message
     S=sum(B);                             % Sum of total requested time
     Unused_time_per_cycle=Useable_time-S; % Available time per cycle
      disp('Value of N:');
      disp(N);
      disp('Value of W_max:');
      disp(W_max);
      disp('Value of S:');
      disp(S);
      disp('Value of Unused_time_per_cycle:');
      disp(Unused_time_per_cycle);
                                            % Calculate the number of Exhausted ONUs

    for i=1:16
        if Report_Message(1,i)> W_max
            Exhausted_onu=Exhausted_onu+1;
        
        end
    end
    disp('Number of Exhausted_onu:');
    disp(Exhausted_onu);
                                                    
    
    % Calculation of extra available bandwidth utilization
                                                            
    if Exhausted_onu>0;
        Extra_Available_BW=Unused_time_per_cycle/Exhausted_onu;
    else
        Extra_Available_BW=0; 
    end
    
    disp('Value of Extra_Available_BW:');
    disp(Extra_Available_BW);

    if Extra_Available_BW>0
        Possible_provided_BW=W_max+Extra_Available_BW;       %Possible allocated time for ONU
    else
       Possible_provided_BW=W_max;
    end
    Possible_provided_BW_Round=round(Possible_provided_BW);
    disp('Value of Possible_provided_BW_Round: ');
    disp(Possible_provided_BW_Round);

                                                                   %Delay calculation for Exhasuted ONU

    for j=1:16
        if Report_Message(1,j)>=Possible_provided_BW_Round
            Get_Message(1,j)=Possible_provided_BW;
            
        else
            Get_Message(1,j)=Report_Message(1,j);
              
        end
        
    end
      Get_Message_Round=round(Get_Message);
      disp('Value of Get_Message_Round:' );
      disp(Get_Message_Round);
      
      Grand_Get_Message=sum(Get_Message_Round);
      disp('Value of Grand_Get_Message:' );
      disp(Grand_Get_Message);
      
      Throughput_Ratio=Grand_Get_Message/S;
      disp('Value of Throughput_Ratio:' );
      disp(Throughput_Ratio);
      Great_Grand_Throughput_r=Great_Grand_Throughput_r+Throughput_Ratio;
      disp('Value of Great_Grand_Throughput_r:' );
      disp(Great_Grand_Throughput_r);
      
      Great_Grand_Throughput_r_Sum = Great_Grand_Throughput_r_Sum + Great_Grand_Throughput_r;
Great_Grand_Throughput_r_Store(1,z) = Great_Grand_Throughput_r;
      disp('Value of Great_Grand_Throughput_r_Sum:' );
      disp(Great_Grand_Throughput_r_Sum);
   
   end

   avg=Great_Grand_Throughput_r_Sum/1000;
   disp('Value of avg:' );
   disp(avg);
   xp(y)=y;
   yp(y)=avg;
end
end

  disp(yp);
  
