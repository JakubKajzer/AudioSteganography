clear all;
close all;
tiledlayout(3,3);
[y, Fs] = audioread("sample.wav",[4*44100 7*44100],'native');

secret = '100001011001';
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

nexttile;
plot(sample_int);
title("sample int");

nexttile;
plot(sample_int_abs);
title("sample int abs");

for i=1:length(sample_int_abs) %zamiast tego mo¿na przesun¹æ o bit w prawo a potem bit lewo, prostsze w implementacji na FPGA
   
    if mod(sample_int_abs(i),2)== 1;
        sample_int_abs(i)=sample_int_abs(i)-1;
    end
end

nexttile;
plot(sample_int_abs);
title("sample int abs zerowanie");

for i=1:length(secret) %kodowanie bitu na LSB
   
    sample_int_abs(i)=sample_int_abs(i)+secret(i);
end

nexttile;
plot(sample_int_abs);
title("sample int abs kodowanie");

final = sample_int_abs.*scalar_matrix2;

nexttile;
plot(final);
title("final po skalarze");

doublefinal=double(final);

doublefinal=doublefinal./32768;

nexttile;
plot(doublefinal);
title("final po podzieleniu");


%sound(doublefinal,Fs);

audiowrite('output.wav',doublefinal,Fs);
