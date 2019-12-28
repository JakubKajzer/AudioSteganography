clear all;
%serialportlist; do dykrywania otwartych port�w
s = serialport("COM16",115200);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
configureTerminator(s,"LF");
write(s,0x55,'uint8')    %Kod do zakodowania podzielony po 8 bit�w
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
write(s,0,'int16')%wys�anie 16 bajt�w, 8 pr�bek, tak �eby ka�dego zakodowa�
x=read(s,8,'int16');
x=transpose(x);
disp("Data ACK");