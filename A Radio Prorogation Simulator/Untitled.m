clc; clear ;close all;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

s = RandStream('mlfg6331_64');
d0=100;
distance_vector=transpose(d0:100:500);
op_freq=4*10.^9;
lambda=(3*10^8)/op_freq ;
standard_deviation=5;
no_samples1=50 ;

n=[3 ; 4.4 ; 6 ; 10] ;

J = sym('J', [length(n),1]) ;
ode = sym('ode', [length(n),1]) ;
es_n = sym('es_n', [length(n),1]) ;
syms equ %(5,3)
equ = sym('equ', [length(distance_vector),length(n)]) ;

%  P_measured_for_plot=zeros(5,50,3) ;
  P_measured=zeros(length(distance_vector),no_samples1,length(n)) ;
%randsample(s,Population,5,50,true);
 mean_avg = zeros(length(distance_vector),length(n)) ;
 mean_avg(1,:) =  -20*log10(lambda/(4*(pi)*d0)) ;
 P_measured(1,:,:) = repmat(normrnd(mean_avg(1,1),standard_deviation,[1,no_samples1]),1,1,length(n)) ;


for k=1:length(n)

% for i=1:5    
%  for u=1:50
%    P_measured(u,i,k)=P_measured(1,u)+10.*n(k,1).*log10(distance_vector(i,1)./d0) ;
%    %+standard_deviation ; 
%  end
% end


% for i=1:5
%     P_measured(i,k)=randsample(s,Population,50,true);
% end


for i=2:length(distance_vector)
 mean_avg(i,k) = mean_avg(1,1)+10.*n(k,1).*log10(distance_vector(i,1)./d0) ;
 P_measured(i,:,k) = normrnd(mean_avg(i,k),standard_deviation,[1,no_samples1]) ;
end


for i=1:length(distance_vector)
    P_measured_avg(i,k)=mean(P_measured(i,:,k)) ;
end


for i=1:length(distance_vector) 
  equ(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*es_n(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
end




J(k,1)=(sum(equ(:,k)))./length(distance_vector) ;



ode(k,1)=diff(J(k,1),es_n(k,1)) ;
n_star(k,1) = round(double(solve(ode(k,1))),4);


%t1(u)=mean(estimated_vector); 




for i=1:length(distance_vector)
  Path_loss_model(i,k)=P_measured_avg(1,k)+10.*n_star(k,1).*log10(distance_vector(i,1)./d0) ;
  %+standard_deviation_es(k,1) ;
end

for i=1:length(distance_vector)
    for j=1:no_samples1
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start(i,j,k) = (Path_loss_model(i,k)-P_measured(i,j,k)).^2 ;
    end
    variance_es(i,k)=mean(variance_start(i,:,k)) ;
    standard_deviation_es(i,k) = sqrt(variance_es(i,k)) ;
end




% for k=1:1:no_samples
%     for i=1:50
%        Path_loss_model(i,k)=P_0(i)+(10*n1*log10(distance_vector(k)./d0))+standard_deviation;
%      % Path_loss(i,j)=P_0(i)-(10*n1*log(distance_vector(j)./d0))+standard_devision;
%     end
% end

% for i=1:5
%   P_r(i)=-10.*log(distance_vector(i)./d0);  
% end


 %for i=1:5
   accuracy(k,1) = 100 - (abs((sum((P_measured_avg(:,k)-Path_loss_model(:,k))./(P_measured_avg(:,k)))))*100);
   %accuracy(i,k)=(Path_loss_model(i,k)-P_measured_avg(i,k)).^2 ;
   %    100-(abs((-t1(u)+n1)./n1))*100;
 %end
%  P_measured_for_plot(:,:,k)=P_measured ;
end

figure(1)
for k =1:length(n)
 for z=1:no_samples1
    scatter(distance_vector,reshape(P_measured(:,z,k),1,[]).','Filled')
    hold on
 end
end
for k=1:length(n)
 scatter(distance_vector,P_measured_avg(:,k),'Filled')
 hold on
end
h1=plot(distance_vector,Path_loss_model(:,1),'LineWidth',2) ;
hold on
h2=plot(distance_vector,Path_loss_model(:,2),'LineWidth',2) ;
hold on
h3=plot(distance_vector,Path_loss_model(:,3),'LineWidth',2) ;
hold on
h4=plot(distance_vector,Path_loss_model(:,4),'LineWidth',2) ;
grid on
legend([h1(1),h2(1),h3(1),h4],'n=3','n=4.4','n=6','n=10') ;
title ('Path loss vs Distance')
ylabel ('Path loss (dB)')
xlabel ('Distance')
hold on


%---------------------for accuracy plot--------------------------------------%

n2=3 ;

syms J_for_acc
syms ode_for_acc
syms es_n_for_acc
equ_for_acc = sym('equ_for_acc', [length(distance_vector),1]) ;



%P_0_measured_for_acc=randsample(s,Population,100,true);   

for no_of_samples2=1:100
     
P_measured_for_acc= normrnd(mean_avg(1,1),standard_deviation,[length(distance_vector),no_of_samples2]) ;
    
% for k=1:no_of_samples
%  for i=1:5    
%    P_measured_for_acc(i,k)=P_measured_for_acc(1,k)+10.*n2.*log10(distance_vector(i,1)./d0) ;
%    %+standard_deviation ; 
%  end
%end

% for i=1:5
%     P_measured(i,k)=randsample(s,Population,50,true);
% end

for i=1:length(distance_vector)
    P_measured_avg_for_acc(i,1)=mean(P_measured_for_acc(i,:)) ;
end


for i=1:length(distance_vector) 
  equ_for_acc(i,1)=(P_measured_avg_for_acc(i,1)-P_measured_avg_for_acc(1,1)-10.*es_n_for_acc.*log10(distance_vector(i,1)./d0)).^2 ;
end


J_for_acc=(sum(equ_for_acc(:,1)))./length(distance_vector) ;



ode_for_acc=diff(J_for_acc,es_n_for_acc) ;
n_star_for_acc = round(double(solve(ode_for_acc)),4);


%t1(u)=mean(estimated_vector); 

% for i=1:length(distance_vector)
%    variance_start_for_acc(i,1)=(P_measured_avg_for_acc(i,1)-P_measured_avg_for_acc(1,1)-10.*n_star_for_acc.*log10(distance_vector(i,1)./d0)).^2 ;
% end
% 
% variance_es_for_acc=mean(variance_start_for_acc(:,1)) ;
% standard_deviation_es_for_acc(no_of_samples2) = sqrt(variance_es_for_acc) ;


for i=1:length(distance_vector)
  Path_loss_model_for_acc(i,1)=P_measured_avg_for_acc(1,1)+10.*n_star_for_acc.*log10(distance_vector(i,1)./d0) ;
  %+standard_deviation_es_for_acc ;
end

for i=1:length(distance_vector)
    for j=1:no_of_samples2
%     variance_start(i,k)=(P_measured_avg(i,k)-P_measured_avg(1,k)-10.*n_star(k,1).*log10(distance_vector(i,1)./d0)).^2 ;
      variance_start_for_acc(i,j) = (Path_loss_model_for_acc(i,1)-P_measured_for_acc(i,j)).^2 ;
    end
    variance_es_for_acc(i,1)=mean(variance_start_for_acc(i,:)) ;
    standard_deviation_es_for_acc(i,1) = sqrt(variance_es_for_acc(i,1)) ;
end

% for k=1:1:no_samples
%     for i=1:50
%        Path_loss_model(i,k)=P_0(i)+(10*n1*log10(distance_vector(k)./d0))+standard_deviation;
%      % Path_loss(i,j)=P_0(i)-(10*n1*log(distance_vector(j)./d0))+standard_devision;
%     end
% end

% for i=1:5
%   P_r(i)=-10.*log(distance_vector(i)./d0);  
% end


% for i=1:5
   accuracy_for_plot(1,no_of_samples2)=100-((abs(sum((Path_loss_model_for_acc(:,1)-P_measured_avg_for_acc(:,1))./(P_measured_avg_for_acc(:,1)))))*100) ;
%    100-(abs((-t1(u)+n1)./n1))*100;
 %end
 
 vars = {'P_measured_for_acc','P_measured_avg_for_acc', ...
      'equ_for_acc','variance_start_for_acc','Path_loss_model_for_acc'};
clear(vars{:})
end
%-----------------------------------------------------------%

no_of_samples2 =transpose(1:100) ;
accuracy_for_plot = transpose(accuracy_for_plot) ;

figure(2)
plot(no_of_samples2,accuracy_for_plot,'LineWidth',2)
grid on
title ('Accuracy vs Number of samples')
ylabel ('Accuracy  %')
xlabel ('Number of Samples ')

%------------------------------------------------------------------%
%------------------------------------------------------------------%
power_population = 80:100;
power_t=randsample(s,power_population,1) ;
t_gain_population = 10:20;
t_gain=randsample(s,t_gain_population,1) ;
r_gain_population = 10:20;
r_gain=randsample(s,r_gain_population,1) ;
lambda=(3*10^8)/op_freq ;
power_rec_ex= -5 ;
 a =zeros(length(n),1) ;
 q_population = 0:100;
 rng(500) ;
 q=39 ;
 %randsample(s,q_population,1) ;
 
for k=1:4
 l_es=0 ;
 l=zeros(length(distance_vector),1) ;
 for i=1:length(distance_vector)
  for t=1:no_samples1
  power_rec(i,t,k) = power_t + t_gain + r_gain - P_measured(i,t,k)  ;
  if power_rec(i,t,k)>= power_rec_ex
    l(i,1)=l(i,1)+1 ;
  end
  end
  
  power_rec_es(i,k) = power_t + t_gain + r_gain - Path_loss_model(i,k)  ;
  if power_rec_es(i,k)>= power_rec_ex
    l_es=l_es+1 ;
  end
  
 
 percent_rec_pow_more(i,k) = (l(i,1)/no_samples1)*100 ;
 

 
 if(percent_rec_pow_more(i,k)>=q)
     a(k,1) = a(k,1)+1 ;        
  end
  
  end
 percent_rec_pow_more_es(1,k) = (l_es/length(distance_vector))*100 ; 
 
  if a(k,1)==0
     max_dist_to_meet_rec_power(k,1)= 0 ;
 else
     max_dist_to_meet_rec_power(k,1) = distance_vector(a(k,1),1) ;
 end
 
end

 % q_population = 0:100;
 % q=randsample(s,q_population,1) ;
 
 % if q<=0
     % max_dist_to_meet_rec_power= 0 ;
 % else
     % max_dist_to_meet_rec_power = (q/100)*(distance_vector(l(i,1),1)) ;
 % end




%------------------------------------------------------------------%
