rng(5000) ;
% no coding %
x_nocodeQPSK = randi([0 1],12800,1);
x_nocode16QAM = randi([0 1],25600,1);
x_torepQPSK = randi([0 1],4200,1) ;
x_repQPSK = repelem(x_torepQPSK,3) ;
x_torep16QAM=randi([0 1],8500,1) ;
x_rep16QAM = repelem(x_torep16QAM,3) ;
for i=1:100
%Repetition Code%
x_repzpQPSK(((i-1)*128)+1:(i*128),1) =[0 ;0 ;x_repQPSK(((i-1)*126)+1:(i*126),1)];
x_repzp16QAM(((i-1)*256)+1:(i*256),1) = [0 ;x_rep16QAM(((i-1)*255)+1:(i*255),1)] ;
%QPSK interleaver %
intleav_QPSK_nocode=(reshape(x_nocodeQPSK(((i-1)*128)+1:(i*128),1),[16,8]))';
out_intleav_QPSK_nocode(((i-1)*128)+1:(i*128),1)=reshape(intleav_QPSK_nocode,128,1) ;
intleav_QPSK_rep =(reshape(x_repzpQPSK(((i-1)*128)+1:(i*128),1),[16,8]))' ;
out_intleav_QPSK_rep(((i-1)*128)+1:(i*128),1)=reshape(intleav_QPSK_rep,128,1) ;
%16QAM interleaver %
intleav_16QAM_nocode=(reshape(x_nocode16QAM(((i-1)*256)+1:(i*256),1),[16,16]))';
out_intleav_16QAM_nocode(((i-1)*256)+1:(i*256),1)=reshape(intleav_16QAM_nocode,256,1);
intleav_16QAM_rep=(reshape(x_repzp16QAM(((i-1)*256)+1:(i*256),1),[16,16]))';
out_intleav_16QAM_rep(((i-1)*256)+1:(i*256),1)=reshape(intleav_16QAM_rep,256,1);
end
Eb_nocode=1:30 ;
Eb_rep=1/3:1/3:10 ;
%%QPSK no coding%%
s_qpsk_nocode=zeros(6400,30) ;
for i=1:2:12800
if out_intleav_QPSK_nocode(i,1)==0 && out_intleav_QPSK_nocode(i+1,1)==0
    s_qpsk_nocode((i+1)/2,:)=(-1-j)*sqrt(Eb_nocode) ;
elseif out_intleav_QPSK_nocode(i,1)==0 && out_intleav_QPSK_nocode(i+1,1)==1
    s_qpsk_nocode((i+1)/2,:)=(-1+j)*sqrt(Eb_nocode) ;
elseif out_intleav_QPSK_nocode(i,1)==1 && out_intleav_QPSK_nocode(i+1,1)==1
    s_qpsk_nocode((i+1)/2,:)=(1+j)*sqrt(Eb_nocode) ;
else
    s_qpsk_nocode((i+1)/2,:)=(1-j)*sqrt(Eb_nocode) ;
end
end
%%QPSK repetition code%%
s_qpsk_rep=zeros(6400,30) ;
for i=1:2:12800
if out_intleav_QPSK_rep(i,1)==0 && out_intleav_QPSK_rep(i+1,1)==0
    s_qpsk_rep((i+1)/2,:)=(-1-j)*sqrt(Eb_rep) ;
elseif out_intleav_QPSK_rep(i,1)==0 && out_intleav_QPSK_rep(i+1,1)==1
    s_qpsk_rep((i+1)/2,:)=(-1+j)*sqrt(Eb_rep) ;
elseif out_intleav_QPSK_rep(i,1)==1 && out_intleav_QPSK_rep(i+1,1)==1
    s_qpsk_rep((i+1)/2,:)=(1+j)*sqrt(Eb_rep) ;
else
    s_qpsk_rep((i+1)/2,:)=(1-j)*sqrt(Eb_rep) ;
end
end
%%16QAM no coding%%
s_qam_nocode=zeros(6400,30) ;
for i=1:4:25600
if (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(-3-3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(-3-j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(-3+3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(-3+j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(-1-3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(-1-1j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(-1+3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==0 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(-1+j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(3-3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(3-j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(3+3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==0 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(3+j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(1-3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==0 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(1-j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==0)
    s_qam_nocode((i+3)/4,:)=(1+3j)*sqrt(Eb_nocode/2.5) ;
elseif (out_intleav_16QAM_nocode(i,1)==1 && out_intleav_16QAM_nocode(i+1,1)==1 && out_intleav_16QAM_nocode(i+2,1)==1 ...
    && out_intleav_16QAM_nocode(i+3,1)==1)
    s_qam_nocode((i+3)/4,:)=(1+j)*sqrt(Eb_nocode/2.5) ;
end
end
%%16QAM repetition code%%
s_qam_rep=zeros(6400,30) ;
for i=1:4:25600
if (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(-3-3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(-3-j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(-3+3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(-3+j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(-1-3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(-1-1j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(-1+3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==0 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(-1+j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(3-3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(3-j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(3+3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==0 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(3+j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(1-3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==0 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(1-j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==0)
    s_qam_rep((i+3)/4,:)=(1+3j)*sqrt(Eb_rep/2.5) ;
elseif (out_intleav_16QAM_rep(i,1)==1 && out_intleav_16QAM_rep(i+1,1)==1 && out_intleav_16QAM_rep(i+2,1)==1 ...
    && out_intleav_16QAM_rep(i+3,1)==1)
    s_qam_rep((i+3)/4,:)=(1+j)*sqrt(Eb_rep/2.5) ;
end
end
%%IFFT%%
for k=1:30
    for i=1:100
%%ifft QPSK no coding %%
        out_ifft_QPSK_nocode(((i-1)*64)+1:(i*64),k)=ifft(s_qpsk_nocode(((i-1)*64)+1:(i*64),k)) ;
%%ifft QPSK repetition coding %%
        out_ifft_QPSK_rep(((i-1)*64)+1:(i*64),k)=ifft(s_qpsk_rep(((i-1)*64)+1:(i*64),k)) ;
%%ifft 16QAM no coding%%
        out_ifft_16QAM_nocode(((i-1)*64)+1:(i*64),k)=ifft(s_qam_nocode(((i-1)*64)+1:(i*64),k)) ;
%%ifft 16QAM repetition coding%%
        out_ifft_16QAM_rep(((i-1)*64)+1:(i*64),k)=ifft(s_qam_rep(((i-1)*64)+1:(i*64),k)) ;
    end
end
%%Cyclic extension%%
for k=1:30
    for i=1:100
        cyclic_out_ifft_QPSK_nocode(((i-1)*80)+1:(i*80),k)=[out_ifft_QPSK_nocode((i*64)-15:(i*64),k);out_ifft_QPSK_nocode(((i-1)*64)+1:(i*64),k)] ;
        cyclic_out_ifft_QPSK_rep(((i-1)*80)+1:(i*80),k)=[out_ifft_QPSK_rep((i*64)-15:(i*64),k);out_ifft_QPSK_rep(((i-1)*64)+1:(i*64),k)] ;
        cyclic_out_ifft_16QAM_nocode(((i-1)*80)+1:(i*80),k)=[out_ifft_16QAM_nocode((i*64)-15:(i*64),k);out_ifft_16QAM_nocode(((i-1)*64)+1:(i*64),k)] ;
        cyclic_out_ifft_16QAM_rep(((i-1)*80)+1:(i*80),k)=[out_ifft_16QAM_rep((i*64)-15:(i*64),k);out_ifft_16QAM_rep(((i-1)*64)+1:(i*64),k)] ;
    end
end
%%%%% Signal after AWGN channel %%%%%
No=2 ;
noise=(sqrt(No/2))*randn(8000,1)+j*((sqrt(No/2))*randn(8000,1)) ;
noise=repmat(noise,1,30) ;
awgn_X_qpsk_nocode=cyclic_out_ifft_QPSK_nocode+noise ;
awgn_X_qpsk_rep=cyclic_out_ifft_QPSK_rep+noise ;
awgn_X_qam_nocode=cyclic_out_ifft_16QAM_nocode+noise ;
awgn_X_qam_rep=cyclic_out_ifft_16QAM_rep+noise ;
%%%%% Signal after Frequency selective Fading channel %%%%%
h=[0.4 ;0 ;0.26 ;0 ;0 ;0.4 ;0 ;0.6 ;0 ;0.5];
for k=1:30
    for i=1:100
        freqs_X_qpsk_nocode(((i-1)*89)+1:(i*89),k)=conv(awgn_X_qpsk_nocode(((i-1)*80)+1:(i*80),k),h) ;
        freqs_X_qpsk_rep(((i-1)*89)+1:(i*89),k)=conv(awgn_X_qpsk_rep(((i-1)*80)+1:(i*80),k),h) ;
        freqs_X_qam_nocode(((i-1)*89)+1:(i*89),k)=conv(awgn_X_qam_nocode(((i-1)*80)+1:(i*80),k),h) ;
        freqs_X_qam_rep(((i-1)*89)+1:(i*89),k)=conv(awgn_X_qam_rep(((i-1)*80)+1:(i*80),k),h) ;
    end
end
%%Receiver%%
for k=1:30
    for i=1:100
        rec_signal_freqs_qpsk_nocode(((i-1)*80)+1:(i*80),k)=deconv(freqs_X_qpsk_nocode(((i-1)*89)+1:(i*89),k),h) ;
        rec_signal_freqs_qpsk_rep(((i-1)*80)+1:(i*80),k)=deconv(freqs_X_qpsk_rep(((i-1)*89)+1:(i*89),k),h);
        rec_signal_freqs_qam_nocode(((i-1)*80)+1:(i*80),k)=deconv(freqs_X_qam_nocode(((i-1)*89)+1:(i*89),k),h);
        rec_signal_freqs_qam_rep(((i-1)*80)+1:(i*80),k)=deconv(freqs_X_qam_rep(((i-1)*89)+1:(i*89),k),h);
    end
end
%%Remove Cyclic extension%%
%%for AWGN%%
for k=1:30
    for i=1:100
        rec_nocyclic_awgn_QPSK_nocode(((i-1)*64)+1:(i*64),k)=awgn_X_qpsk_nocode(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_awgn_QPSK_rep(((i-1)*64)+1:(i*64),k)=awgn_X_qpsk_rep(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_awgn_16QAM_nocode(((i-1)*64)+1:(i*64),k)=awgn_X_qam_nocode(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_awgn_16QAM_rep(((i-1)*64)+1:(i*64),k)=awgn_X_qam_rep(((i-1)*80)+17:(i*80),k) ;
    end
end
%%for Frequency selective fading%%
for k=1:30
    for i=1:100
        rec_nocyclic_freqs_QPSK_nocode(((i-1)*64)+1:(i*64),k)=rec_signal_freqs_qpsk_nocode(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_freqs_QPSK_rep(((i-1)*64)+1:(i*64),k)=rec_signal_freqs_qpsk_rep(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_freqs_16QAM_nocode(((i-1)*64)+1:(i*64),k)=rec_signal_freqs_qam_nocode(((i-1)*80)+17:(i*80),k) ;
        rec_nocyclic_freqs_16QAM_rep(((i-1)*64)+1:(i*64),k)=rec_signal_freqs_qam_rep(((i-1)*80)+17:(i*80),k) ;
    end
end
%%FFT%%
%%for AWGN%%
for k=1:30
    for i=1:100
        rec_fft_awgn_QPSK_nocode(((i-1)*64)+1:(i*64),k)= fft(rec_nocyclic_awgn_QPSK_nocode(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_awgn_QPSK_rep(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_awgn_QPSK_rep(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_awgn_16QAM_nocode(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_awgn_16QAM_nocode(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_awgn_16QAM_rep(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_awgn_16QAM_rep(((i-1)*64)+1:(i*64),k)) ;
    end
end
%%for Frequency selective fading%%
for k=1:30
    for i=1:100
        rec_fft_freqs_QPSK_nocode(((i-1)*64)+1:(i*64),k)= fft(rec_nocyclic_freqs_QPSK_nocode(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_freqs_QPSK_rep(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_freqs_QPSK_rep(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_freqs_16QAM_nocode(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_freqs_16QAM_nocode(((i-1)*64)+1:(i*64),k)) ;
        rec_fft_freqs_16QAM_rep(((i-1)*64)+1:(i*64),k)=fft(rec_nocyclic_freqs_16QAM_rep(((i-1)*64)+1:(i*64),k)) ;
    end
end
%%Demapper%%
%%%%%%%%% Qpsk %%%%%%%%
%%no coding AWGN%%
for i=1:6400
    for k=1:30
if real(rec_fft_awgn_QPSK_nocode(i,k))>0 && imag(rec_fft_awgn_QPSK_nocode(i,k))>0
    rec_bits_awgn_nocoding_qpsk(2*i-1,k)=1 ; rec_bits_awgn_nocoding_qpsk(2*i,k)=1 ;
elseif real(rec_fft_awgn_QPSK_nocode(i,k))<0 && imag(rec_fft_awgn_QPSK_nocode(i,k))>0
    rec_bits_awgn_nocoding_qpsk(2*i-1,k)=0 ; rec_bits_awgn_nocoding_qpsk(2*i,k)=1 ;
elseif real(rec_fft_awgn_QPSK_nocode(i,k))<0 && imag(rec_fft_awgn_QPSK_nocode(i,k))<0
    rec_bits_awgn_nocoding_qpsk(2*i-1,k)=0 ; rec_bits_awgn_nocoding_qpsk(2*i,k)=0 ;
elseif real(rec_fft_awgn_QPSK_nocode(i,k))>0 && imag(rec_fft_awgn_QPSK_nocode(i,k))<0
    rec_bits_awgn_nocoding_qpsk(2*i-1,k)=1 ; rec_bits_awgn_nocoding_qpsk(2*i,k)=0 ;
end
   end
end
%%no coding Freqs%%
for i=1:6400
    for k=1:30
if real(rec_fft_freqs_QPSK_nocode(i,k))>0 && imag(rec_fft_freqs_QPSK_nocode(i,k))>0
    rec_bits_freqs_nocoding_qpsk(2*i-1,k)=1 ; rec_bits_freqs_nocoding_qpsk(2*i,k)=1 ;
elseif real(rec_fft_freqs_QPSK_nocode(i,k))<0 && imag(rec_fft_freqs_QPSK_nocode(i,k))>0
    rec_bits_freqs_nocoding_qpsk(2*i-1,k)=0 ; rec_bits_freqs_nocoding_qpsk(2*i,k)=1 ;
elseif real(rec_fft_freqs_QPSK_nocode(i,k))<0 && imag(rec_fft_freqs_QPSK_nocode(i,k))<0
    rec_bits_freqs_nocoding_qpsk(2*i-1,k)=0 ; rec_bits_freqs_nocoding_qpsk(2*i,k)=0 ;
elseif real(rec_fft_freqs_QPSK_nocode(i,k))>0 && imag(rec_fft_freqs_QPSK_nocode(i,k))<0
    rec_bits_freqs_nocoding_qpsk(2*i-1,k)=1 ; rec_bits_freqs_nocoding_qpsk(2*i,k)=0 ;
end
   end
end
%%repetition coding AWGN%%
for i=1:6400
    for k=1:30
if real(rec_fft_awgn_QPSK_rep(i,k))>0 && imag(rec_fft_awgn_QPSK_rep(i,k))>0
    rec_bits_awgn_rep_qpsk(2*i-1,k)=1 ; rec_bits_awgn_rep_qpsk(2*i,k)=1 ;
elseif real(rec_fft_awgn_QPSK_rep(i,k))<0 && imag(rec_fft_awgn_QPSK_rep(i,k))>0
    rec_bits_awgn_rep_qpsk(2*i-1,k)=0 ; rec_bits_awgn_rep_qpsk(2*i,k)=1 ;
elseif real(rec_fft_awgn_QPSK_rep(i,k))<0 && imag(rec_fft_awgn_QPSK_rep(i,k))<0
    rec_bits_awgn_rep_qpsk(2*i-1,k)=0 ; rec_bits_awgn_rep_qpsk(2*i,k)=0 ;
elseif real(rec_fft_awgn_QPSK_rep(i,k))>0 && imag(rec_fft_awgn_QPSK_rep(i,k))<0
    rec_bits_awgn_rep_qpsk(2*i-1,k)=1 ; rec_bits_awgn_rep_qpsk(2*i,k)=0 ;
end
   end
end
%%repetition coding Freqs%%
for i=1:6400
    for k=1:30
if real(rec_fft_freqs_QPSK_rep(i,k))>0 && imag(rec_fft_freqs_QPSK_rep(i,k))>0
    rec_bits_freqs_rep_qpsk(2*i-1,k)=1 ; rec_bits_freqs_rep_qpsk(2*i,k)=1 ;
elseif real(rec_fft_freqs_QPSK_rep(i,k))<0 && imag(rec_fft_freqs_QPSK_rep(i,k))>0
    rec_bits_freqs_rep_qpsk(2*i-1,k)=0 ; rec_bits_freqs_rep_qpsk(2*i,k)=1 ;
elseif real(rec_fft_freqs_QPSK_rep(i,k))<0 && imag(rec_fft_freqs_QPSK_rep(i,k))<0
    rec_bits_freqs_rep_qpsk(2*i-1,k)=0 ; rec_bits_freqs_rep_qpsk(2*i,k)=0 ;
elseif real(rec_fft_freqs_QPSK_rep(i,k))>0 && imag(rec_fft_freqs_QPSK_rep(i,k))<0
    rec_bits_freqs_rep_qpsk(2*i-1,k)=1 ; rec_bits_freqs_rep_qpsk(2*i,k)=0 ;
end
   end
end
%%16QAM%%
%%no coding AWGN%%
for i=1:6400
    for k=1:30
if (real(rec_fft_awgn_16QAM_nocode(i,k))>0 && real(rec_fft_awgn_16QAM_nocode(i,k)<2*sqrt(Eb_nocode(1,k)/2.5)) && ...
 imag(rec_fft_awgn_16QAM_nocode(i,k))>0 && imag(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>0 && real(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ... 
        imag(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>0 && real(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<0 && imag(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>0 && real(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) &&imag(rec_fft_awgn_16QAM_nocode(i,k))>0 && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) &&imag(rec_fft_awgn_16QAM_nocode(i,k))<0 && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=1;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<0 && real(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>0&& imag(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<0 && real(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<0 && real(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<0&& imag(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<0 && real(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=1;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && imag(rec_fft_awgn_16QAM_nocode(i,k))>0 && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=1;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && imag(rec_fft_awgn_16QAM_nocode(i,k))<0 && ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5)&& ...
    imag(rec_fft_awgn_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_awgn_nocode_qam(4*i-3,k)=0;rec_bits_awgn_nocode_qam(4*i-2,k)=0;rec_bits_awgn_nocode_qam(4*i-1,k)=0;...
    rec_bits_awgn_nocode_qam(4*i,k)=0 ;
end
    end
end
%%no coding Freqs%%
for i=1:6400
    for k=1:30
if (real(rec_fft_freqs_16QAM_nocode(i,k))>0 && real(rec_fft_freqs_16QAM_nocode(i,k)<2*sqrt(Eb_nocode(1,k)/2.5)) && ...
 imag(rec_fft_freqs_16QAM_nocode(i,k))>0 && imag(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>0 && real(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ... 
        imag(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>0 && real(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<0 && imag(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>0 && real(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) &&imag(rec_fft_freqs_16QAM_nocode(i,k))>0 && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) &&imag(rec_fft_freqs_16QAM_nocode(i,k))<0 && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=1;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<0 && real(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>0&& imag(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<0 && real(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<0 && real(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<0&& imag(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<0 && real(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=1;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && imag(rec_fft_freqs_16QAM_nocode(i,k))>0 && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=1;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5) && imag(rec_fft_freqs_16QAM_nocode(i,k))<0 && ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))>-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5)&& ...
    imag(rec_fft_freqs_16QAM_nocode(i,k))<-2*sqrt(Eb_nocode(1,k)/2.5))
rec_bits_freqs_nocode_qam(4*i-3,k)=0;rec_bits_freqs_nocode_qam(4*i-2,k)=0;rec_bits_freqs_nocode_qam(4*i-1,k)=0;...
    rec_bits_freqs_nocode_qam(4*i,k)=0 ;
end
    end
end

%%repetition coding AWGN%%
for i=1:6400
    for k=1:30
if (real(rec_fft_awgn_16QAM_rep(i,k))>0 && real(rec_fft_awgn_16QAM_rep(i,k)<2*sqrt(Eb_rep(1,k)/2.5)) && ...
 imag(rec_fft_awgn_16QAM_rep(i,k))>0 && imag(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>0 && real(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ... 
        imag(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>0 && real(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<0 && imag(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>0 && real(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) &&imag(rec_fft_awgn_16QAM_rep(i,k))>0 && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) &&imag(rec_fft_awgn_16QAM_rep(i,k))<0 && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=1;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<0 && real(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>0&& imag(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<0 && real(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<0 && real(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<0&& imag(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<0 && real(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=1;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && imag(rec_fft_awgn_16QAM_rep(i,k))>0 && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=1;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && imag(rec_fft_awgn_16QAM_rep(i,k))<0 && ...
    imag(rec_fft_awgn_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5)&& ...
    imag(rec_fft_awgn_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_awgn_rep_qam(4*i-3,k)=0;rec_bits_awgn_rep_qam(4*i-2,k)=0;rec_bits_awgn_rep_qam(4*i-1,k)=0;...
    rec_bits_awgn_rep_qam(4*i,k)=0 ;
end
    end
end

%%repetition coding Freqs%%
for i=1:6400
    for k=1:30
if (real(rec_fft_freqs_16QAM_rep(i,k))>0 && real(rec_fft_freqs_16QAM_rep(i,k)<2*sqrt(Eb_rep(1,k)/2.5)) && ...
 imag(rec_fft_freqs_16QAM_rep(i,k))>0 && imag(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>0 && real(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ... 
        imag(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>0 && real(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<0 && imag(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>0 && real(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) &&imag(rec_fft_freqs_16QAM_rep(i,k))>0 && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) &&imag(rec_fft_freqs_16QAM_rep(i,k))<0 && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=1;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<0 && real(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>0&& imag(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<0 && real(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<0 && real(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<0&& imag(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<0 && real(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=1;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && imag(rec_fft_freqs_16QAM_rep(i,k))>0 && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=1;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5) && imag(rec_fft_freqs_16QAM_rep(i,k))<0 && ...
    imag(rec_fft_freqs_16QAM_rep(i,k))>-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=1 ;
elseif (real(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5)&& ...
    imag(rec_fft_freqs_16QAM_rep(i,k))<-2*sqrt(Eb_rep(1,k)/2.5))
rec_bits_freqs_rep_qam(4*i-3,k)=0;rec_bits_freqs_rep_qam(4*i-2,k)=0;rec_bits_freqs_rep_qam(4*i-1,k)=0;...
    rec_bits_freqs_rep_qam(4*i,k)=0 ;
end
    end
end
%%Deinterleaver%%
for k=1:30
    for i=1:100
%QPSK nocoding AWGN deinterleaver %
        deintleav_QPSK_awgn_nocode=(reshape(rec_bits_awgn_nocoding_qpsk(((i-1)*128)+1:(i*128),k),[8,16]))';
        out_deintleav_QPSK_awgn_nocode(((i-1)*128)+1:(i*128),k)=reshape(deintleav_QPSK_awgn_nocode,128,1) ;
%QPSK repetition coding AWGN deinterleaver %
        deintleav_QPSK_awgn_rep =(reshape(rec_bits_awgn_rep_qpsk(((i-1)*128)+1:(i*128),k),[8,16]))' ;
        out_deintleav_QPSK_awgn_rep(((i-1)*128)+1:(i*128),k)=reshape(deintleav_QPSK_awgn_rep,128,1) ;
        y_awgn_repQPSK(((i-1)*126)+1:(i*126),k) =out_deintleav_QPSK_awgn_rep(((i-1)*128)+3:(i*128),k) ;
%QPSK nocoding Freqs deinterleaver %
        deintleav_QPSK_Freqs_nocode=(reshape(rec_bits_freqs_nocoding_qpsk(((i-1)*128)+1:(i*128),k),[8,16]))';
        out_deintleav_QPSK_Freqs_nocode(((i-1)*128)+1:(i*128),k)=reshape(deintleav_QPSK_Freqs_nocode,128,1) ;
%QPSK repetition coding Freqs deinterleaver %
        deintleav_QPSK_Freqs_rep =(reshape(rec_bits_freqs_rep_qpsk(((i-1)*128)+1:(i*128),k),[8,16]))' ;
        out_deintleav_QPSK_Freqs_rep(((i-1)*128)+1:(i*128),k)=reshape(deintleav_QPSK_Freqs_rep,128,1) ;
        y_Freqs_repQPSK(((i-1)*126)+1:(i*126),k) =out_deintleav_QPSK_Freqs_rep(((i-1)*128)+3:(i*128),k) ;
%16QAM nocoding AWGN deinterleaver %
        deintleav_16QAM_awgn_nocode=(reshape(rec_bits_awgn_nocode_qam(((i-1)*256)+1:(i*256),k),[16,16]))';
        out_deintleav_16QAM_awgn_nocode(((i-1)*256)+1:(i*256),k)=reshape(deintleav_16QAM_awgn_nocode,256,1);
%16QAM repetition coding AWGN deinterleaver %
        deintleav_16QAM_awgn_rep=(reshape(rec_bits_awgn_rep_qam(((i-1)*256)+1:(i*256),k),[16,16]))';
        out_deintleav_16QAM_awgn_rep(((i-1)*256)+1:(i*256),k)=reshape(deintleav_16QAM_awgn_rep,256,1);
        y_awgn_rep16QAM(((i-1)*255)+1:(i*255),k) = out_deintleav_16QAM_awgn_rep(((i-1)*256)+2:(i*256),k) ;
%16QAM nocoding Freqs deinterleaver %
        deintleav_16QAM_Freqs_nocode=(reshape(rec_bits_freqs_nocode_qam(((i-1)*256)+1:(i*256),k),[16,16]))';
        out_deintleav_16QAM_Freqs_nocode(((i-1)*256)+1:(i*256),k)=reshape(deintleav_16QAM_Freqs_nocode,256,1);
%16QAM repetition coding Freqs deinterleaver %
        deintleav_16QAM_Freqs_rep=(reshape(rec_bits_freqs_rep_qam(((i-1)*256)+1:(i*256),k),[16,16]))';
        out_deintleav_16QAM_Freqs_rep(((i-1)*256)+1:(i*256),k)=reshape(deintleav_16QAM_Freqs_rep,256,1);
        y_Freqs_rep16QAM(((i-1)*255)+1:(i*255),k) = out_deintleav_16QAM_Freqs_rep(((i-1)*256)+2:(i*256),k) ;
    end
end
y_awgn_nocodeQPSK=out_deintleav_QPSK_awgn_nocode ;
y_Freqs_nocodeQPSK=out_deintleav_QPSK_Freqs_nocode ;
y_awgn_nocode16QAM=out_deintleav_16QAM_awgn_nocode ;
y_Freqs_nocode16QAM=out_deintleav_16QAM_Freqs_nocode ;
for k=1:30
    for i=1:3:12600
        y_awgn_norepQPSK((i+2)/3,k) = mode(y_awgn_repQPSK(i:i+2,k)) ;
        y_Freqs_norepQPSK((i+2)/3,k)=mode(y_Freqs_repQPSK(i:i+2,k)) ;
    end
    for z=1:3:25500
        y_awgn_norep16QAM((z+2)/3,k)=mode(y_awgn_rep16QAM(z:z+2,k)) ;
        y_Freqs_norep16QAM((z+2)/3,k)=mode(y_Freqs_rep16QAM(z:z+2,k)) ;
    end
end
%%%%% BER %%%%%%
errors_awgn_nocodeqpsk=zeros(1,30) ;
errors_Freqs_nocodeqpsk=zeros(1,30) ;
errors_awgn_norepqpsk=zeros(1,30) ;
errors_Freqs_norepqpsk=zeros(1,30) ;
errors_awgn_nocodeqam=zeros(1,30) ;
errors_Freqs_nocodeqam=zeros(1,30) ;
errors_awgn_norepqam=zeros(1,30) ;
errors_Freqs_norepqam=zeros(1,30) ;
%%%%% No Coding Qpsk %%%%%
for i=1:12800
    for k=1:30
    if y_awgn_nocodeQPSK(i,k)~=x_nocodeQPSK(i,1)
       errors_awgn_nocodeqpsk(1,k)=errors_awgn_nocodeqpsk(1,k)+1 ; 
    end
    if y_Freqs_nocodeQPSK(i,k)~=x_nocodeQPSK(i,1)
       errors_Freqs_nocodeqpsk(1,k)=errors_Freqs_nocodeqpsk(1,k)+1 ; 
    end
    end
end
%%Removed Repetiton Coding QPSK%%
for i=1:4200
    for k=1:30
    if y_awgn_norepQPSK(i,k)~=x_torepQPSK(i,1)
       errors_awgn_norepqpsk(1,k)=errors_awgn_norepqpsk(1,k)+1 ; 
    end
    if y_Freqs_norepQPSK(i,k)~=x_torepQPSK(i,1)
       errors_Freqs_norepqpsk(1,k)=errors_Freqs_norepqpsk(1,k)+1 ; 
    end
    end
end
%%%%% No Coding 16QAM %%%%%
for i=1:25600
    for k=1:30
    if y_awgn_nocode16QAM(i,k)~=x_nocode16QAM(i,1)
       errors_awgn_nocodeqam(1,k)=errors_awgn_nocodeqam(1,k)+1 ; 
    end
    if y_Freqs_nocode16QAM(i,k)~=x_nocode16QAM(i,1)
       errors_Freqs_nocodeqam(1,k)=errors_Freqs_nocodeqam(1,k)+1 ; 
    end
    end
end
%%Removed Repetiton Coding 16QAM%%
for i=1:8500
    for k=1:30
    if y_awgn_norep16QAM(i,k)~=x_torep16QAM(i,1)
       errors_awgn_norepqam(1,k)=errors_awgn_norepqam(1,k)+1 ; 
    end
    if y_Freqs_norep16QAM(i,k)~=x_torep16QAM(i,1)
       errors_Freqs_norepqam(1,k)=errors_Freqs_norepqam(1,k)+1 ; 
    end
    end
end

BER_awgn_nocodeqpsk=errors_awgn_nocodeqpsk/12800 ; BER_awgn_nocodeqpsk=BER_awgn_nocodeqpsk.' ;
BER_Freqs_nocodeqpsk=errors_Freqs_nocodeqpsk/12800 ; BER_Freqs_nocodeqpsk=BER_Freqs_nocodeqpsk.' ;
BER_awgn_norepqpsk=errors_awgn_norepqpsk/4200 ; BER_awgn_norepqpsk=BER_awgn_norepqpsk.' ;
BER_Freqs_norepqpsk=errors_Freqs_norepqpsk/4200 ; BER_Freqs_norepqpsk=BER_Freqs_norepqpsk.' ;
BER_awgn_nocodeqam=errors_awgn_nocodeqam/25600 ; BER_awgn_nocodeqam=BER_awgn_nocodeqam.' ;
BER_Freqs_nocodeqam=errors_Freqs_nocodeqam/25600 ; BER_Freqs_nocodeqam=BER_Freqs_nocodeqam.' ;
BER_awgn_norepqam=errors_awgn_norepqam/8500 ; BER_awgn_norepqam=BER_awgn_norepqam.' ;
BER_Freqs_norepqam=errors_Freqs_norepqam/8500 ; BER_Freqs_norepqam=BER_Freqs_norepqam.' ;
%%%%% Plotting %%%%%
Eb_No_nocode=10*log10(Eb_nocode/No); Eb_No_nocode=(Eb_No_nocode).' ;
Eb_No_rep=10*log10(Eb_rep/No); Eb_No_rep=(Eb_No_rep).' ;
figure(1)
slg=semilogy(Eb_No_nocode,BER_awgn_nocodeqpsk,'k',Eb_No_nocode,BER_awgn_norepqpsk,'r') ;
slg(1).LineWidth=2;slg(2).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('No code','Repetition') ;
title('QPSK AWGN') ;
hold on
figure(2)
slg2=semilogy(Eb_No_nocode,BER_Freqs_nocodeqpsk,'k') ;
slg2(1).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('No code') ;
title('QPSK Frequency selective') ;
hold on

figure(3)
slg3=semilogy(Eb_No_nocode,BER_Freqs_norepqpsk,'r') ;
slg3(1).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('Repetition') ;
title('QPSK Frequency selective') ;
hold on

figure(4)
slg4=semilogy(Eb_No_nocode,BER_awgn_nocodeqam,'k',Eb_No_nocode,BER_awgn_norepqam,'r') ;
slg4(1).LineWidth=2;slg4(2).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('No code','Repetition') ;
title('16QAM AWGN') ;
hold on
figure(5)
slg5=semilogy(Eb_No_nocode,BER_Freqs_nocodeqam,'k') ;
slg5(1).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('No code') ;
title('16QAM Frequency selective') ;
hold on

figure(6)
slg6=semilogy(Eb_No_nocode,BER_Freqs_norepqam,'r') ;
slg6(1).LineWidth=2;
xlabel('Eb/No(dB)');
ylabel('BER') ;
legend('Repetition') ;
title('16QAM Frequency selective') ;
hold off