[A,B,C,D,E,F]=textread('conf.txt','%s %s %f %s %f %f') ;
x=input('prompt','s') ;
G=fopen('inputdata.txt') ;
t=fread(G);
u=de2bi(t,'left-msb');
y=strcmp(x,A(1,:)) ;z=strcmp(x,A(2,:)) ;
if y==1
    %'USB' ;
l=zeros(size(u,1),1);
o=[l u] ;
q=fliplr(o);
r=transpose(q);
s=(size(t,1)*8-(floor(size(t,1)*8/1024))*1024)/8 ; m=0 ;
if s>0
  m=fix(s/128)+1 ; %r=[r zeros(8,(128*m)-s)]  ; 
  j=r(:,end-s+1:end) ; 
  r(:,end-s+1:end)=[] ;
else
    j=[] ;
end
Data=reshape(r,1024,[]) ;
N=floor(size(t,1)/128)+m ;
Addr=double(char(D)) ;
Addr(2,:)=[] ;
Addr=Addr-(48*ones(1,11)) ;
Addr=fliplr(Addr) ;
Addr=transpose(Addr);
Sync=double(char(B)) ;
Sync(2,:)=[] ;
Sync=Sync-(48*ones(1,8)) ;
Sync=transpose(Sync) ;
PID=rem(1:N,2^(C(1,:)/2)) ;
PID=transpose(PID) ;
PID=de2bi(PID) ;
PID=transpose(PID) ;
PID=[PID ;~PID] ;
fakeeop=[3;3];
if s>0
    j=[Sync ; PID(:,end) ; Addr ; j ; fakeeop] ;
end
if s>0
Addr=repmat(Addr,1,N-1) ;
Sync=repmat(Sync,1,N-1) ;
fakeeop=repmat(fakeeop,1,N-1) ;
AllPackets=[Sync ; PID(:,1:end-1) ; Addr ; Data; fakeeop ] ;
else 
Addr=repmat(Addr,1,N) ;
Sync=repmat(Sync,1,N) ;
fakeeop=repmat(fakeeop,1,N) ;
AllPackets=[Sync ; PID ; Addr ; Data; fakeeop ] ;  
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
    end
end
elseif z==1
    %'UART' ;
h=fliplr(u);
h=transpose(h);
UARTvin=reshape(h,[],1) ;    
data_bits=double(char(B(2,:)))-48 ;
if data_bits==8
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
peven=strcmp(D(2,:),'even') ; podd=strcmp(D(2,:),'odd') ; 
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
stop_bit=repmat(1,C(2,:),size(h,2)) ; stop_bitw=repmat(1,C(2,:),1) ;
h=[h ; stop_bit] ; 
if i>0
w=[0 ; w ; stop_bitw] ;
end
h=[zeros(1,size(h,2)) ; h] ;
UARTvout=[reshape(h,[],1) ; w] ;
else
   disp('Error') ;
end 
