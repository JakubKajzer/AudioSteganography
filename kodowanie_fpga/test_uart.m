clear all;
%serialportlist; do dykrywania otwartych port�w
s = serialport("COM11",9600);
s.Parity = "none";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
write(s,240,'uint8')    %Kod do zakodowania podzielony po 8 bit�w
x=[];
disp('Initialized succesfully')
%% 
write(s,12345,'uint16')%wys�anie 16 bajt�w, 8 pr�bek, tak �eby ka�dego zakodowa�
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')
write(s,12345,'uint16')

x=read(s,8,'uint16');%oraz odbi�r ka�dego
x=transpose(x);
disp("Data ACK");