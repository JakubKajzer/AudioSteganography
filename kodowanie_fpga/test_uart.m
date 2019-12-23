clear all;
%serialportlist; do dykrywania otwartych portów
s = serialport("COM11",9600);
s.Parity = "none";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
write(s,240,'uint8')    %Kod do zakodowania podzielony po 8 bitów
x=[];
disp('Initialized succesfully')
%% 
write(s,12345,'uint16')%wys³anie 16 bajtów, 8 próbek, tak ¿eby ka¿dego zakodowaæ
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')

x=read(s,8,'uint16');%oraz odbiór ka¿dego
x=transpose(x);
disp("Data ACK");