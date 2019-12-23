clear all;
close all;
[y, Fs] = audioread("samplewav.wav",'native');
%%
s = serialport("COM8",460800);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
%%
secret = "SEKRETY RETY"; %Bez polskich znaków
ack='0000110'; % 'ACK' binarnie
secret_bin=dec2bin(char(secret));
secret_bin=transpose(secret_bin); %dlatego bo reshape ogarnia kolumnowo a nie wierszowo
secret_bin=reshape(secret_bin,1,[]);
secret_to_send=[];
while (length(secret_to_send)+length(secret_bin)+length(ack)<length(y))
   secret_to_send=[secret_to_send,ack,secret_bin]; 
end
secret_to_send=reshape(secret_to_send,1,[]);
dopelnienie=mod(length(secret_to_send),8); %% powinno byæ do iloœci próbek, a potem do 8 dope³nienie
secret_to_send=[secret_to_send,zeros(1,8-dopelnienie)];
secret_to_send=reshape(secret_to_send,[],8);

clear secret_bin,dopelnienie; 


samples = y*32768;
samples = int16(samples);
clear y;
coded = [];
%%%DOPISAÆ RESET PO UARCIE PO WYS£ANIU WSZYSTKIEGO
%%
j = 1;
i = 1;
% for i=1 :8: length(samples)
      tic
     write(s,bin2dec(secret_to_send(j,:)),'uint8');
     write(s,samples(i)  ,'int16');
     write(s,samples(i+1),'int16');
     write(s,samples(i+2),'int16');
     write(s,samples(i+3),'int16');
     write(s,samples(i+4),'int16');
     write(s,samples(i+5),'int16');
     write(s,samples(i+6),'int16');
     write(s,samples(i+7),'int16');
     
     coded=[coded;read(s,8,'int16')];
     j=j+1;
           toc
% end;

final=double(coded);

final=final./32768;

sound(final,Fs);

audiowrite('output.wav',final,Fs);
