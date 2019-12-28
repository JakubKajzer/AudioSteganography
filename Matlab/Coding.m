% by Jakub Kajzer

clear all;
close all;
[y, Fs] = audioread("samplewav.wav",'native');

secret = "SEKRETY RETY"; %without polish letters
ack='0000110'; % 'ACK' binary
secret_char=char(secret);
secret_bin=dec2bin(secret_char);
secret_bin=transpose(secret_bin); %without this reshape() would work incorrectly
secret_bin=reshape(secret_bin,1,[]);

%Code will be saved on LSB of each sample in audio file 

samples = y*32768;
sample_int = int16(samples);
sample_int_abs = abs(sample_int);

scalar_matrix = sample_int./sample_int_abs;

scalar_matrix2 = scalar_matrix;
for i=1:numel(scalar_matrix)
    if scalar_matrix(i)==0        
        scalar_matrix2(i)=1;
    end
end

for i=1:length(sample_int_abs) 
   
    if mod(sample_int_abs(i),2)== 1;
        sample_int_abs(i)=sample_int_abs(i)-1;
    end
end

%Audio file will be coded in order like this:
%AckSecretStringAckSecretString... etc.
%This solution provides protection against cutting audio from file
i=1;
while(length(sample_int_abs)-i > length(ack) + length(secret_bin))
        
    for j=1:length(ack)
        sample_int_abs(i)=sample_int_abs(i)+ack(j);%coding ACK
        i = i + 1;
    end
    
    for j=1:length(secret_bin)
        sample_int_abs(i)=sample_int_abs(i)+secret_bin(j);%coding secret
        i = i + 1;
    end
end

final = sample_int_abs.*scalar_matrix2;


doublefinal=double(final);

doublefinal=doublefinal./32768;

%sound(doublefinal,Fs);

audiowrite('output.wav',doublefinal,Fs);
