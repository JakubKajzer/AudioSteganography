clear all;
[y, Fs] = audioread("output.wav",'native');

%samples = y*32768;
%sample_int = int16(samples);
sample_int=y;
for i=1:12
   
    wynik(i)=mod(sample_int(i),2);
end
final = int2str(wynik);
final = final(~isspace(final));
final = bin2dec(final);