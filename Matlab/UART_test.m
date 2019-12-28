clear all;
%serialportlist; do dykrywania otwartych portów
s = serialport("COM16",115200);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
write(s,0x55,'uint8')    %Kod do zakodowania podzielony po 8 bitów
x=[];
disp('Initialized succesfully')
%% 
write(s,-5,'int16')
write(s,43,'int16')
write(s,123,'int16')
write(s,-143,'int16')
write(s,32767,'int16')
write(s,0,'int16')
write(s,0,'int16')
write(s,0,'int16')%wys³anie 16 bajtów, 8 próbek, tak ¿eby ka¿dego zakodowaæ
x=read(s,8,'int16');
x=transpose(x);
disp("Data ACK");