clear all;
%serialportlist; do dykrywania otwartych port�w
s = serialport("COM11",9600);
s.Parity = "even";
s.ByteOrder = "big-endian";
s.Timeout = 2;
write(s,240,'uint8')    %Kod do zakodowania podzielony po 8 bit�w
x=[];
disp('Initialized succesfully')
%%
write(s,62000,'uint16') %wys�anie 16 bajt�w, 8 pr�bek, tak �eby ka�dego zakodowa�
x=read(s,1,'uint16');      %oraz odbi�r ka�dego
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16')
x=[x,read(s,1,'uint16')];
write(s,62000,'uint16') 
x=[x,read(s,1,'uint16')]
%%
write(s,48,'uint8')
write(s,57,'uint8')
x=[x,read(s,1,'uint16')];
disp('Runned DEBUG')