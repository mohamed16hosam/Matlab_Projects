f=0:15 ;
h=[0.4 ;0 ;0.26 ;0 ;0 ;0.4 ;0 ;0.6 ;0 ;0.5];
H_freq_mag=abs(fft(h,16)) ;
H_freq_mag_squared=(H_freq_mag).^2 ;
scaled_noise_power=2./H_freq_mag_squared ;
figure(1)
bar(f,scaled_noise_power,1) ;
xlabel('Frequency');
ylabel('scaled noise power') ;
title('scaled noise power before waterfilling') ;
hold on
p=[20.47 ; 18.01 ; 18.43 ; 0 ; 2.65 ; 5.675 ; 15.71 ; 20.26 ; 18.06 ; ...
    20.26 ; 15.71 ; 5.675 ; 2.65 ; 0 ; 18.43 ; 18.01] ;
water_filled_power=[scaled_noise_power p] ;
figure(2)
bar(f,water_filled_power,1,'stacked') ;
xlabel('Frequency');
ylabel('scaled noise power') ;
title('scaled noise power after waterfilling') ;
hold off
