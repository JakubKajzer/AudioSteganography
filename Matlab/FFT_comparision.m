% by Jakub Kajzer

clear all;
close all;

[original, Fs] = audioread("samplewav.wav",'native');
[coded, Fs] = audioread("output.wav",'native');

tiledlayout(2,2);

nexttile
original_fft=abs(fft(original));
original_fft=original_fft./max(original_fft);
P1a = original_fft(1:length(original_fft)/2+1);
P1a(2:end-1) = 2*P1a(2:end-1);
plot(P1a);
title('Original')

nexttile
coded_fft=abs(fft(coded));
coded_fft=coded_fft./max(coded_fft);
P1b = coded_fft(1:length(coded_fft)/2+1);
P1b(2:end-1) = 2*P1b(2:end-1);
plot(P1b);
title('Coded')

nexttile([1 2])
diff_fft=abs(P1a-P1b);
plot(diff_fft);
title('|Original FFT - Coded FFT|')