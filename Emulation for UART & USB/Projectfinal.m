conf=fileread('conf.json') ;
conf_struct=jsondecode(conf) ;
[prot_name1,prot_name2]=conf_struct.protocol_name ;
[A , B]=conf_struct.parameters ;
%[A,B,C,D,E,F]=textread('conf.txt','%s %s %f %s %f %f') ;
x=input('prompt','s') ;
G=fopen('inputdata.txt') ;
t=fread(G);
o_data=t ;
e=0 ;
for new_char=0:floor(length(o_data)/2)
    if(new_char==0)
       u=de2bi(t,'left-msb'); 
    else
        inptapp=fopen('inputdata.txt','a+') ;
        for k=(2*new_char)-1 :2*new_char
           fprintf(inptapp,char(t(k))) ; 
        end
        fclose(inptapp) ;
        inptfile=fopen('inputdata.txt') ;
        t=fread(inptfile) ;
        fclose(inptfile) ;
        u=de2bi(t,'left-msb') ;
    end
y=strcmp(x,prot_name1) ;z=strcmp(x,prot_name2) ;
if y==1
    %'USB' ;
o=[zeros(size(u,1),1) u] ;
q=fliplr(o);
Data=transpose(q);
s=(size(t,1)*8-(floor(size(t,1)*8/1024))*1024)/8 ; m=0 ;
if s>0
  m=fix(s/128)+1 ; %r=[r zeros(8,(128*m)-s)]  ; 
  j=Data(:,end-s+1:end) ; 
  j=reshape(j,[],1);
  Data(:,end-s+1:end)=[] ;
else
    j=[] ;
end
Data=reshape(Data,1024,[]) ;
N=floor(size(t,1)/128)+m ;
Addr=double(char(A.dest_address)) ;
%Addr(2,:)=[] ;
Addr=Addr-(48*ones(1,11)) ;
Addr=fliplr(Addr) ;
Addr=transpose(Addr);
Sync=double(char(A.sync_pattern)) ;
%Sync(2,:)=[] ;
Sync=Sync-(48*ones(1,8)) ;
Sync=transpose(Sync) ;
PID=rem(1:N,2^(A.pid/2)) ;
PID=transpose(PID) ;
PID=de2bi(PID) ;
PID=transpose(PID) ;
PID=[PID ;~PID] ;
fakeeop=[3;3];
idle=[4];
if s>0
    j=[idle;Sync ; PID(:,end) ; Addr ; j ; fakeeop] ;
end
if s>0
Addr=repmat(Addr,1,N-1) ;
Sync=repmat(Sync,1,N-1) ;
fakeeop=repmat(fakeeop,1,N-1) ;
idle=repmat(idle,1,N-1) ;
AllPackets=[idle;Sync ; PID(:,1:end-1) ; Addr ; Data; fakeeop ] ;
else 
Addr=repmat(Addr,1,N) ;
Sync=repmat(Sync,1,N) ;
fakeeop=repmat(fakeeop,1,N) ;
idle=repmat(idle,1,N) ;
AllPackets=[idle;Sync ; PID ; Addr ; Data; fakeeop ] ;  
end
AllPackets=reshape(AllPackets,[],1);
AllPackets=[AllPackets ; j ] ;
for p=1:length(AllPackets)
    if AllPackets(p)==1 && AllPackets(p+1)==1 && AllPackets(p+2)==1 && AllPackets(p+3)==1 && AllPackets(p+4)==1 && AllPackets(p+5)==1
        AllPackets = [AllPackets(1:p+5); 0 ;AllPackets(p+6:end)];
    end
end
Dpos=AllPackets;
Dneg=AllPackets;
Dneg(1)=1 ;
for p=2:length(Dpos)
    if Dpos(p)==0
        Dpos(p)=~Dpos(p-1);
        Dneg(p)=~Dpos(p);
    elseif Dpos(p)==1
        Dpos(p)=Dpos(p-1);
        Dneg(p)=~Dpos(p);
    end
end
%Dpos=AllPackets;
for p=1:length(Dpos)
    if Dpos(p)==3
        Dpos(p)=0;
        Dneg(p)=0;
    elseif Dpos(p)==4
        Dpos(p)=1;
        Dneg(p)=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dposdr=Dpos(1:2110);
stairs(dposdr);
if(new_char==0)
effusb=numel(o)/length(Dpos);
ttusb=(A.bit_duration)*length(Dpos);
else
    effusbv(new_char)=numel(o)/length(Dpos);
    ttusbv(new_char)=(A.bit_duration)*length(Dpos);
end
out_json=fileread('output.json') ;
out_struct=jsondecode(out_json) ;
out_struct(2).outputs.total_tx_time=ttusb ;
out_struct(2).outputs.overhead=1-effusb ;
out_struct(2).outputs.efficiency=effusb ;
out_usb=jsonencode(out_struct) ;
pretty_json_usb=prettyjson(out_usb) ;
fusb=fopen('output.json','w') ;
fprintf(fusb,'%s',pretty_json_usb) ;
fclose(fusb) ;
elseif z==1
    %'UART' ;
h=fliplr(u);
h=transpose(h);
UARTvin=reshape(h,[],1) ;    
data_bitss=B.data_bits ;
if data_bitss==8
    %l=zeros(size(u,1),1);
    %u=[l u] ;
    i=size(u,1)*7-(floor(size(u,1)*7/8))*8 ; %k=0 ;
if i>0
  %k=fix(i/128)+1 ; 
  w=UARTvin(end-i+1:end,:) ;
  UARTvin(end-i+1:end,:)=[] ;
else
    w=[] ;
end
    h=reshape(UARTvin,8,[]) ;
else
    h=reshape(UARTvin,7,[]) ;
end
evenparity=zeros(size(h,2),1) ;
oddparity=zeros(size(h,2),1) ;
for v=1:size(h,2)
      if rem(sum(h(:,v)),2)==0
          evenparity(v,1)=0 ;
          oddparity(v,1)=1 ;
      else
          oddparity(v,1)=0 ;
          evenparity(v,1)=1 ;
      end
end
if i>0
if rem(sum(w(:,1)),2)==0
          evenparityw=0 ;
          oddparityw=1 ;
      else
          oddparityw=0 ;
          evenparityw=1 ;
end
end
peven=strcmp(B.parity,'even') ; podd=strcmp(B.parity,'odd') ; 
if peven==1
    evenparity=transpose(evenparity) ;
    h=[h;evenparity] ;
    if i>0
    w=[w ; evenparityw] ;
    end
    elseif podd==1
    oddparity=transpose(oddparity) ;
    h=[h;oddparity] ;
    if i>0
    w=[w ; oddparityw] ;
    end
end
stop_bit=repmat(1,B.stop_bits,size(h,2)) ; stop_bitw=repmat(1,B.stop_bits,1) ;
h=[h ; stop_bit] ; 
if i>0
w=[0 ; w ; stop_bitw] ;
end
h=[zeros(1,size(h,2)) ; h] ;
UARTvout=[reshape(h,[],1) ; w] ;
UARTsdr=UARTvout(1:2*size(h,1));
stairs(UARTsdr);
if(new_char==0)
effuart=numel(u)/length(UARTvout);
ttuart=(B.bit_duration)*length(UARTvout);
else
    effuartv(new_char)=numel(u)/length(UARTvout);
    ttuartv(new_char)=(B.bit_duration)*length(UARTvout);
end
out_json=fileread('output.json') ;
out_struct=jsondecode(out_json) ;
out_struct(1).outputs.total_tx_time=ttuart ;
out_struct(1).outputs.overhead=1-effuart ;
out_struct(1).outputs.efficiency=effuart ;
out_uart=jsonencode(out_struct) ;
pretty_out_uart=prettyjson(out_uart) ;
fuart=fopen('output.json','w') ;
fprintf(fuart,'%s',pretty_out_uart) ;
fclose(fuart) ;
else
    e=1 ;
    break
end 
end
if e==1
   disp('Error') ; 
else
vz=[1:floor(length(o_data)/2)] ;
if y==1
subplot(1,3,1);
plot(vz,effusbv) ;
title('USB Efficiency vs File size') ;
subplot(1,3,2) ;
plot(vz,ttusbv) ;
title('USB Transmisson time vs File size') ;
subplot(1,3,3) ;
plot(vz,ones(size(effusbv))-effusbv)
title('USB Overhead vs File size') ;
elseif z==1
subplot(1,3,1) ;
plot(vz,effuartv) ;
title('UART Efficiency vs File size') ;
subplot(1,3,2) ;
plot(vz,ttuartv) ;
title('UART Transmisson time vs File size') ;
subplot(1,3,3) ;
plot(vz,ones(size(effuartv))-effuartv) ;
title('UART Overhead vs File size') ;
end
end
