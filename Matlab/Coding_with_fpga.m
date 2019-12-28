clear all;
close all;
[y, Fs] = audioread("samplewav.wav",'native');
%%
s = serialport("COM16",115200);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
%%
secret = "LOREM IPSUM"; %Bez polskich znaków
ack='0000110'; % 'ACK' binarnie
secret_bin=dec2bin(char(secret));
secret_bin=transpose(secret_bin); %dlatego bo reshape ogarnia kolumnowo a nie wierszowo
secret_bin=reshape(secret_bin,1,[]);
secret_to_send_bin=[];
while (length(secret_to_send_bin)+length(secret_bin)+length(ack)<length(y))
   secret_to_send_bin=[secret_to_send_bin,ack,secret_bin]; 
end
%secret_to_send=reshape(secret_to_send_bin,1,[]); to niepotrzebne, bo wektor jest ju¿ w zadanej postaci
dopelnienie=mod(length(secret_to_send_bin),8); %% powinno byæ do iloœci próbek, a potem do 8 dope³nienie
secret_to_send=[secret_to_send_bin,zeros(1,8-dopelnienie)];
secret_to_send=reshape(secret_to_send,8,[]);
secret_to_send=transpose(secret_to_send);
secret_to_send=bin2dec(secret_to_send);

secret_to_send=uint8(secret_to_send);

clear secret_bin;
clear dopelnienie; 


samples = y*32768;
samples = int16(samples);
clear y;
coded = [];
%%
j = 1;
i = 1;
  for i=1 :8: 2*Fs
     
     write(s,secret_to_send(j),'uint8');
    % write(s,0,'uint8');
     write(s,samples(i)  ,'int16');
     coded(i)=read(s,1,'int16');
     write(s,samples(i+1),'int16');
     coded(i+1)=read(s,1,'int16');
     write(s,samples(i+2),'int16');
     coded(i+2)=read(s,1,'int16');
     write(s,samples(i+3),'int16');
     coded(i+3)=read(s,1,'int16');
     write(s,samples(i+4),'int16');
     coded(i+4)=read(s,1,'int16');
     write(s,samples(i+5),'int16');
     coded(i+5)=read(s,1,'int16');
     write(s,samples(i+6),'int16');
     coded(i+6)=read(s,1,'int16');
     write(s,samples(i+7),'int16');
     coded(i+7)=read(s,1,'int16');
     j=j+1;
     
  end;

final=double(coded);

final=final./32768;
final=reshape(final,1,[]);

audiowrite('output.wav',final,Fs);
