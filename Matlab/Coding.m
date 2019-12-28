clear all;
close all;
[y, Fs] = audioread("samplewav.wav",'native');

secret = "SEKRETY RETY"; %Bez polskich znaków
ack='0000110'; % 'ACK' binarnie
secret_char=char(secret);
secret_bin=dec2bin(secret_char);
secret_bin=transpose(secret_bin); %dlatego bo reshape ogarnia kolumnowo a nie wierszowo
secret_bin=reshape(secret_bin,1,[]);



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

for i=1:length(sample_int_abs) %zamiast tego mo¿na przesun¹æ o bit w prawo a potem bit lewo, prostsze w implementacji na FPGA
   
    if mod(sample_int_abs(i),2)== 1;
        sample_int_abs(i)=sample_int_abs(i)-1;
    end
end

%zapis na ca³ym pliku, ka¿dy zapis bêdzie rozdzielony znakami"#ACK" aby móc
%rozpoznaæ koniec i pocz¹tek sekwencji. Zapobiega to przez wszystkim przez
%prób¹ wycinania czêœci pliku dŸwiêkowego. Dodatkowo redundancja danych
%pozwoli na uzyskanie wiêkszego prawdopodobieñstwa odzyskania danych
i=1;
while(length(sample_int_abs)-i > length(ack) + length(secret_bin))%kodowanie bitu na LSB  
        
    for j=1:length(ack)
        sample_int_abs(i)=sample_int_abs(i)+ack(j);
        i = i + 1;
    end
    
    for j=1:length(secret_bin)
        sample_int_abs(i)=sample_int_abs(i)+secret_bin(j);
        i = i + 1;
    end
end

final = sample_int_abs.*scalar_matrix2;


doublefinal=double(final);

doublefinal=doublefinal./32768;

%sound(doublefinal,Fs);

audiowrite('output.wav',doublefinal,Fs);
